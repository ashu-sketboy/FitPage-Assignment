import 'package:fit_page_assignment/app/home/widgets/price_tile.dart';
import 'package:flutter/material.dart';

class StockPriceListScreen extends StatelessWidget {
  const StockPriceListScreen({super.key, required this.prices});
  final List prices;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return PriceTile(price: prices[index].toString());
        },
        itemCount: prices.length,
      ),
    ));
  }
}
