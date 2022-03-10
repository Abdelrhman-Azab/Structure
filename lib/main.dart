import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:structure_app/blocs/azkar_cubit/azkar_cubit.dart';
import 'package:structure_app/data/api/dio_factoy.dart';
import 'package:structure_app/data/repositories/azkar_repository.dart';
import 'package:structure_app/screens/azkar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Dio dio = DioFactory.getInistance("https://ahegazy.github.io/");

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AzkarRepository>(
          create: (context) => AzkarRepository(dio),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AzkarCubit>(
            create: (context) =>
                AzkarCubit(context.read<AzkarRepository>())..getAzkar(),
          )
        ],
        child: const MaterialApp(
          home: AzkarScreen(),
        ),
      ),
    );
  }
}
