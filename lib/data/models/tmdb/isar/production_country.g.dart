// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_country.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProductionCountryIsarModelCollection on Isar {
  IsarCollection<ProductionCountryIsarModel> get productionCountryIsarModels =>
      this.collection();
}

const ProductionCountryIsarModelSchema = CollectionSchema(
  name: r'ProductionCountryIsarModel',
  id: -2084735009839077805,
  properties: {
    r'iso31661': PropertySchema(
      id: 0,
      name: r'iso31661',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _productionCountryIsarModelEstimateSize,
  serialize: _productionCountryIsarModelSerialize,
  deserialize: _productionCountryIsarModelDeserialize,
  deserializeProp: _productionCountryIsarModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {
    r'movies': LinkSchema(
      id: -4104236193585672135,
      name: r'movies',
      target: r'MovieDetailsTmdbIsarModel',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _productionCountryIsarModelGetId,
  getLinks: _productionCountryIsarModelGetLinks,
  attach: _productionCountryIsarModelAttach,
  version: '3.1.0+1',
);

int _productionCountryIsarModelEstimateSize(
  ProductionCountryIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.iso31661.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _productionCountryIsarModelSerialize(
  ProductionCountryIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.iso31661);
  writer.writeString(offsets[1], object.name);
}

ProductionCountryIsarModel _productionCountryIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductionCountryIsarModel(
    iso31661: reader.readString(offsets[0]),
    name: reader.readString(offsets[1]),
  );
  return object;
}

P _productionCountryIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _productionCountryIsarModelGetId(ProductionCountryIsarModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _productionCountryIsarModelGetLinks(
    ProductionCountryIsarModel object) {
  return [object.movies];
}

void _productionCountryIsarModelAttach(
    IsarCollection<dynamic> col, Id id, ProductionCountryIsarModel object) {
  object.movies.attach(
      col, col.isar.collection<MovieDetailsTmdbIsarModel>(), r'movies', id);
}

extension ProductionCountryIsarModelQueryWhereSort on QueryBuilder<
    ProductionCountryIsarModel, ProductionCountryIsarModel, QWhere> {
  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProductionCountryIsarModelQueryWhere on QueryBuilder<
    ProductionCountryIsarModel, ProductionCountryIsarModel, QWhereClause> {
  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
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

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterWhereClause> isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterWhereClause> isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterWhereClause> isarIdBetween(
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

extension ProductionCountryIsarModelQueryFilter on QueryBuilder<
    ProductionCountryIsarModel, ProductionCountryIsarModel, QFilterCondition> {
  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
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

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
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

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
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

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> iso31661EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> iso31661GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> iso31661LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> iso31661Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iso31661',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> iso31661StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> iso31661EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
          QAfterFilterCondition>
      iso31661Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
          QAfterFilterCondition>
      iso31661Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iso31661',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> iso31661IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iso31661',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> iso31661IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iso31661',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
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

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
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

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
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

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
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

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
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

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
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

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
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

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
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

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension ProductionCountryIsarModelQueryObject on QueryBuilder<
    ProductionCountryIsarModel, ProductionCountryIsarModel, QFilterCondition> {}

extension ProductionCountryIsarModelQueryLinks on QueryBuilder<
    ProductionCountryIsarModel, ProductionCountryIsarModel, QFilterCondition> {
  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> movies(FilterQuery<MovieDetailsTmdbIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'movies');
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> moviesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', length, true, length, true);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> moviesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, 0, true);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> moviesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, false, 999999, true);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> moviesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, length, include);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> moviesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', length, include, 999999, true);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterFilterCondition> moviesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'movies', lower, includeLower, upper, includeUpper);
    });
  }
}

extension ProductionCountryIsarModelQuerySortBy on QueryBuilder<
    ProductionCountryIsarModel, ProductionCountryIsarModel, QSortBy> {
  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterSortBy> sortByIso31661() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso31661', Sort.asc);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterSortBy> sortByIso31661Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso31661', Sort.desc);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ProductionCountryIsarModelQuerySortThenBy on QueryBuilder<
    ProductionCountryIsarModel, ProductionCountryIsarModel, QSortThenBy> {
  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterSortBy> thenByIso31661() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso31661', Sort.asc);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterSortBy> thenByIso31661Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso31661', Sort.desc);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ProductionCountryIsarModelQueryWhereDistinct on QueryBuilder<
    ProductionCountryIsarModel, ProductionCountryIsarModel, QDistinct> {
  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QDistinct> distinctByIso31661({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iso31661', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductionCountryIsarModel, ProductionCountryIsarModel,
      QDistinct> distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension ProductionCountryIsarModelQueryProperty on QueryBuilder<
    ProductionCountryIsarModel, ProductionCountryIsarModel, QQueryProperty> {
  QueryBuilder<ProductionCountryIsarModel, int, QQueryOperations>
      isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<ProductionCountryIsarModel, String, QQueryOperations>
      iso31661Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iso31661');
    });
  }

  QueryBuilder<ProductionCountryIsarModel, String, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
