import 'package:fit_page_assignment/app/home/model/stock_scan_response.dart';
import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  const HomeTile({super.key, required this.stockScan, this.asHeader = false});
  final StockScanResponse stockScan;
  final bool asHeader;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: asHeader ? 80 : null,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
        color: asHeader ? Colors.lightBlue : null,
        border: asHeader
            ? null
            : const Border(
                bottom: BorderSide(color: Colors.white),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            stockScan.name ?? '-',
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            stockScan.tag ?? '-',
            style: TextStyle(
              color: stockScan.color == "green" ? Colors.green : Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
