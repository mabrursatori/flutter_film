import 'package:flutter_film/bloc/blocs.dart';
import 'package:flutter_film/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => PageBloc()),
              BlocProvider(create: (_) => UserBloc()),
              BlocProvider(create: (_) => ThemeBloc()),
              BlocProvider(create: (_) => MovieBloc()..add(FetchMovies())),
              BlocProvider(create: (_) => TicketBloc())
            ],
            child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (_, themeState) => MaterialApp(
                  theme: themeState.themeData,
                  debugShowCheckedModeBanner: false,
                  home: Wrapper()),
            ));
  }
}
