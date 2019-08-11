import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tube/screens/home.dart';

import 'blocks/favorite_bloc.dart';
import 'blocks/videos_block.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: VideosBlock(),
        child: BlocProvider(
          bloc: FavoriteBloc(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Home(),
          ),
        ));
  }
}
