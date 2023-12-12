import 'package:flutter/material.dart';
import 'package:projeto/telas/Splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projeto/bloc/favoritos_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (BuildContext context) => FavoritosCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    ),
  );
}
