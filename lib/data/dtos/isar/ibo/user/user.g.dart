// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserIsarModelCollection on Isar {
  IsarCollection<UserIsarModel> get userIsarModels => this.collection();
}

const UserIsarModelSchema = CollectionSchema(
  name: r'UserIsarModel',
  id: -1977557784589225182,
  properties: {},
  estimateSize: _userIsarModelEstimateSize,
  serialize: _userIsarModelSerialize,
  deserialize: _userIsarModelDeserialize,
  deserializeProp: _userIsarModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userIsarModelGetId,
  getLinks: _userIsarModelGetLinks,
  attach: _userIsarModelAttach,
  version: '3.1.0+1',
);

int _userIsarModelEstimateSize(
  UserIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _userIsarModelSerialize(
  UserIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
UserIsarModel _userIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserIsarModel();
  object.id = id;
  return object;
}

P _userIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userIsarModelGetId(UserIsarModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _userIsarModelGetLinks(UserIsarModel object) {
  return [];
}

void _userIsarModelAttach(
    IsarCollection<dynamic> col, Id id, UserIsarModel object) {
  object.id = id;
}

extension UserIsarModelQueryWhereSort
    on QueryBuilder<UserIsarModel, UserIsarModel, QWhere> {
  QueryBuilder<UserIsarModel, UserIsarModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserIsarModelQueryWhere
    on QueryBuilder<UserIsarModel, UserIsarModel, QWhereClause> {
  QueryBuilder<UserIsarModel, UserIsarModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserIsarModel, UserIsarModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<UserIsarModel, UserIsarModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserIsarModel, UserIsarModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserIsarModel, UserIsarModel, QAfterWhereClause> idBetween(
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

extension UserIsarModelQueryFilter
    on QueryBuilder<UserIsarModel, UserIsarModel, QFilterCondition> {
  QueryBuilder<UserIsarModel, UserIsarModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UserIsarModel, UserIsarModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UserIsarModel, UserIsarModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserIsarModel, UserIsarModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<UserIsarModel, UserIsarModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserIsarModel, UserIsarModel, QAfterFilterCondition> idBetween(
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
}

extension UserIsarModelQueryObject
    on QueryBuilder<UserIsarModel, UserIsarModel, QFilterCondition> {}

extension UserIsarModelQueryLinks
    on QueryBuilder<UserIsarModel, UserIsarModel, QFilterCondition> {}

extension UserIsarModelQuerySortBy
    on QueryBuilder<UserIsarModel, UserIsarModel, QSortBy> {}

extension UserIsarModelQuerySortThenBy
    on QueryBuilder<UserIsarModel, UserIsarModel, QSortThenBy> {
  QueryBuilder<UserIsarModel, UserIsarModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserIsarModel, UserIsarModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension UserIsarModelQueryWhereDistinct
    on QueryBuilder<UserIsarModel, UserIsarModel, QDistinct> {}

extension UserIsarModelQueryProperty
    on QueryBuilder<UserIsarModel, UserIsarModel, QQueryProperty> {
  QueryBuilder<UserIsarModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
