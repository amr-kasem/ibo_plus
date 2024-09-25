import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_country.g.dart';
part 'production_country.freezed.dart';

@freezed
class ProductionCountryJsonModel with _$ProductionCountryJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProductionCountryJsonModel({
    required String iso31661,
    required String name,
  }) = _ProductionCountryJsonModel;

  factory ProductionCountryJsonModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryJsonModelFromJson(json);
}
