import 'package:fit_page_assignment/app/home/model/stock_scan_response.dart';
import 'package:fit_page_assignment/app/home/screen/set_parameter_screen.dart';
import 'package:fit_page_assignment/app/home/screen/stock_price_list_screen.dart';
import 'package:fit_page_assignment/app/home/widgets/home_tile.dart';
import 'package:fit_page_assignment/common/utils/get_text_with_variables.dart';
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
                  return getTextWithVariables(criterion: criterion, onValueTap: (List val) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StockPriceListScreen(
                            prices: val,
                          ),
                        ),
                      ), onIndicatorTap: (Map<String, dynamic> val) {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SetParameterScreen(
                            params: val,
                          ),
                        ),
                      );
                      });
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
}
