// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_channel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLiveChannelIsarModelCollection on Isar {
  IsarCollection<LiveChannelIsarModel> get liveChannelIsarModels =>
      this.collection();
}

const LiveChannelIsarModelSchema = CollectionSchema(
  name: r'LiveChannelIsarModel',
  id: 4230314350020220682,
  properties: {
    r'added': PropertySchema(
      id: 0,
      name: r'added',
      type: IsarType.string,
    ),
    r'categoryId': PropertySchema(
      id: 1,
      name: r'categoryId',
      type: IsarType.string,
    ),
    r'channelNum': PropertySchema(
      id: 2,
      name: r'channelNum',
      type: IsarType.long,
    ),
    r'customSid': PropertySchema(
      id: 3,
      name: r'customSid',
      type: IsarType.string,
    ),
    r'directSource': PropertySchema(
      id: 4,
      name: r'directSource',
      type: IsarType.string,
    ),
    r'epgChannelId': PropertySchema(
      id: 5,
      name: r'epgChannelId',
      type: IsarType.string,
    ),
    r'epgListings': PropertySchema(
      id: 6,
      name: r'epgListings',
      type: IsarType.objectList,
      target: r'EPG',
    ),
    r'hashCode': PropertySchema(
      id: 7,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'isAdult': PropertySchema(
      id: 8,
      name: r'isAdult',
      type: IsarType.bool,
    ),
    r'isFavorite': PropertySchema(
      id: 9,
      name: r'isFavorite',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 10,
      name: r'name',
      type: IsarType.string,
    ),
    r'playlistId': PropertySchema(
      id: 11,
      name: r'playlistId',
      type: IsarType.long,
    ),
    r'streamIcon': PropertySchema(
      id: 12,
      name: r'streamIcon',
      type: IsarType.string,
    ),
    r'streamId': PropertySchema(
      id: 13,
      name: r'streamId',
      type: IsarType.long,
    ),
    r'streamType': PropertySchema(
      id: 14,
      name: r'streamType',
      type: IsarType.string,
    ),
    r'tvArchive': PropertySchema(
      id: 15,
      name: r'tvArchive',
      type: IsarType.long,
    ),
    r'tvArchiveDuration': PropertySchema(
      id: 16,
      name: r'tvArchiveDuration',
      type: IsarType.string,
    )
  },
  estimateSize: _liveChannelIsarModelEstimateSize,
  serialize: _liveChannelIsarModelSerialize,
  deserialize: _liveChannelIsarModelDeserialize,
  deserializeProp: _liveChannelIsarModelDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'streamId_playlistId': IndexSchema(
      id: -5265473376930852151,
      name: r'streamId_playlistId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'streamId',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'playlistId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'playlistId': IndexSchema(
      id: 7921918076105486368,
      name: r'playlistId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'playlistId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'EPG': EPGSchema},
  getId: _liveChannelIsarModelGetId,
  getLinks: _liveChannelIsarModelGetLinks,
  attach: _liveChannelIsarModelAttach,
  version: '3.1.0+1',
);

int _liveChannelIsarModelEstimateSize(
  LiveChannelIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.added;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.categoryId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customSid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.directSource;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.epgChannelId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.epgListings;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[EPG]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += EPGSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.streamIcon;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.streamType.length * 3;
  {
    final value = object.tvArchiveDuration;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _liveChannelIsarModelSerialize(
  LiveChannelIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.added);
  writer.writeString(offsets[1], object.categoryId);
  writer.writeLong(offsets[2], object.channelNum);
  writer.writeString(offsets[3], object.customSid);
  writer.writeString(offsets[4], object.directSource);
  writer.writeString(offsets[5], object.epgChannelId);
  writer.writeObjectList<EPG>(
    offsets[6],
    allOffsets,
    EPGSchema.serialize,
    object.epgListings,
  );
  writer.writeLong(offsets[7], object.hashCode);
  writer.writeBool(offsets[8], object.isAdult);
  writer.writeBool(offsets[9], object.isFavorite);
  writer.writeString(offsets[10], object.name);
  writer.writeLong(offsets[11], object.playlistId);
  writer.writeString(offsets[12], object.streamIcon);
  writer.writeLong(offsets[13], object.streamId);
  writer.writeString(offsets[14], object.streamType);
  writer.writeLong(offsets[15], object.tvArchive);
  writer.writeString(offsets[16], object.tvArchiveDuration);
}

LiveChannelIsarModel _liveChannelIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LiveChannelIsarModel(
    added: reader.readStringOrNull(offsets[0]),
    categoryId: reader.readStringOrNull(offsets[1]),
    channelNum: reader.readLongOrNull(offsets[2]),
    customSid: reader.readStringOrNull(offsets[3]),
    directSource: reader.readStringOrNull(offsets[4]),
    epgChannelId: reader.readStringOrNull(offsets[5]),
    epgListings: reader.readObjectList<EPG>(
      offsets[6],
      EPGSchema.deserialize,
      allOffsets,
      EPG(),
    ),
    isAdult: reader.readBoolOrNull(offsets[8]),
    isFavorite: reader.readBoolOrNull(offsets[9]) ?? false,
    name: reader.readString(offsets[10]),
    streamIcon: reader.readStringOrNull(offsets[12]),
    streamId: reader.readLong(offsets[13]),
    streamType: reader.readString(offsets[14]),
    tvArchive: reader.readLongOrNull(offsets[15]),
    tvArchiveDuration: reader.readStringOrNull(offsets[16]),
  );
  object.playlistId = reader.readLong(offsets[11]);
  return object;
}

P _liveChannelIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readObjectList<EPG>(
        offset,
        EPGSchema.deserialize,
        allOffsets,
        EPG(),
      )) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _liveChannelIsarModelGetId(LiveChannelIsarModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _liveChannelIsarModelGetLinks(
    LiveChannelIsarModel object) {
  return [];
}

void _liveChannelIsarModelAttach(
    IsarCollection<dynamic> col, Id id, LiveChannelIsarModel object) {}

extension LiveChannelIsarModelQueryWhereSort
    on QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QWhere> {
  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhere>
      anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhere>
      anyStreamIdPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'streamId_playlistId'),
      );
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhere>
      anyPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'playlistId'),
      );
    });
  }
}

