import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../utils/app_utils.dart';

part 'movie.g.dart';

@collection
@JsonSerializable(fieldRename: FieldRename.snake)
class Movie {
  @JsonKey(name: 'num')
  final int? movieNum;
  final String name;
  final String streamType;
  @Index(composite: [CompositeIndex('playlistId')])
  final int streamId;
  final String? streamIcon;
  @JsonKey(fromJson: AppUtils.toDouble, toJson: AppUtils.numToString)
  final double? rating;
  final double? rating5Based;
  final String? added;
  @JsonKey(fromJson: AppUtils.toInt, toJson: AppUtils.numToString)
  final int? categoryId;
  final String? containerExtension;
  @JsonKey(fromJson: AppUtils.toInt, toJson: AppUtils.numToString)
  final int? customSid;
  // final bool? directSource;
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool isFavorite;
  @Index()
  @JsonKey(includeFromJson: false, includeToJson: false)
  late int playlistId;
  Movie({
    required this.movieNum,
    required this.name,
    required this.streamType,
    required this.streamId,
    required this.streamIcon,
    required this.rating,
    required this.rating5Based,
    required this.added,
    required this.categoryId,
    this.containerExtension = "mp4",
    required this.customSid,
    // required this.directSource,
    this.isFavorite = false,
  });
  // Factory method for JSON deserialization
  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Id get isarId => AppUtils.fastHash('$playlistId$streamId');
  @override
  int get hashCode => isarId;

  @override
  bool operator ==(Object other) {
    if (other is! Movie) return false;
    return hashCode == other.hashCode;
  }
}
