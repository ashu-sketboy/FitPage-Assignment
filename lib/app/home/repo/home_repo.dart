import 'package:fit_page_assignment/app/home/model/stock_scan_response.dart';
import 'package:fit_page_assignment/common/networking/http_client.dart';

class HomeRepo {
  Future<List<StockScanResponse>> getStockScan() async {
    try {
      final String response = await HttpClient.instance().get(
        url: "http://coding-assignment.bombayrunning.com/data.json",
      );

      return stockScanResponseFromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
