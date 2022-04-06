import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/model/card_base.dart';
import 'package:provider/provider.dart';

import 'screen/input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CardBase(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            appBarTheme: AppBarTheme(color: Color(0xff0ae21)),
            scaffoldBackgroundColor: Color(0xff0a0e21)),
        home: InPutPage(),
      ),
    );
  }
}
