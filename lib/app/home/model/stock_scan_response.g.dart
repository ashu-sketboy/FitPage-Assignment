// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_scan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockScanResponseImpl _$$StockScanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StockScanResponseImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      tag: json['tag'] as String?,
      color: json['color'] as String?,
      criteria: (json['criteria'] as List<dynamic>?)
          ?.map((e) => Criterion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StockScanResponseImplToJson(
        _$StockScanResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tag': instance.tag,
      'color': instance.color,
      'criteria': instance.criteria,
    };

_$CriterionImpl _$$CriterionImplFromJson(Map<String, dynamic> json) =>
    _$CriterionImpl(
      type: json['type'] as String?,
      text: json['text'] as String?,
      variable: json['variable'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CriterionImplToJson(_$CriterionImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'variable': instance.variable,
    };
