// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_channel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLiveChannelCollection on Isar {
  IsarCollection<LiveChannel> get liveChannels => this.collection();
}

const LiveChannelSchema = CollectionSchema(
  name: r'LiveChannel',
  id: -6395034737136214044,
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
  estimateSize: _liveChannelEstimateSize,
  serialize: _liveChannelSerialize,
  deserialize: _liveChannelDeserialize,
  deserializeProp: _liveChannelDeserializeProp,
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
  getId: _liveChannelGetId,
  getLinks: _liveChannelGetLinks,
  attach: _liveChannelAttach,
  version: '3.1.0+1',
);

int _liveChannelEstimateSize(
  LiveChannel object,
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

void _liveChannelSerialize(
  LiveChannel object,
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

LiveChannel _liveChannelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LiveChannel(
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

P _liveChannelDeserializeProp<P>(
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

Id _liveChannelGetId(LiveChannel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _liveChannelGetLinks(LiveChannel object) {
  return [];
}

void _liveChannelAttach(
    IsarCollection<dynamic> col, Id id, LiveChannel object) {}

extension LiveChannelQueryWhereSort
    on QueryBuilder<LiveChannel, LiveChannel, QWhere> {
  QueryBuilder<LiveChannel, LiveChannel, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhere> anyStreamIdPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'streamId_playlistId'),
      );
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhere> anyPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'playlistId'),
      );
    });
  }
}

extension LiveChannelQueryWhere
    on QueryBuilder<LiveChannel, LiveChannel, QWhereClause> {
  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause> isarIdBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause>
      streamIdEqualToAnyPlaylistId(int streamId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'streamId_playlistId',
        value: [streamId],
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause>
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause>
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause>
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause>
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause>
      streamIdPlaylistIdEqualTo(int streamId, int playlistId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'streamId_playlistId',
        value: [streamId, playlistId],
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause>
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause>
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause>
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause>
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause> playlistIdEqualTo(
      int playlistId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'playlistId',
        value: [playlistId],
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause>
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause>
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause> playlistIdLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterWhereClause> playlistIdBetween(
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

extension LiveChannelQueryFilter
    on QueryBuilder<LiveChannel, LiveChannel, QFilterCondition> {
  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> addedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'added',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      addedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'added',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> addedEqualTo(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      addedGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> addedLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> addedBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> addedStartsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> addedEndsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> addedContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> addedMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'added',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> addedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'added',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      addedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'added',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      categoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      categoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      categoryIdEqualTo(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      categoryIdGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      categoryIdLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      categoryIdBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      categoryIdStartsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      categoryIdEndsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      categoryIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      categoryIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoryId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      categoryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      categoryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      channelNumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'channelNum',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      channelNumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'channelNum',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      channelNumEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelNum',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      channelNumGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      channelNumLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      channelNumBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      customSidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customSid',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      customSidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customSid',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      customSidEqualTo(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      customSidGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      customSidLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      customSidBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      customSidStartsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      customSidEndsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      customSidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customSid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      customSidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customSid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      customSidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customSid',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      customSidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customSid',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      directSourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'directSource',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      directSourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'directSource',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      directSourceEqualTo(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      directSourceGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      directSourceLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      directSourceBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      directSourceStartsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      directSourceEndsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      directSourceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'directSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      directSourceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'directSource',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      directSourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'directSource',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      directSourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'directSource',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgChannelIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'epgChannelId',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgChannelIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'epgChannelId',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgChannelIdEqualTo(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgChannelIdGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgChannelIdLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgChannelIdBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgChannelIdStartsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgChannelIdEndsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgChannelIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'epgChannelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgChannelIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'epgChannelId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgChannelIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'epgChannelId',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgChannelIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'epgChannelId',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgListingsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'epgListings',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgListingsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'epgListings',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgListingsLengthEqualTo(int length) {
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgListingsIsEmpty() {
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgListingsIsNotEmpty() {
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgListingsLengthLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgListingsLengthGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgListingsLengthBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      hashCodeGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      hashCodeLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      isAdultIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAdult',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      isAdultIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAdult',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> isAdultEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAdult',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      isFavoriteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFavorite',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      isarIdGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      playlistIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistId',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      playlistIdGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      playlistIdLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      playlistIdBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIconIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'streamIcon',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIconIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'streamIcon',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIconEqualTo(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIconGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIconLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIconBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIconStartsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIconEndsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIconContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIconMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'streamIcon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'streamIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> streamIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamId',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIdGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamIdLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition> streamIdBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamTypeEqualTo(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamTypeGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamTypeLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamTypeBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamTypeStartsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamTypeEndsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'streamType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamType',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      streamTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'streamType',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tvArchive',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tvArchive',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tvArchive',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveDurationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tvArchiveDuration',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveDurationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tvArchiveDuration',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveDurationEqualTo(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveDurationGreaterThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveDurationLessThan(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveDurationBetween(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveDurationStartsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveDurationEndsWith(
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

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveDurationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tvArchiveDuration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveDurationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tvArchiveDuration',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveDurationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tvArchiveDuration',
        value: '',
      ));
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      tvArchiveDurationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tvArchiveDuration',
        value: '',
      ));
    });
  }
}

extension LiveChannelQueryObject
    on QueryBuilder<LiveChannel, LiveChannel, QFilterCondition> {
  QueryBuilder<LiveChannel, LiveChannel, QAfterFilterCondition>
      epgListingsElement(FilterQuery<EPG> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'epgListings');
    });
  }
}

extension LiveChannelQueryLinks
    on QueryBuilder<LiveChannel, LiveChannel, QFilterCondition> {}

extension LiveChannelQuerySortBy
    on QueryBuilder<LiveChannel, LiveChannel, QSortBy> {
  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'added', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'added', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByChannelNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelNum', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByChannelNumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelNum', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByCustomSid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customSid', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByCustomSidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customSid', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByDirectSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directSource', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy>
      sortByDirectSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directSource', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByEpgChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgChannelId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy>
      sortByEpgChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgChannelId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByIsAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdult', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByIsAdultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdult', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByPlaylistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByStreamIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamIcon', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByStreamIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamIcon', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByStreamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByStreamIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByStreamType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamType', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByStreamTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamType', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByTvArchive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchive', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> sortByTvArchiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchive', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy>
      sortByTvArchiveDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchiveDuration', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy>
      sortByTvArchiveDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchiveDuration', Sort.desc);
    });
  }
}

