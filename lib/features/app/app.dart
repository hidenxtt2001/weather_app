import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/di/injectable_dependencies.dart';
import 'package:weather_app/features/home/application/home_bloc.dart';
import 'package:weather_app/features/home/presentation/home_page.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO : handle global bloc
    return const _AppMaterial();
  }
}

class _AppMaterial extends StatefulWidget {
  const _AppMaterial({super.key});

  @override
  State<_AppMaterial> createState() => __AppMaterialState();
}

class __AppMaterialState extends State<_AppMaterial> {
  late final GoRouter appRoute;
  @override
  void initState() {
    setup();
    super.initState();
  }

  void setup() {
    appRoute = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) {
            return MaterialPage(
              child: BlocProvider(
                create: (context) => getIt.call<HomeBloc>(),
                child: const HomePage(),
              ),
            );
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return child ?? Container();
      },
      routerConfig: appRoute,
    );
  }
}
