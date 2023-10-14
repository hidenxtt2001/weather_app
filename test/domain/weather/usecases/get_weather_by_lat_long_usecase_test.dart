import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/domain/weather/entity/coord.dart';
import 'package:weather_app/domain/weather/entity/weather.dart';
import 'package:weather_app/domain/weather/entity/weather_detail.dart';
import 'package:weather_app/domain/weather/entity/weather_main.dart';
import 'package:weather_app/domain/weather/entity/wind.dart';
import 'package:weather_app/domain/weather/repository/i_weather_repository.dart';
import 'package:weather_app/domain/weather/usecases/get_weather_by_lat_long_usecase.dart';
import 'package:weather_app/domain/weather/usecases/input/get_weather_input.dart';

class MockWeatherRepository extends Mock implements IWeatherRepository {}

void main() {
  late GetWeatherByLatLongUsecase getWeatherByLatLongUsecase;
  late MockWeatherRepository mockWeatherRepository;
  final tWeather = Weather(
    coord: Coord(
      lon: 106.6539,
      lat: 10.8762,
    ),
    weather: [
      WeatherDetail(
        id: 802,
        main: "Clouds",
        description: "scattered clouds",
        icon: "03d",
      )
    ],
    main: WeatherMain(
      temp: 304.16,
      feelsLike: 311.16,
      tempMin: 304.16,
      tempMax: 304.16,
      pressure: 1011,
      humidity: 79,
    ),
    wind: Wind(
      speed: 1.03,
      deg: 0,
    ),
    name: "hong Tay Hoi",
    id: 1565593,
  );
  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    getWeatherByLatLongUsecase =
        GetWeatherByLatLongUsecase(weatherRepository: mockWeatherRepository);
  });
  test(
    'should return weather from lat long',
    () async {
      // arrange
      when(() => mockWeatherRepository.getWeatherByLatLong(
          lat: any(named: 'lat'),
          long: any(named: 'long'))).thenAnswer((_) async => right(tWeather));

      // act
      final result = await getWeatherByLatLongUsecase
          .call(const GetWeatherInput(lat: 0, long: 1));

      // assert
      verify(() => mockWeatherRepository.getWeatherByLatLong(lat: 0, long: 1));

      expect(result, Right(tWeather));
      verifyNoMoreInteractions(mockWeatherRepository);
    },
  );
}
