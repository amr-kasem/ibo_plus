// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm3u_playlist_metadata.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetM3uPlaylistMetadataIsarModelCollection on Isar {
  IsarCollection<M3uPlaylistMetadataIsarModel>
      get m3uPlaylistMetadataIsarModels => this.collection();
}

const M3uPlaylistMetadataIsarModelSchema = CollectionSchema(
  name: r'M3uPlaylistMetadataIsarModel',
  id: -2554905070668674133,
  properties: {
    r'active': PropertySchema(
      id: 0,
      name: r'active',
      type: IsarType.bool,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'isarExpiary': PropertySchema(
      id: 2,
      name: r'isarExpiary',
      type: IsarType.long,
    )
  },
  estimateSize: _m3uPlaylistMetadataIsarModelEstimateSize,
  serialize: _m3uPlaylistMetadataIsarModelSerialize,
  deserialize: _m3uPlaylistMetadataIsarModelDeserialize,
  deserializeProp: _m3uPlaylistMetadataIsarModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'playlist': LinkSchema(
      id: -6961090470461033303,
      name: r'playlist',
      target: r'M3uPlaylistIsarModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _m3uPlaylistMetadataIsarModelGetId,
  getLinks: _m3uPlaylistMetadataIsarModelGetLinks,
  attach: _m3uPlaylistMetadataIsarModelAttach,
  version: '3.1.0+1',
);

int _m3uPlaylistMetadataIsarModelEstimateSize(
  M3uPlaylistMetadataIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _m3uPlaylistMetadataIsarModelSerialize(
  M3uPlaylistMetadataIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.active);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeLong(offsets[2], object.isarExpiary);
}

M3uPlaylistMetadataIsarModel _m3uPlaylistMetadataIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = M3uPlaylistMetadataIsarModel(
    active: reader.readBool(offsets[0]),
  );
  object.id = id;
  object.isarExpiary = reader.readLong(offsets[2]);
  return object;
}

P _m3uPlaylistMetadataIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _m3uPlaylistMetadataIsarModelGetId(M3uPlaylistMetadataIsarModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _m3uPlaylistMetadataIsarModelGetLinks(
    M3uPlaylistMetadataIsarModel object) {
  return [object.playlist];
}

void _m3uPlaylistMetadataIsarModelAttach(
    IsarCollection<dynamic> col, Id id, M3uPlaylistMetadataIsarModel object) {
  object.id = id;
  object.playlist.attach(
      col, col.isar.collection<M3uPlaylistIsarModel>(), r'playlist', id);
}

extension M3uPlaylistMetadataIsarModelQueryWhereSort on QueryBuilder<
    M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel, QWhere> {
  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension M3uPlaylistMetadataIsarModelQueryWhere on QueryBuilder<
    M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel, QWhereClause> {
  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension M3uPlaylistMetadataIsarModelQueryFilter on QueryBuilder<
    M3uPlaylistMetadataIsarModel,
    M3uPlaylistMetadataIsarModel,
    QFilterCondition> {
  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> activeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'active',
        value: value,
      ));
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
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

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
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

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
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

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> isarExpiaryEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarExpiary',
        value: value,
      ));
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> isarExpiaryGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarExpiary',
        value: value,
      ));
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> isarExpiaryLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarExpiary',
        value: value,
      ));
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> isarExpiaryBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarExpiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension M3uPlaylistMetadataIsarModelQueryObject on QueryBuilder<
    M3uPlaylistMetadataIsarModel,
    M3uPlaylistMetadataIsarModel,
    QFilterCondition> {}

extension M3uPlaylistMetadataIsarModelQueryLinks on QueryBuilder<
    M3uPlaylistMetadataIsarModel,
    M3uPlaylistMetadataIsarModel,
    QFilterCondition> {
  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> playlist(FilterQuery<M3uPlaylistIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'playlist');
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterFilterCondition> playlistIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'playlist', 0, true, 0, true);
    });
  }
}

extension M3uPlaylistMetadataIsarModelQuerySortBy on QueryBuilder<
    M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel, QSortBy> {
  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> sortByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> sortByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> sortByIsarExpiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarExpiary', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> sortByIsarExpiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarExpiary', Sort.desc);
    });
  }
}

extension M3uPlaylistMetadataIsarModelQuerySortThenBy on QueryBuilder<
    M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel, QSortThenBy> {
  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> thenByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> thenByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> thenByIsarExpiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarExpiary', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QAfterSortBy> thenByIsarExpiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarExpiary', Sort.desc);
    });
  }
}

extension M3uPlaylistMetadataIsarModelQueryWhereDistinct on QueryBuilder<
    M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel, QDistinct> {
  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QDistinct> distinctByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'active');
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, M3uPlaylistMetadataIsarModel,
      QDistinct> distinctByIsarExpiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isarExpiary');
    });
  }
}

extension M3uPlaylistMetadataIsarModelQueryProperty on QueryBuilder<
    M3uPlaylistMetadataIsarModel,
    M3uPlaylistMetadataIsarModel,
    QQueryProperty> {
  QueryBuilder<M3uPlaylistMetadataIsarModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, bool, QQueryOperations>
      activeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'active');
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, int, QQueryOperations>
      hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<M3uPlaylistMetadataIsarModel, int, QQueryOperations>
      isarExpiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarExpiary');
    });
  }
}
