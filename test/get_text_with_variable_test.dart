import 'package:fit_page_assignment/app/home/model/stock_scan_response.dart';
import 'package:fit_page_assignment/common/utils/get_text_with_variables.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  group('getTextWithVariable function test', () {
    test('check only for values', () {
      RichText text = getTextWithVariables(
        onValueTap: (val) {
          expect(val, [100, 200]);
        },
        onIndicatorTap: (val) {},
        criterion: const Criterion(
          type: 'variable',
          text: "\$1",
          variable: {
            "\$1": {
              "type": "value",
              "values": [100, 200],
            }
          },
        ),
      ) as RichText;

      expect(text.text.toPlainText(), " (100) ");
    });

    test('check only for indicator', () {
      RichText text = getTextWithVariables(
          onValueTap: (val) {},
          onIndicatorTap: (val) {},
          criterion: const Criterion(
            type: 'variable',
            text: "\$1",
            variable: {
              "\$1": {
                "type": "indicator",
                "study_type": "cci",
                "parameter_name": "period",
                "min_value": 1,
                "max_value": 99,
                "default_value": 20
              },
            },
          )) as RichText;

      expect(text.text.toPlainText(), " (20) ");
    });
  });
}
