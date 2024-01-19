import 'package:fit_page_assignment/app/home/model/stock_scan_response.dart';
import 'package:flutter/material.dart';

class PriceTile extends StatelessWidget {
  const PriceTile({super.key, required this.price});
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            price,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
