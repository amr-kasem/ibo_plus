// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_channel_metadata.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLiveMetadataIsarModelCollection on Isar {
  IsarCollection<LiveMetadataIsarModel> get liveMetadataIsarModels =>
      this.collection();
}

const LiveMetadataIsarModelSchema = CollectionSchema(
  name: r'LiveMetadataIsarModel',
  id: 7317525016953334253,
  properties: {
    r'favorite': PropertySchema(
      id: 0,
      name: r'favorite',
      type: IsarType.bool,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'index': PropertySchema(
      id: 2,
      name: r'index',
      type: IsarType.long,
    ),
    r'lastUpdated': PropertySchema(
      id: 3,
      name: r'lastUpdated',
      type: IsarType.dateTime,
    ),
    r'locked': PropertySchema(
      id: 4,
      name: r'locked',
      type: IsarType.bool,
    )
  },
  estimateSize: _liveMetadataIsarModelEstimateSize,
  serialize: _liveMetadataIsarModelSerialize,
  deserialize: _liveMetadataIsarModelDeserialize,
  deserializeProp: _liveMetadataIsarModelDeserializeProp,
  idName: r'channel',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _liveMetadataIsarModelGetId,
  getLinks: _liveMetadataIsarModelGetLinks,
  attach: _liveMetadataIsarModelAttach,
  version: '3.1.0+1',
);

int _liveMetadataIsarModelEstimateSize(
  LiveMetadataIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _liveMetadataIsarModelSerialize(
  LiveMetadataIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.favorite);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeLong(offsets[2], object.index);
  writer.writeDateTime(offsets[3], object.lastUpdated);
  writer.writeBool(offsets[4], object.locked);
}

LiveMetadataIsarModel _liveMetadataIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LiveMetadataIsarModel(
    channel: id,
    favorite: reader.readBoolOrNull(offsets[0]) ?? false,
    index: reader.readLong(offsets[2]),
    lastUpdated: reader.readDateTime(offsets[3]),
    locked: reader.readBoolOrNull(offsets[4]) ?? false,
  );
  return object;
}

P _liveMetadataIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _liveMetadataIsarModelGetId(LiveMetadataIsarModel object) {
  return object.channel;
}

List<IsarLinkBase<dynamic>> _liveMetadataIsarModelGetLinks(
    LiveMetadataIsarModel object) {
  return [];
}

void _liveMetadataIsarModelAttach(
    IsarCollection<dynamic> col, Id id, LiveMetadataIsarModel object) {}

extension LiveMetadataIsarModelQueryWhereSort
    on QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QWhere> {
  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterWhere>
      anyChannel() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LiveMetadataIsarModelQueryWhere on QueryBuilder<LiveMetadataIsarModel,
    LiveMetadataIsarModel, QWhereClause> {
  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterWhereClause>
      channelEqualTo(Id channel) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: channel,
        upper: channel,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterWhereClause>
      channelNotEqualTo(Id channel) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: channel, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: channel, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: channel, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: channel, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterWhereClause>
      channelGreaterThan(Id channel, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: channel, includeLower: include),
      );
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterWhereClause>
      channelLessThan(Id channel, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: channel, includeUpper: include),
      );
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterWhereClause>
      channelBetween(
    Id lowerChannel,
    Id upperChannel, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerChannel,
        includeLower: includeLower,
        upper: upperChannel,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LiveMetadataIsarModelQueryFilter on QueryBuilder<
    LiveMetadataIsarModel, LiveMetadataIsarModel, QFilterCondition> {
  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> channelEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channel',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> channelGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'channel',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> channelLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'channel',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> channelBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'channel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> favoriteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'favorite',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
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

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
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

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
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

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> indexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'index',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> indexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'index',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> indexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'index',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> indexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'index',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> lastUpdatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> lastUpdatedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> lastUpdatedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> lastUpdatedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUpdated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel,
      QAfterFilterCondition> lockedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locked',
        value: value,
      ));
    });
  }
}

extension LiveMetadataIsarModelQueryObject on QueryBuilder<
    LiveMetadataIsarModel, LiveMetadataIsarModel, QFilterCondition> {}

extension LiveMetadataIsarModelQueryLinks on QueryBuilder<LiveMetadataIsarModel,
    LiveMetadataIsarModel, QFilterCondition> {}

extension LiveMetadataIsarModelQuerySortBy
    on QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QSortBy> {
  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      sortByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.asc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      sortByFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.desc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      sortByIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'index', Sort.asc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      sortByIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'index', Sort.desc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      sortByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.asc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      sortByLastUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.desc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      sortByLocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locked', Sort.asc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      sortByLockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locked', Sort.desc);
    });
  }
}

extension LiveMetadataIsarModelQuerySortThenBy
    on QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QSortThenBy> {
  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      thenByChannel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channel', Sort.asc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      thenByChannelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channel', Sort.desc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      thenByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.asc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      thenByFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.desc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      thenByIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'index', Sort.asc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      thenByIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'index', Sort.desc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      thenByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.asc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      thenByLastUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.desc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      thenByLocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locked', Sort.asc);
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QAfterSortBy>
      thenByLockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locked', Sort.desc);
    });
  }
}

extension LiveMetadataIsarModelQueryWhereDistinct
    on QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QDistinct> {
  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QDistinct>
      distinctByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'favorite');
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QDistinct>
      distinctByIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'index');
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QDistinct>
      distinctByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUpdated');
    });
  }

  QueryBuilder<LiveMetadataIsarModel, LiveMetadataIsarModel, QDistinct>
      distinctByLocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locked');
    });
  }
}

extension LiveMetadataIsarModelQueryProperty on QueryBuilder<
    LiveMetadataIsarModel, LiveMetadataIsarModel, QQueryProperty> {
  QueryBuilder<LiveMetadataIsarModel, int, QQueryOperations> channelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channel');
    });
  }

  QueryBuilder<LiveMetadataIsarModel, bool, QQueryOperations>
      favoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'favorite');
    });
  }

  QueryBuilder<LiveMetadataIsarModel, int, QQueryOperations>
      hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<LiveMetadataIsarModel, int, QQueryOperations> indexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'index');
    });
  }

  QueryBuilder<LiveMetadataIsarModel, DateTime, QQueryOperations>
      lastUpdatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUpdated');
    });
  }

  QueryBuilder<LiveMetadataIsarModel, bool, QQueryOperations> lockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locked');
    });
  }
}
