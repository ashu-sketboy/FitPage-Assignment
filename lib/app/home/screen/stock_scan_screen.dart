import 'package:fit_page_assignment/app/home/model/stock_scan_response.dart';
import 'package:fit_page_assignment/app/home/screen/set_parameter_screen.dart';
import 'package:fit_page_assignment/app/home/screen/stock_price_list_screen.dart';
import 'package:fit_page_assignment/app/home/widgets/home_tile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StockScanScreen extends StatelessWidget {
  const StockScanScreen({super.key, required this.stockScan});
  final StockScanResponse stockScan;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeTile(
            stockScan: stockScan,
            asHeader: true,
          ),
          Expanded(
              child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemBuilder: (context, index) {
              Criterion criterion = stockScan.criteria![index];

              switch (criterion.type) {
                case 'plain_text':
                  return Text(
                    criterion.text ?? '',
                    style: const TextStyle(color: Colors.white),
                  );
                case 'variable':
                  return getTextWithVariables(context, criterion);
              }
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'and',
                  style: TextStyle(color: Colors.white, fontSize: 8),
                ),
              );
            },
            itemCount: stockScan.criteria?.length ?? 0,
          ))
        ],
      ),
    ));
  }

  Widget getTextWithVariables(BuildContext context, Criterion criterion) {
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
                  ..onTap = () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StockPriceListScreen(
                            prices: criterion.variable?[e]['values'],
                          ),
                        ),
                      ),
              );
            default: //  'indicator'
              return TextSpan(
                text:
                    " (${criterion.variable?[e]['default_value'].toString() ?? e}) ",
                style: const TextStyle(color: Colors.blueAccent),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SetParameterScreen(
                            params: criterion.variable?[e],
                          ),
                        ),
                      ),
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
}
