// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_company.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProductionCompanyIsarModelCollection on Isar {
  IsarCollection<ProductionCompanyIsarModel> get productionCompanyIsarModels =>
      this.collection();
}

const ProductionCompanyIsarModelSchema = CollectionSchema(
  name: r'ProductionCompanyIsarModel',
  id: 14378994666893426,
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
  estimateSize: _productionCompanyIsarModelEstimateSize,
  serialize: _productionCompanyIsarModelSerialize,
  deserialize: _productionCompanyIsarModelDeserialize,
  deserializeProp: _productionCompanyIsarModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'movies': LinkSchema(
      id: -7304607452319256100,
      name: r'movies',
      target: r'MovieDetailsTmdbIsarModel',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _productionCompanyIsarModelGetId,
  getLinks: _productionCompanyIsarModelGetLinks,
  attach: _productionCompanyIsarModelAttach,
  version: '3.1.0+1',
);

int _productionCompanyIsarModelEstimateSize(
  ProductionCompanyIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.logoPath.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.originCountry.length * 3;
  return bytesCount;
}

void _productionCompanyIsarModelSerialize(
  ProductionCompanyIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.logoPath);
  writer.writeString(offsets[1], object.name);
  writer.writeString(offsets[2], object.originCountry);
}

ProductionCompanyIsarModel _productionCompanyIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductionCompanyIsarModel(
    id: id,
    logoPath: reader.readString(offsets[0]),
    name: reader.readString(offsets[1]),
    originCountry: reader.readString(offsets[2]),
  );
  return object;
}

P _productionCompanyIsarModelDeserializeProp<P>(
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

Id _productionCompanyIsarModelGetId(ProductionCompanyIsarModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _productionCompanyIsarModelGetLinks(
    ProductionCompanyIsarModel object) {
  return [object.movies];
}

void _productionCompanyIsarModelAttach(
    IsarCollection<dynamic> col, Id id, ProductionCompanyIsarModel object) {
  object.movies.attach(
      col, col.isar.collection<MovieDetailsTmdbIsarModel>(), r'movies', id);
}

extension ProductionCompanyIsarModelQueryWhereSort on QueryBuilder<
    ProductionCompanyIsarModel, ProductionCompanyIsarModel, QWhere> {
  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProductionCompanyIsarModelQueryWhere on QueryBuilder<
    ProductionCompanyIsarModel, ProductionCompanyIsarModel, QWhereClause> {
  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
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

extension ProductionCompanyIsarModelQueryFilter on QueryBuilder<
    ProductionCompanyIsarModel, ProductionCompanyIsarModel, QFilterCondition> {
  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> logoPathEqualTo(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> logoPathGreaterThan(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> logoPathLessThan(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> logoPathBetween(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> logoPathStartsWith(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> logoPathEndsWith(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
          QAfterFilterCondition>
      logoPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
          QAfterFilterCondition>
      logoPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'logoPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> logoPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> logoPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'logoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> originCountryEqualTo(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> originCountryGreaterThan(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> originCountryLessThan(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> originCountryBetween(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> originCountryStartsWith(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> originCountryEndsWith(
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

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
          QAfterFilterCondition>
      originCountryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
          QAfterFilterCondition>
      originCountryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originCountry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> originCountryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> originCountryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originCountry',
        value: '',
      ));
    });
  }
}

extension ProductionCompanyIsarModelQueryObject on QueryBuilder<
    ProductionCompanyIsarModel, ProductionCompanyIsarModel, QFilterCondition> {}

extension ProductionCompanyIsarModelQueryLinks on QueryBuilder<
    ProductionCompanyIsarModel, ProductionCompanyIsarModel, QFilterCondition> {
  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> movies(FilterQuery<MovieDetailsTmdbIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'movies');
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> moviesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', length, true, length, true);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> moviesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, 0, true);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> moviesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, false, 999999, true);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> moviesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, length, include);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterFilterCondition> moviesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', length, include, 999999, true);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
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

extension ProductionCompanyIsarModelQuerySortBy on QueryBuilder<
    ProductionCompanyIsarModel, ProductionCompanyIsarModel, QSortBy> {
  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> sortByLogoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoPath', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> sortByLogoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoPath', Sort.desc);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> sortByOriginCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originCountry', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> sortByOriginCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originCountry', Sort.desc);
    });
  }
}

extension ProductionCompanyIsarModelQuerySortThenBy on QueryBuilder<
    ProductionCompanyIsarModel, ProductionCompanyIsarModel, QSortThenBy> {
  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> thenByLogoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoPath', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> thenByLogoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoPath', Sort.desc);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> thenByOriginCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originCountry', Sort.asc);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QAfterSortBy> thenByOriginCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originCountry', Sort.desc);
    });
  }
}

extension ProductionCompanyIsarModelQueryWhereDistinct on QueryBuilder<
    ProductionCompanyIsarModel, ProductionCompanyIsarModel, QDistinct> {
  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QDistinct> distinctByLogoPath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'logoPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QDistinct> distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, ProductionCompanyIsarModel,
      QDistinct> distinctByOriginCountry({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originCountry',
          caseSensitive: caseSensitive);
    });
  }
}

extension ProductionCompanyIsarModelQueryProperty on QueryBuilder<
    ProductionCompanyIsarModel, ProductionCompanyIsarModel, QQueryProperty> {
  QueryBuilder<ProductionCompanyIsarModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, String, QQueryOperations>
      logoPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'logoPath');
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, String, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<ProductionCompanyIsarModel, String, QQueryOperations>
      originCountryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originCountry');
    });
  }
}
