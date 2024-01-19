// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_scan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockScanResponse _$StockScanResponseFromJson(Map<String, dynamic> json) {
  return _StockScanResponse.fromJson(json);
}

/// @nodoc
mixin _$StockScanResponse {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "tag")
  String? get tag => throw _privateConstructorUsedError;
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: "criteria")
  List<Criterion>? get criteria => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockScanResponseCopyWith<StockScanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockScanResponseCopyWith<$Res> {
  factory $StockScanResponseCopyWith(
          StockScanResponse value, $Res Function(StockScanResponse) then) =
      _$StockScanResponseCopyWithImpl<$Res, StockScanResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "tag") String? tag,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "criteria") List<Criterion>? criteria});
}

/// @nodoc
class _$StockScanResponseCopyWithImpl<$Res, $Val extends StockScanResponse>
    implements $StockScanResponseCopyWith<$Res> {
  _$StockScanResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tag = freezed,
    Object? color = freezed,
    Object? criteria = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      criteria: freezed == criteria
          ? _value.criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as List<Criterion>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockScanResponseImplCopyWith<$Res>
    implements $StockScanResponseCopyWith<$Res> {
  factory _$$StockScanResponseImplCopyWith(_$StockScanResponseImpl value,
          $Res Function(_$StockScanResponseImpl) then) =
      __$$StockScanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "tag") String? tag,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "criteria") List<Criterion>? criteria});
}

/// @nodoc
class __$$StockScanResponseImplCopyWithImpl<$Res>
    extends _$StockScanResponseCopyWithImpl<$Res, _$StockScanResponseImpl>
    implements _$$StockScanResponseImplCopyWith<$Res> {
  __$$StockScanResponseImplCopyWithImpl(_$StockScanResponseImpl _value,
      $Res Function(_$StockScanResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tag = freezed,
    Object? color = freezed,
    Object? criteria = freezed,
  }) {
    return _then(_$StockScanResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      criteria: freezed == criteria
          ? _value._criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as List<Criterion>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockScanResponseImpl implements _StockScanResponse {
  const _$StockScanResponseImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "tag") this.tag,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "criteria") final List<Criterion>? criteria})
      : _criteria = criteria;

  factory _$StockScanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockScanResponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "tag")
  final String? tag;
  @override
  @JsonKey(name: "color")
  final String? color;
  final List<Criterion>? _criteria;
  @override
  @JsonKey(name: "criteria")
  List<Criterion>? get criteria {
    final value = _criteria;
    if (value == null) return null;
    if (_criteria is EqualUnmodifiableListView) return _criteria;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StockScanResponse(id: $id, name: $name, tag: $tag, color: $color, criteria: $criteria)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockScanResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._criteria, _criteria));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, tag, color,
      const DeepCollectionEquality().hash(_criteria));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockScanResponseImplCopyWith<_$StockScanResponseImpl> get copyWith =>
      __$$StockScanResponseImplCopyWithImpl<_$StockScanResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockScanResponseImplToJson(
      this,
    );
  }
}

abstract class _StockScanResponse implements StockScanResponse {
  const factory _StockScanResponse(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "tag") final String? tag,
          @JsonKey(name: "color") final String? color,
          @JsonKey(name: "criteria") final List<Criterion>? criteria}) =
      _$StockScanResponseImpl;

  factory _StockScanResponse.fromJson(Map<String, dynamic> json) =
      _$StockScanResponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "tag")
  String? get tag;
  @override
  @JsonKey(name: "color")
  String? get color;
  @override
  @JsonKey(name: "criteria")
  List<Criterion>? get criteria;
  @override
  @JsonKey(ignore: true)
  _$$StockScanResponseImplCopyWith<_$StockScanResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Criterion _$CriterionFromJson(Map<String, dynamic> json) {
  return _Criterion.fromJson(json);
}

/// @nodoc
mixin _$Criterion {
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "text")
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "variable")
  Map<String, dynamic>? get variable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CriterionCopyWith<Criterion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CriterionCopyWith<$Res> {
  factory $CriterionCopyWith(Criterion value, $Res Function(Criterion) then) =
      _$CriterionCopyWithImpl<$Res, Criterion>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "text") String? text,
      @JsonKey(name: "variable") Map<String, dynamic>? variable});
}

/// @nodoc
class _$CriterionCopyWithImpl<$Res, $Val extends Criterion>
    implements $CriterionCopyWith<$Res> {
  _$CriterionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? text = freezed,
    Object? variable = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      variable: freezed == variable
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CriterionImplCopyWith<$Res>
    implements $CriterionCopyWith<$Res> {
  factory _$$CriterionImplCopyWith(
          _$CriterionImpl value, $Res Function(_$CriterionImpl) then) =
      __$$CriterionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "text") String? text,
      @JsonKey(name: "variable") Map<String, dynamic>? variable});
}

/// @nodoc
class __$$CriterionImplCopyWithImpl<$Res>
    extends _$CriterionCopyWithImpl<$Res, _$CriterionImpl>
    implements _$$CriterionImplCopyWith<$Res> {
  __$$CriterionImplCopyWithImpl(
      _$CriterionImpl _value, $Res Function(_$CriterionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? text = freezed,
    Object? variable = freezed,
  }) {
    return _then(_$CriterionImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      variable: freezed == variable
          ? _value._variable
          : variable // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CriterionImpl implements _Criterion {
  const _$CriterionImpl(
      {@JsonKey(name: "type") this.type,
      @JsonKey(name: "text") this.text,
      @JsonKey(name: "variable") final Map<String, dynamic>? variable})
      : _variable = variable;

  factory _$CriterionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CriterionImplFromJson(json);

  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "text")
  final String? text;
  final Map<String, dynamic>? _variable;
  @override
  @JsonKey(name: "variable")
  Map<String, dynamic>? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableMapView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Criterion(type: $type, text: $text, variable: $variable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CriterionImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._variable, _variable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, text, const DeepCollectionEquality().hash(_variable));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CriterionImplCopyWith<_$CriterionImpl> get copyWith =>
      __$$CriterionImplCopyWithImpl<_$CriterionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CriterionImplToJson(
      this,
    );
  }
}

abstract class _Criterion implements Criterion {
  const factory _Criterion(
          {@JsonKey(name: "type") final String? type,
          @JsonKey(name: "text") final String? text,
          @JsonKey(name: "variable") final Map<String, dynamic>? variable}) =
      _$CriterionImpl;

  factory _Criterion.fromJson(Map<String, dynamic> json) =
      _$CriterionImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "text")
  String? get text;
  @override
  @JsonKey(name: "variable")
  Map<String, dynamic>? get variable;
  @override
  @JsonKey(ignore: true)
  _$$CriterionImplCopyWith<_$CriterionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
