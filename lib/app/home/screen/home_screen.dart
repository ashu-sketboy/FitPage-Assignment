import 'package:fit_page_assignment/app/home/bloc/home_bloc.dart';
import 'package:fit_page_assignment/app/home/screen/stock_scan_screen.dart';
import 'package:fit_page_assignment/app/home/widgets/home_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(const HomeEvent.getStockScan()),
      child: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: state.status == HomeStatus.loading
                ? const Center(child: CircularProgressIndicator())
                : state.status == HomeStatus.error ? Center(
                  child: Text(state.error, style: const TextStyle(color: Colors.white),),
                ) : ListView.builder(
                    itemCount: state.stockScanResponse?.length ?? 0,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StockScanScreen(
                                stockScan: state.stockScanResponse![index],
                              ),
                            ),
                          );
                        },
                        child: HomeTile(
                            stockScan: state.stockScanResponse![index]),
                      );
                    }),
          ),
        );
      },
    );
  }
}
