// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spoken_language.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSpokenLanguageIsarModelCollection on Isar {
  IsarCollection<SpokenLanguageIsarModel> get spokenLanguageIsarModels =>
      this.collection();
}

const SpokenLanguageIsarModelSchema = CollectionSchema(
  name: r'SpokenLanguageIsarModel',
  id: -1287287511961171713,
  properties: {
    r'englishName': PropertySchema(
      id: 0,
      name: r'englishName',
      type: IsarType.string,
    ),
    r'iso6391': PropertySchema(
      id: 1,
      name: r'iso6391',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _spokenLanguageIsarModelEstimateSize,
  serialize: _spokenLanguageIsarModelSerialize,
  deserialize: _spokenLanguageIsarModelDeserialize,
  deserializeProp: _spokenLanguageIsarModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {
    r'movies': LinkSchema(
      id: 2230468629608231947,
      name: r'movies',
      target: r'MovieDetailsTmdbIsarModel',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _spokenLanguageIsarModelGetId,
  getLinks: _spokenLanguageIsarModelGetLinks,
  attach: _spokenLanguageIsarModelAttach,
  version: '3.1.0+1',
);

int _spokenLanguageIsarModelEstimateSize(
  SpokenLanguageIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.englishName.length * 3;
  bytesCount += 3 + object.iso6391.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _spokenLanguageIsarModelSerialize(
  SpokenLanguageIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.englishName);
  writer.writeString(offsets[1], object.iso6391);
  writer.writeString(offsets[2], object.name);
}

SpokenLanguageIsarModel _spokenLanguageIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SpokenLanguageIsarModel(
    englishName: reader.readString(offsets[0]),
    iso6391: reader.readString(offsets[1]),
    name: reader.readString(offsets[2]),
  );
  return object;
}

P _spokenLanguageIsarModelDeserializeProp<P>(
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

Id _spokenLanguageIsarModelGetId(SpokenLanguageIsarModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _spokenLanguageIsarModelGetLinks(
    SpokenLanguageIsarModel object) {
  return [object.movies];
}

void _spokenLanguageIsarModelAttach(
    IsarCollection<dynamic> col, Id id, SpokenLanguageIsarModel object) {
  object.movies.attach(
      col, col.isar.collection<MovieDetailsTmdbIsarModel>(), r'movies', id);
}

extension SpokenLanguageIsarModelQueryWhereSort
    on QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QWhere> {
  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterWhere>
      anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SpokenLanguageIsarModelQueryWhere on QueryBuilder<
    SpokenLanguageIsarModel, SpokenLanguageIsarModel, QWhereClause> {
  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterWhereClause> isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterWhereClause> isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

extension SpokenLanguageIsarModelQueryFilter on QueryBuilder<
    SpokenLanguageIsarModel, SpokenLanguageIsarModel, QFilterCondition> {
  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> englishNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> englishNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> englishNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> englishNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'englishName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> englishNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> englishNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
          QAfterFilterCondition>
      englishNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
          QAfterFilterCondition>
      englishNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'englishName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> englishNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishName',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> englishNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'englishName',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> iso6391EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> iso6391GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> iso6391LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> iso6391Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iso6391',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> iso6391StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> iso6391EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
          QAfterFilterCondition>
      iso6391Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
          QAfterFilterCondition>
      iso6391Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iso6391',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> iso6391IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iso6391',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> iso6391IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iso6391',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension SpokenLanguageIsarModelQueryObject on QueryBuilder<
    SpokenLanguageIsarModel, SpokenLanguageIsarModel, QFilterCondition> {}

extension SpokenLanguageIsarModelQueryLinks on QueryBuilder<
    SpokenLanguageIsarModel, SpokenLanguageIsarModel, QFilterCondition> {
  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> movies(FilterQuery<MovieDetailsTmdbIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'movies');
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> moviesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', length, true, length, true);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> moviesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, 0, true);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> moviesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, false, 999999, true);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> moviesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, length, include);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
      QAfterFilterCondition> moviesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', length, include, 999999, true);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel,
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

extension SpokenLanguageIsarModelQuerySortBy
    on QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QSortBy> {
  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      sortByEnglishName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      sortByEnglishNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.desc);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      sortByIso6391() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso6391', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      sortByIso6391Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso6391', Sort.desc);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension SpokenLanguageIsarModelQuerySortThenBy on QueryBuilder<
    SpokenLanguageIsarModel, SpokenLanguageIsarModel, QSortThenBy> {
  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      thenByEnglishName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      thenByEnglishNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.desc);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      thenByIso6391() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso6391', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      thenByIso6391Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso6391', Sort.desc);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension SpokenLanguageIsarModelQueryWhereDistinct on QueryBuilder<
    SpokenLanguageIsarModel, SpokenLanguageIsarModel, QDistinct> {
  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QDistinct>
      distinctByEnglishName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'englishName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QDistinct>
      distinctByIso6391({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iso6391', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, SpokenLanguageIsarModel, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension SpokenLanguageIsarModelQueryProperty on QueryBuilder<
    SpokenLanguageIsarModel, SpokenLanguageIsarModel, QQueryProperty> {
  QueryBuilder<SpokenLanguageIsarModel, int, QQueryOperations>
      isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, String, QQueryOperations>
      englishNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'englishName');
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, String, QQueryOperations>
      iso6391Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iso6391');
    });
  }

  QueryBuilder<SpokenLanguageIsarModel, String, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
