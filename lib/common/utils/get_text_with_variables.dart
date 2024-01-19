
  import 'package:fit_page_assignment/app/home/model/stock_scan_response.dart';
import 'package:fit_page_assignment/app/home/screen/set_parameter_screen.dart';
import 'package:fit_page_assignment/app/home/screen/stock_price_list_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Widget getTextWithVariables({required Function(List) onValueTap, required Function(Map<String, dynamic>) onIndicatorTap, required Criterion criterion}) {
    final List<String> strings = criterion.text?.split(' ') ?? [];

    return RichText(
        text: TextSpan(
      children: strings.map<InlineSpan>((e) {
        if (e.contains('\$')) {
          switch (criterion.variable?[e]['type']) {
            case 'value':
              return TextSpan(
                text:
                    " (${criterion.variable?[e]['values'][0].toString() ?? e}) ",
                style: const TextStyle(color: Colors.blueAccent),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => onValueTap(criterion.variable?[e]['values']),
              );
            default: //  'indicator'
              return TextSpan(
                text:
                    " (${criterion.variable?[e]['default_value'].toString() ?? e}) ",
                style: const TextStyle(color: Colors.blueAccent),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => onIndicatorTap(criterion.variable?[e]),
              );
          }
        } else {
          return TextSpan(
            text: "$e ",
            style: const TextStyle(color: Colors.white),
          );
        }
      }).toList(),
    ));
  }