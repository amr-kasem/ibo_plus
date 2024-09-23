// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_country.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProductionCountryCollection on Isar {
  IsarCollection<ProductionCountry> get productionCountrys => this.collection();
}

const ProductionCountrySchema = CollectionSchema(
  name: r'ProductionCountry',
  id: -7497362912796260614,
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
  estimateSize: _productionCountryEstimateSize,
  serialize: _productionCountrySerialize,
  deserialize: _productionCountryDeserialize,
  deserializeProp: _productionCountryDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {
    r'movies': LinkSchema(
      id: -116594053873930205,
      name: r'movies',
      target: r'MovieDetailsTmdb',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _productionCountryGetId,
  getLinks: _productionCountryGetLinks,
  attach: _productionCountryAttach,
  version: '3.1.0+1',
);

int _productionCountryEstimateSize(
  ProductionCountry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.iso31661.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _productionCountrySerialize(
  ProductionCountry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.iso31661);
  writer.writeString(offsets[1], object.name);
}

ProductionCountry _productionCountryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductionCountry(
    iso31661: reader.readString(offsets[0]),
    name: reader.readString(offsets[1]),
  );
  return object;
}

P _productionCountryDeserializeProp<P>(
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

Id _productionCountryGetId(ProductionCountry object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _productionCountryGetLinks(
    ProductionCountry object) {
  return [object.movies];
}

void _productionCountryAttach(
    IsarCollection<dynamic> col, Id id, ProductionCountry object) {
  object.movies
      .attach(col, col.isar.collection<MovieDetailsTmdb>(), r'movies', id);
}

extension ProductionCountryQueryWhereSort
    on QueryBuilder<ProductionCountry, ProductionCountry, QWhere> {
  QueryBuilder<ProductionCountry, ProductionCountry, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProductionCountryQueryWhere
    on QueryBuilder<ProductionCountry, ProductionCountry, QWhereClause> {
  QueryBuilder<ProductionCountry, ProductionCountry, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterWhereClause>
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterWhereClause>
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
}

extension ProductionCountryQueryFilter
    on QueryBuilder<ProductionCountry, ProductionCountry, QFilterCondition> {
  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      isarIdLessThan(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      isarIdBetween(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661EqualTo(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661GreaterThan(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661LessThan(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661Between(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661StartsWith(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661EndsWith(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iso31661',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iso31661',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iso31661',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      iso31661IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iso31661',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension ProductionCountryQueryObject
    on QueryBuilder<ProductionCountry, ProductionCountry, QFilterCondition> {}

extension ProductionCountryQueryLinks
    on QueryBuilder<ProductionCountry, ProductionCountry, QFilterCondition> {
  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      movies(FilterQuery<MovieDetailsTmdb> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'movies');
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      moviesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', length, true, length, true);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      moviesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, 0, true);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      moviesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, false, 999999, true);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      moviesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, length, include);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      moviesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', length, include, 999999, true);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterFilterCondition>
      moviesLengthBetween(
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

extension ProductionCountryQuerySortBy
    on QueryBuilder<ProductionCountry, ProductionCountry, QSortBy> {
  QueryBuilder<ProductionCountry, ProductionCountry, QAfterSortBy>
      sortByIso31661() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso31661', Sort.asc);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterSortBy>
      sortByIso31661Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso31661', Sort.desc);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ProductionCountryQuerySortThenBy
    on QueryBuilder<ProductionCountry, ProductionCountry, QSortThenBy> {
  QueryBuilder<ProductionCountry, ProductionCountry, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterSortBy>
      thenByIso31661() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso31661', Sort.asc);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterSortBy>
      thenByIso31661Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso31661', Sort.desc);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ProductionCountryQueryWhereDistinct
    on QueryBuilder<ProductionCountry, ProductionCountry, QDistinct> {
  QueryBuilder<ProductionCountry, ProductionCountry, QDistinct>
      distinctByIso31661({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iso31661', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductionCountry, ProductionCountry, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension ProductionCountryQueryProperty
    on QueryBuilder<ProductionCountry, ProductionCountry, QQueryProperty> {
  QueryBuilder<ProductionCountry, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<ProductionCountry, String, QQueryOperations> iso31661Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iso31661');
    });
  }

  QueryBuilder<ProductionCountry, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductionCountry _$ProductionCountryFromJson(Map<String, dynamic> json) =>
    ProductionCountry(
      iso31661: json['iso31661'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ProductionCountryToJson(ProductionCountry instance) =>
    <String, dynamic>{
      'iso31661': instance.iso31661,
      'name': instance.name,
    };
