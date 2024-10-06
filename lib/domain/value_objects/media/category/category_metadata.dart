import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_metadata.freezed.dart';

@freezed
class CategoryMetadata with _$CategoryMetadata {
  const factory CategoryMetadata({
    required int index,
    required DateTime lastUpdated,
    required bool favorite,
    required bool locked,
  }) = _CategoryMetadata;
}
