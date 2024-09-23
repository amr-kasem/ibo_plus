// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_company.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProductionCompanyCollection on Isar {
  IsarCollection<ProductionCompany> get productionCompanys => this.collection();
}

const ProductionCompanySchema = CollectionSchema(
  name: r'ProductionCompany',
  id: 4321410972497950816,
  properties: {
    r'logoPath': PropertySchema(
      id: 0,
      name: r'logoPath',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'originCountry': PropertySchema(
      id: 2,
      name: r'originCountry',
      type: IsarType.string,
    )
  },
  estimateSize: _productionCompanyEstimateSize,
  serialize: _productionCompanySerialize,
  deserialize: _productionCompanyDeserialize,
  deserializeProp: _productionCompanyDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'movies': LinkSchema(
      id: -7845528125163581303,
      name: r'movies',
      target: r'MovieDetailsTmdb',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _productionCompanyGetId,
  getLinks: _productionCompanyGetLinks,
  attach: _productionCompanyAttach,
  version: '3.1.0+1',
);

int _productionCompanyEstimateSize(
  ProductionCompany object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.logoPath.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.originCountry.length * 3;
  return bytesCount;
}

void _productionCompanySerialize(
  ProductionCompany object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.logoPath);
  writer.writeString(offsets[1], object.name);
  writer.writeString(offsets[2], object.originCountry);
}

ProductionCompany _productionCompanyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductionCompany(
    id: id,
    logoPath: reader.readString(offsets[0]),
    name: reader.readString(offsets[1]),
    originCountry: reader.readString(offsets[2]),
  );
  return object;
}

P _productionCompanyDeserializeProp<P>(
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
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _productionCompanyGetId(ProductionCompany object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _productionCompanyGetLinks(
    ProductionCompany object) {
  return [object.movies];
}

void _productionCompanyAttach(
    IsarCollection<dynamic> col, Id id, ProductionCompany object) {
  object.movies
      .attach(col, col.isar.collection<MovieDetailsTmdb>(), r'movies', id);
}

extension ProductionCompanyQueryWhereSort
    on QueryBuilder<ProductionCompany, ProductionCompany, QWhere> {
  QueryBuilder<ProductionCompany, ProductionCompany, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProductionCompanyQueryWhere
    on QueryBuilder<ProductionCompany, ProductionCompany, QWhereClause> {
  QueryBuilder<ProductionCompany, ProductionCompany, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterWhereClause>
      idBetween(
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

extension ProductionCompanyQueryFilter
    on QueryBuilder<ProductionCompany, ProductionCompany, QFilterCondition> {
  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
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

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      idLessThan(
    Id value, {
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

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      logoPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      logoPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      logoPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      logoPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'logoPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      logoPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      logoPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      logoPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      logoPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'logoPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      logoPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      logoPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'logoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
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

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
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

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
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

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
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

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
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

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
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

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      originCountryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      originCountryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      originCountryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      originCountryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originCountry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      originCountryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      originCountryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      originCountryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      originCountryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originCountry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      originCountryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      originCountryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originCountry',
        value: '',
      ));
    });
  }
}

extension ProductionCompanyQueryObject
    on QueryBuilder<ProductionCompany, ProductionCompany, QFilterCondition> {}

extension ProductionCompanyQueryLinks
    on QueryBuilder<ProductionCompany, ProductionCompany, QFilterCondition> {
  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      movies(FilterQuery<MovieDetailsTmdb> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'movies');
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      moviesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', length, true, length, true);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      moviesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, 0, true);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      moviesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, false, 999999, true);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      moviesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, length, include);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
      moviesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', length, include, 999999, true);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterFilterCondition>
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

extension ProductionCompanyQuerySortBy
    on QueryBuilder<ProductionCompany, ProductionCompany, QSortBy> {
  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      sortByLogoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoPath', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      sortByLogoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoPath', Sort.desc);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      sortByOriginCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originCountry', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      sortByOriginCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originCountry', Sort.desc);
    });
  }
}

extension ProductionCompanyQuerySortThenBy
    on QueryBuilder<ProductionCompany, ProductionCompany, QSortThenBy> {
  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      thenByLogoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoPath', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      thenByLogoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoPath', Sort.desc);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      thenByOriginCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originCountry', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QAfterSortBy>
      thenByOriginCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originCountry', Sort.desc);
    });
  }
}

extension ProductionCompanyQueryWhereDistinct
    on QueryBuilder<ProductionCompany, ProductionCompany, QDistinct> {
  QueryBuilder<ProductionCompany, ProductionCompany, QDistinct>
      distinctByLogoPath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'logoPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductionCompany, ProductionCompany, QDistinct>
      distinctByOriginCountry({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originCountry',
          caseSensitive: caseSensitive);
    });
  }
}

extension ProductionCompanyQueryProperty
    on QueryBuilder<ProductionCompany, ProductionCompany, QQueryProperty> {
  QueryBuilder<ProductionCompany, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProductionCompany, String, QQueryOperations> logoPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'logoPath');
    });
  }

  QueryBuilder<ProductionCompany, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<ProductionCompany, String, QQueryOperations>
      originCountryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originCountry');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductionCompany _$ProductionCompanyFromJson(Map<String, dynamic> json) =>
    ProductionCompany(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      originCountry: json['origin_country'] as String,
      logoPath: json['logo_path'] as String,
    );

Map<String, dynamic> _$ProductionCompanyToJson(ProductionCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'origin_country': instance.originCountry,
      'logo_path': instance.logoPath,
    };
