import 'package:flutter/material.dart';
import 'package:flutter_submission/home.dart';
import 'package:flutter_submission/model/place_manager.dart';
import 'package:flutter_submission/model/tab_manager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => TabManager()),
            ChangeNotifierProvider(create: (context) => FavoritePlace())
          ],
          child: Home(),
        ));
  }
}
