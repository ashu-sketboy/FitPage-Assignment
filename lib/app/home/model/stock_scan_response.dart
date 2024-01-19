import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'stock_scan_response.freezed.dart';
part 'stock_scan_response.g.dart';

List<StockScanResponse> stockScanResponseFromJson(String str) =>
    List<StockScanResponse>.from(
        json.decode(str).map((x) => StockScanResponse.fromJson(x)));

String stockScanResponseToJson(List<StockScanResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class StockScanResponse with _$StockScanResponse {
  const factory StockScanResponse({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "tag") String? tag,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "criteria") List<Criterion>? criteria,
  }) = _StockScanResponse;

  factory StockScanResponse.fromJson(Map<String, dynamic> json) =>
      _$StockScanResponseFromJson(json);
}

@freezed
class Criterion with _$Criterion {
  const factory Criterion({
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "text") String? text,
    @JsonKey(name: "variable") Map<String, dynamic>? variable,
  }) = _Criterion;

  factory Criterion.fromJson(Map<String, dynamic> json) =>
      _$CriterionFromJson(json);
}
