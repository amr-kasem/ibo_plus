import 'package:isar/isar.dart';

import '../../../../utils/app_utils.dart';

part 'movie.g.dart';

@collection
class Movie {
  final int? movieNum;
  final String name;
  final String streamType;
  @Index(composite: [CompositeIndex('playlistId')])
  final int streamId;
  final String? streamIcon;
  final double? rating;
  final double? rating5Based;
  final String? added;
  final int? categoryId;
  final String? containerExtension;
  final int? customSid;
  // final bool? directSource;
  bool isFavorite;
  @Index()
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

  Id get isarId => AppUtils.fastHash('$playlistId$streamId');
  @override
  int get hashCode => isarId;

  @override
  bool operator ==(Object other) {
    if (other is! Movie) return false;
    return hashCode == other.hashCode;
  }
}
