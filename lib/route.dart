import 'package:flutter/material.dart';
import 'package:xtools/bmiPage.dart';
import 'package:xtools/bmiResultPage.dart';

class BMIResultArgument {
  BMIResultArgument({this.bmiResult, this.resultText, this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
}

Function onGenerateRoute = (RouteSettings settings) {
  print('build route for ${settings.name}');
  var routes = <String, WidgetBuilder>{
    "/bmi": (ctx) => BMIPage(),
    "/bmirt": (ctx) => BMIResultPage(
          argument: settings.arguments,
        ),
  };
  WidgetBuilder builder = routes[settings.name];
  return MaterialPageRoute(builder: (ctx) => builder(ctx));
};