extension LiveChannelIsarModelQueryWhere
    on QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QWhereClause> {
  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      streamIdEqualToAnyPlaylistId(int streamId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'streamId_playlistId',
        value: [streamId],
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      streamIdNotEqualToAnyPlaylistId(int streamId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [],
              upper: [streamId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [streamId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [streamId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [],
              upper: [streamId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      streamIdGreaterThanAnyPlaylistId(
    int streamId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'streamId_playlistId',
        lower: [streamId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      streamIdLessThanAnyPlaylistId(
    int streamId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'streamId_playlistId',
        lower: [],
        upper: [streamId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      streamIdBetweenAnyPlaylistId(
    int lowerStreamId,
    int upperStreamId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'streamId_playlistId',
        lower: [lowerStreamId],
        includeLower: includeLower,
        upper: [upperStreamId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      streamIdPlaylistIdEqualTo(int streamId, int playlistId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'streamId_playlistId',
        value: [streamId, playlistId],
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      streamIdEqualToPlaylistIdNotEqualTo(int streamId, int playlistId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [streamId],
              upper: [streamId, playlistId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [streamId, playlistId],
              includeLower: false,
              upper: [streamId],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [streamId, playlistId],
              includeLower: false,
              upper: [streamId],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [streamId],
              upper: [streamId, playlistId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      streamIdEqualToPlaylistIdGreaterThan(
    int streamId,
    int playlistId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'streamId_playlistId',
        lower: [streamId, playlistId],
        includeLower: include,
        upper: [streamId],
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      streamIdEqualToPlaylistIdLessThan(
    int streamId,
    int playlistId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'streamId_playlistId',
        lower: [streamId],
        upper: [streamId, playlistId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      streamIdEqualToPlaylistIdBetween(
    int streamId,
    int lowerPlaylistId,
    int upperPlaylistId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'streamId_playlistId',
        lower: [streamId, lowerPlaylistId],
        includeLower: includeLower,
        upper: [streamId, upperPlaylistId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      playlistIdEqualTo(int playlistId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'playlistId',
        value: [playlistId],
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      playlistIdNotEqualTo(int playlistId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId',
              lower: [],
              upper: [playlistId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId',
              lower: [playlistId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId',
              lower: [playlistId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId',
              lower: [],
              upper: [playlistId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      playlistIdGreaterThan(
    int playlistId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'playlistId',
        lower: [playlistId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      playlistIdLessThan(
    int playlistId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'playlistId',
        lower: [],
        upper: [playlistId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterWhereClause>
      playlistIdBetween(
    int lowerPlaylistId,
    int upperPlaylistId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'playlistId',
        lower: [lowerPlaylistId],
        includeLower: includeLower,
        upper: [upperPlaylistId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LiveChannelIsarModelQueryFilter on QueryBuilder<LiveChannelIsarModel,
    LiveChannelIsarModel, QFilterCondition> {
  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> addedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'added',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> addedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'added',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> addedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> addedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> addedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> addedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'added',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> addedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> addedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      addedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      addedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'added',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> addedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'added',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> addedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'added',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> categoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> categoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> categoryIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> categoryIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> categoryIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> categoryIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> categoryIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> categoryIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      categoryIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      categoryIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoryId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> categoryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> categoryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> channelNumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'channelNum',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> channelNumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'channelNum',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> channelNumEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelNum',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> channelNumGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'channelNum',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> channelNumLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'channelNum',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> channelNumBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'channelNum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> customSidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customSid',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> customSidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customSid',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> customSidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customSid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> customSidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customSid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> customSidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customSid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> customSidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customSid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> customSidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customSid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> customSidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customSid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      customSidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customSid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      customSidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customSid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> customSidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customSid',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> customSidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customSid',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> directSourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'directSource',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> directSourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'directSource',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> directSourceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'directSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> directSourceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'directSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> directSourceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'directSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> directSourceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'directSource',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> directSourceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'directSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> directSourceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'directSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      directSourceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'directSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      directSourceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'directSource',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> directSourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'directSource',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> directSourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'directSource',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgChannelIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'epgChannelId',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgChannelIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'epgChannelId',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgChannelIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'epgChannelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgChannelIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'epgChannelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgChannelIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'epgChannelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgChannelIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'epgChannelId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgChannelIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'epgChannelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgChannelIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'epgChannelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      epgChannelIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'epgChannelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      epgChannelIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'epgChannelId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgChannelIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'epgChannelId',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgChannelIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'epgChannelId',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgListingsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'epgListings',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgListingsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'epgListings',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgListingsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'epgListings',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgListingsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'epgListings',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgListingsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'epgListings',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgListingsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'epgListings',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgListingsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'epgListings',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgListingsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'epgListings',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> isAdultIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAdult',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> isAdultIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAdult',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> isAdultEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAdult',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> isFavoriteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFavorite',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> playlistIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistId',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> playlistIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'playlistId',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> playlistIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'playlistId',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> playlistIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'playlistId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIconIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'streamIcon',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIconIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'streamIcon',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIconEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIconGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIconLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIconBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streamIcon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      streamIconContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      streamIconMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'streamIcon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'streamIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamId',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streamId',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streamId',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streamId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streamType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      streamTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      streamTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'streamType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamType',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> streamTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'streamType',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tvArchive',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tvArchive',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tvArchive',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tvArchive',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tvArchive',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tvArchive',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveDurationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tvArchiveDuration',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveDurationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tvArchiveDuration',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveDurationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tvArchiveDuration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveDurationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tvArchiveDuration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveDurationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tvArchiveDuration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveDurationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tvArchiveDuration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveDurationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tvArchiveDuration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveDurationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tvArchiveDuration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      tvArchiveDurationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tvArchiveDuration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
          QAfterFilterCondition>
      tvArchiveDurationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tvArchiveDuration',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveDurationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tvArchiveDuration',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> tvArchiveDurationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tvArchiveDuration',
        value: '',
      ));
    });
  }
}

extension LiveChannelIsarModelQueryObject on QueryBuilder<LiveChannelIsarModel,
    LiveChannelIsarModel, QFilterCondition> {
  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel,
      QAfterFilterCondition> epgListingsElement(FilterQuery<EPG> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'epgListings');
    });
  }
}

extension LiveChannelIsarModelQueryLinks on QueryBuilder<LiveChannelIsarModel,
    LiveChannelIsarModel, QFilterCondition> {}

extension LiveChannelIsarModelQuerySortBy
    on QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QSortBy> {
  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'added', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'added', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByChannelNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelNum', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByChannelNumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelNum', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByCustomSid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customSid', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByCustomSidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customSid', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByDirectSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directSource', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByDirectSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directSource', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByEpgChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgChannelId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByEpgChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgChannelId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByIsAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdult', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByIsAdultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdult', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByPlaylistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByStreamIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamIcon', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByStreamIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamIcon', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByStreamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByStreamIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByStreamType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamType', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByStreamTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamType', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByTvArchive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchive', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByTvArchiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchive', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByTvArchiveDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchiveDuration', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      sortByTvArchiveDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchiveDuration', Sort.desc);
    });
  }
}

extension LiveChannelIsarModelQuerySortThenBy
    on QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QSortThenBy> {
  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'added', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'added', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByChannelNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelNum', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByChannelNumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelNum', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByCustomSid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customSid', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByCustomSidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customSid', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByDirectSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directSource', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByDirectSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directSource', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByEpgChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgChannelId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByEpgChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgChannelId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByIsAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdult', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByIsAdultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdult', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByPlaylistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByStreamIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamIcon', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByStreamIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamIcon', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByStreamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByStreamIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByStreamType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamType', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByStreamTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamType', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByTvArchive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchive', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByTvArchiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchive', Sort.desc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByTvArchiveDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchiveDuration', Sort.asc);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QAfterSortBy>
      thenByTvArchiveDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchiveDuration', Sort.desc);
    });
  }
}

extension LiveChannelIsarModelQueryWhereDistinct
    on QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct> {
  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByAdded({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'added', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByCategoryId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByChannelNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelNum');
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByCustomSid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customSid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByDirectSource({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'directSource', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByEpgChannelId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'epgChannelId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByIsAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAdult');
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFavorite');
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playlistId');
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByStreamIcon({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streamIcon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByStreamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streamId');
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByStreamType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streamType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByTvArchive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tvArchive');
    });
  }

  QueryBuilder<LiveChannelIsarModel, LiveChannelIsarModel, QDistinct>
      distinctByTvArchiveDuration({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tvArchiveDuration',
          caseSensitive: caseSensitive);
    });
  }
}

extension LiveChannelIsarModelQueryProperty on QueryBuilder<
    LiveChannelIsarModel, LiveChannelIsarModel, QQueryProperty> {
  QueryBuilder<LiveChannelIsarModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<LiveChannelIsarModel, String?, QQueryOperations>
      addedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'added');
    });
  }

  QueryBuilder<LiveChannelIsarModel, String?, QQueryOperations>
      categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<LiveChannelIsarModel, int?, QQueryOperations>
      channelNumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelNum');
    });
  }

  QueryBuilder<LiveChannelIsarModel, String?, QQueryOperations>
      customSidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customSid');
    });
  }

  QueryBuilder<LiveChannelIsarModel, String?, QQueryOperations>
      directSourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'directSource');
    });
  }

  QueryBuilder<LiveChannelIsarModel, String?, QQueryOperations>
      epgChannelIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'epgChannelId');
    });
  }

  QueryBuilder<LiveChannelIsarModel, List<EPG>?, QQueryOperations>
      epgListingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'epgListings');
    });
  }

  QueryBuilder<LiveChannelIsarModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<LiveChannelIsarModel, bool?, QQueryOperations>
      isAdultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAdult');
    });
  }

  QueryBuilder<LiveChannelIsarModel, bool, QQueryOperations>
      isFavoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFavorite');
    });
  }

  QueryBuilder<LiveChannelIsarModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<LiveChannelIsarModel, int, QQueryOperations>
      playlistIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playlistId');
    });
  }

  QueryBuilder<LiveChannelIsarModel, String?, QQueryOperations>
      streamIconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streamIcon');
    });
  }

  QueryBuilder<LiveChannelIsarModel, int, QQueryOperations> streamIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streamId');
    });
  }

  QueryBuilder<LiveChannelIsarModel, String, QQueryOperations>
      streamTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streamType');
    });
  }

  QueryBuilder<LiveChannelIsarModel, int?, QQueryOperations>
      tvArchiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tvArchive');
    });
  }

  QueryBuilder<LiveChannelIsarModel, String?, QQueryOperations>
      tvArchiveDurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tvArchiveDuration');
    });
  }
}
