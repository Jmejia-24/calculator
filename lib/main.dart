import 'package:calculator/bloc/calculator/calculator_bloc.dart';
import 'package:calculator/screens/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CalculatorBloc>(
          create: (_) => CalculatorBloc(),
        ),
      ], 
      child: MyApp()
      );
  }
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CalculatorScreen(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black
      ),
    );
  }
}