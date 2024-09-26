// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_event.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDataEventCollection on Isar {
  IsarCollection<DataEvent> get dataEvents => this.collection();
}

const DataEventSchema = CollectionSchema(
  name: r'DataEvent',
  id: -5394599464267472043,
  properties: {
    r'dataEventType': PropertySchema(
      id: 0,
      name: r'dataEventType',
      type: IsarType.byte,
      enumMap: _DataEventdataEventTypeEnumValueMap,
    ),
    r'timestamp': PropertySchema(
      id: 1,
      name: r'timestamp',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _dataEventEstimateSize,
  serialize: _dataEventSerialize,
  deserialize: _dataEventDeserialize,
  deserializeProp: _dataEventDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _dataEventGetId,
  getLinks: _dataEventGetLinks,
  attach: _dataEventAttach,
  version: '3.1.0+1',
);

int _dataEventEstimateSize(
  DataEvent object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _dataEventSerialize(
  DataEvent object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.dataEventType.index);
  writer.writeDateTime(offsets[1], object.timestamp);
}

DataEvent _dataEventDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DataEvent(
    dataEventType: _DataEventdataEventTypeValueEnumMap[
            reader.readByteOrNull(offsets[0])] ??
        DataEventType.liveChannelsChange,
  );
  return object;
}

P _dataEventDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_DataEventdataEventTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          DataEventType.liveChannelsChange) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _DataEventdataEventTypeEnumValueMap = {
  'liveChannelsChange': 0,
  'liveCategoriesChange': 1,
  'moviesChange': 2,
  'seriesChange': 3,
  'recentlyVisitedMoviesChange': 4,
  'recentlyVisitedSeriesChange': 5,
  'playlistsChanged': 6,
  'currentChannelChanged': 7,
  'currentLiveCategoryChanged': 8,
};
const _DataEventdataEventTypeValueEnumMap = {
  0: DataEventType.liveChannelsChange,
  1: DataEventType.liveCategoriesChange,
  2: DataEventType.moviesChange,
  3: DataEventType.seriesChange,
  4: DataEventType.recentlyVisitedMoviesChange,
  5: DataEventType.recentlyVisitedSeriesChange,
  6: DataEventType.playlistsChanged,
  7: DataEventType.currentChannelChanged,
  8: DataEventType.currentLiveCategoryChanged,
};

Id _dataEventGetId(DataEvent object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _dataEventGetLinks(DataEvent object) {
  return [];
}

void _dataEventAttach(IsarCollection<dynamic> col, Id id, DataEvent object) {}

extension DataEventQueryWhereSort
    on QueryBuilder<DataEvent, DataEvent, QWhere> {
  QueryBuilder<DataEvent, DataEvent, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DataEventQueryWhere
    on QueryBuilder<DataEvent, DataEvent, QWhereClause> {
  QueryBuilder<DataEvent, DataEvent, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterWhereClause> isarIdNotEqualTo(
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

  QueryBuilder<DataEvent, DataEvent, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterWhereClause> isarIdBetween(
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
}

extension DataEventQueryFilter
    on QueryBuilder<DataEvent, DataEvent, QFilterCondition> {
  QueryBuilder<DataEvent, DataEvent, QAfterFilterCondition>
      dataEventTypeEqualTo(DataEventType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataEventType',
        value: value,
      ));
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterFilterCondition>
      dataEventTypeGreaterThan(
    DataEventType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataEventType',
        value: value,
      ));
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterFilterCondition>
      dataEventTypeLessThan(
    DataEventType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataEventType',
        value: value,
      ));
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterFilterCondition>
      dataEventTypeBetween(
    DataEventType lower,
    DataEventType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataEventType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterFilterCondition> isarIdGreaterThan(
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

  QueryBuilder<DataEvent, DataEvent, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<DataEvent, DataEvent, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<DataEvent, DataEvent, QAfterFilterCondition> timestampEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterFilterCondition>
      timestampGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterFilterCondition> timestampLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterFilterCondition> timestampBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DataEventQueryObject
    on QueryBuilder<DataEvent, DataEvent, QFilterCondition> {}

extension DataEventQueryLinks
    on QueryBuilder<DataEvent, DataEvent, QFilterCondition> {}

extension DataEventQuerySortBy on QueryBuilder<DataEvent, DataEvent, QSortBy> {
  QueryBuilder<DataEvent, DataEvent, QAfterSortBy> sortByDataEventType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataEventType', Sort.asc);
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterSortBy> sortByDataEventTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataEventType', Sort.desc);
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterSortBy> sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension DataEventQuerySortThenBy
    on QueryBuilder<DataEvent, DataEvent, QSortThenBy> {
  QueryBuilder<DataEvent, DataEvent, QAfterSortBy> thenByDataEventType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataEventType', Sort.asc);
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterSortBy> thenByDataEventTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataEventType', Sort.desc);
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<DataEvent, DataEvent, QAfterSortBy> thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension DataEventQueryWhereDistinct
    on QueryBuilder<DataEvent, DataEvent, QDistinct> {
  QueryBuilder<DataEvent, DataEvent, QDistinct> distinctByDataEventType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataEventType');
    });
  }

  QueryBuilder<DataEvent, DataEvent, QDistinct> distinctByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp');
    });
  }
}

extension DataEventQueryProperty
    on QueryBuilder<DataEvent, DataEvent, QQueryProperty> {
  QueryBuilder<DataEvent, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<DataEvent, DataEventType, QQueryOperations>
      dataEventTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataEventType');
    });
  }

  QueryBuilder<DataEvent, DateTime, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }
}
