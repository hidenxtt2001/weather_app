import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/weather/entity/weather.dart';
import 'package:weather_app/utils/extensions/string_extension.dart';
import '../application/home_bloc.dart';
import 'package:collection/collection.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeBloc homeBloc;
  late final TextEditingController controller;
  @override
  void initState() {
    homeBloc = context.read<HomeBloc>();
    controller = TextEditingController();
    super.initState();
    homeBloc.add(const HomeEvent.onStarted());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: TextField(
                controller: controller,
                onChanged: (value) {
                  homeBloc.add(HomeEvent.onChangeInputLocation(input: value));
                },
                onSubmitted: (value) {
                  homeBloc.add(const HomeEvent.onSearchFromInputLocation());
                },
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'City name or Zip code',
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  suffixIcon: InkWell(
                    highlightColor: Colors.transparent,
                    splashFactory: InkRipple.splashFactory,
                    radius: 15,
                    onTap: () {
                      homeBloc.add(
                        const HomeEvent.onLoadWeatherFromCurrentLocate(),
                      );
                    },
                    child: const Icon(
                      Icons.location_on,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  homeBloc.add(const HomeEvent.onLoadWeather());
                },
                child: BlocSelector<HomeBloc, HomeState, Weather?>(
                  selector: (state) {
                    return state.weather;
                  },
                  builder: (context, weather) {
                    if (weather == null) {
                      if (homeBloc.state.firstRun) {
                        return Container();
                      }
                      return SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              r"Something not working",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                homeBloc.add(const HomeEvent.onLoadWeather());
                              },
                              child: const Text(
                                'Reload',
                              ),
                            )
                          ],
                        ),
                      );
                    }
                    return _WeatherWiget(
                      weather: weather,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WeatherWiget extends StatelessWidget {
  final Weather weather;
  const _WeatherWiget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      clipBehavior: Clip.none,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            weather.name ?? '',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            (weather.weather?.firstOrNull?.description ?? '').capitalize(),
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          Image(
            image: NetworkImage(
                'http://openweathermap.org/img/wn/${weather.weather?.firstOrNull?.icon}@4x.png'),
            width: 250,
            fit: BoxFit.fitHeight,
          ),
          Text(
            "${max((weather.main?.temp ?? 0) - 273.15, 0).toStringAsFixed(1)} \u2103",
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
