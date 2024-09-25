import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_company.freezed.dart';
part 'production_company.g.dart';

@freezed
class ProductionCompanyJsonModel with _$ProductionCompanyJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProductionCompanyJsonModel({
    required int id,
    required String name,
    required String originCountry,
    required String logoPath,
  }) = _ProductionCompanyJsonModel;

  factory ProductionCompanyJsonModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyJsonModelFromJson(json);
}