extension LiveChannelQuerySortThenBy
    on QueryBuilder<LiveChannel, LiveChannel, QSortThenBy> {
  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'added', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'added', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByChannelNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelNum', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByChannelNumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelNum', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByCustomSid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customSid', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByCustomSidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customSid', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByDirectSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directSource', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy>
      thenByDirectSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directSource', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByEpgChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgChannelId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy>
      thenByEpgChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgChannelId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByIsAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdult', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByIsAdultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdult', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByPlaylistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByStreamIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamIcon', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByStreamIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamIcon', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByStreamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamId', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByStreamIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamId', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByStreamType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamType', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByStreamTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamType', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByTvArchive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchive', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy> thenByTvArchiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchive', Sort.desc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy>
      thenByTvArchiveDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchiveDuration', Sort.asc);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QAfterSortBy>
      thenByTvArchiveDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvArchiveDuration', Sort.desc);
    });
  }
}

extension LiveChannelQueryWhereDistinct
    on QueryBuilder<LiveChannel, LiveChannel, QDistinct> {
  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByAdded(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'added', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByCategoryId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByChannelNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelNum');
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByCustomSid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customSid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByDirectSource(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'directSource', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByEpgChannelId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'epgChannelId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByIsAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAdult');
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFavorite');
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playlistId');
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByStreamIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streamIcon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByStreamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streamId');
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByStreamType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streamType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByTvArchive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tvArchive');
    });
  }

  QueryBuilder<LiveChannel, LiveChannel, QDistinct> distinctByTvArchiveDuration(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tvArchiveDuration',
          caseSensitive: caseSensitive);
    });
  }
}

extension LiveChannelQueryProperty
    on QueryBuilder<LiveChannel, LiveChannel, QQueryProperty> {
  QueryBuilder<LiveChannel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<LiveChannel, String?, QQueryOperations> addedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'added');
    });
  }

  QueryBuilder<LiveChannel, String?, QQueryOperations> categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<LiveChannel, int?, QQueryOperations> channelNumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelNum');
    });
  }

  QueryBuilder<LiveChannel, String?, QQueryOperations> customSidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customSid');
    });
  }

  QueryBuilder<LiveChannel, String?, QQueryOperations> directSourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'directSource');
    });
  }

  QueryBuilder<LiveChannel, String?, QQueryOperations> epgChannelIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'epgChannelId');
    });
  }

  QueryBuilder<LiveChannel, List<EPG>?, QQueryOperations>
      epgListingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'epgListings');
    });
  }

  QueryBuilder<LiveChannel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<LiveChannel, bool?, QQueryOperations> isAdultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAdult');
    });
  }

  QueryBuilder<LiveChannel, bool, QQueryOperations> isFavoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFavorite');
    });
  }

  QueryBuilder<LiveChannel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<LiveChannel, int, QQueryOperations> playlistIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playlistId');
    });
  }

  QueryBuilder<LiveChannel, String?, QQueryOperations> streamIconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streamIcon');
    });
  }

  QueryBuilder<LiveChannel, int, QQueryOperations> streamIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streamId');
    });
  }

  QueryBuilder<LiveChannel, String, QQueryOperations> streamTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streamType');
    });
  }

  QueryBuilder<LiveChannel, int?, QQueryOperations> tvArchiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tvArchive');
    });
  }

  QueryBuilder<LiveChannel, String?, QQueryOperations>
      tvArchiveDurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tvArchiveDuration');
    });
  }
}
