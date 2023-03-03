import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tahfidz_quran/blocs/distribution/distribution_bloc.dart';
import 'package:tahfidz_quran/blocs/info/bloc/info_bloc.dart';
import 'package:tahfidz_quran/blocs/tahfidz_house/tahfidz_house_bloc.dart';
import 'package:tahfidz_quran/repositories/distribution_repository.dart';
import 'package:tahfidz_quran/repositories/info_repository.dart';
import 'package:tahfidz_quran/repositories/tahfidz_house_repository.dart';
import 'package:tahfidz_quran/ui/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => TahfidzHouseRepository(),
        ),
        RepositoryProvider(
          create: (context) => DistributionRepository(),
        ),
        RepositoryProvider(
          create: (context) => InfoRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => TahfidzHouseBloc(
              tahfidzHouseRepository: context.read<TahfidzHouseRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => DistributionBloc(
              distributionRepository: context.read<DistributionRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => InfoBloc(
              infoRepository: context.read<InfoRepository>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Infaq Beras Mumtaz',
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => const Splash(),
            '/home': (context) => const Home(),
            '/about': (context) => const About(),
            '/distribution': (context) => Distribution(),
            '/tahfidz-house': (context) => TahfidzHouse()
          },
        ),
      ),
    );
  }
}
