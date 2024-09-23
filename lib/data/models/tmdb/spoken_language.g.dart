// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spoken_language.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSpokenLanguageCollection on Isar {
  IsarCollection<SpokenLanguage> get spokenLanguages => this.collection();
}

const SpokenLanguageSchema = CollectionSchema(
  name: r'SpokenLanguage',
  id: -9096190108023075228,
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
  estimateSize: _spokenLanguageEstimateSize,
  serialize: _spokenLanguageSerialize,
  deserialize: _spokenLanguageDeserialize,
  deserializeProp: _spokenLanguageDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {
    r'movies': LinkSchema(
      id: 8159744308201540240,
      name: r'movies',
      target: r'MovieDetailsTmdb',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _spokenLanguageGetId,
  getLinks: _spokenLanguageGetLinks,
  attach: _spokenLanguageAttach,
  version: '3.1.0+1',
);

int _spokenLanguageEstimateSize(
  SpokenLanguage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.englishName.length * 3;
  bytesCount += 3 + object.iso6391.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _spokenLanguageSerialize(
  SpokenLanguage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.englishName);
  writer.writeString(offsets[1], object.iso6391);
  writer.writeString(offsets[2], object.name);
}

SpokenLanguage _spokenLanguageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SpokenLanguage(
    englishName: reader.readString(offsets[0]),
    iso6391: reader.readString(offsets[1]),
    name: reader.readString(offsets[2]),
  );
  return object;
}

P _spokenLanguageDeserializeProp<P>(
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

Id _spokenLanguageGetId(SpokenLanguage object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _spokenLanguageGetLinks(SpokenLanguage object) {
  return [object.movies];
}

void _spokenLanguageAttach(
    IsarCollection<dynamic> col, Id id, SpokenLanguage object) {
  object.movies
      .attach(col, col.isar.collection<MovieDetailsTmdb>(), r'movies', id);
}

extension SpokenLanguageQueryWhereSort
    on QueryBuilder<SpokenLanguage, SpokenLanguage, QWhere> {
  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SpokenLanguageQueryWhere
    on QueryBuilder<SpokenLanguage, SpokenLanguage, QWhereClause> {
  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterWhereClause>
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterWhereClause> isarIdBetween(
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

extension SpokenLanguageQueryFilter
    on QueryBuilder<SpokenLanguage, SpokenLanguage, QFilterCondition> {
  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameEqualTo(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameGreaterThan(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameLessThan(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameBetween(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameStartsWith(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameEndsWith(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'englishName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishName',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      englishNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'englishName',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391EqualTo(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391GreaterThan(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391LessThan(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391Between(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391StartsWith(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391EndsWith(
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iso6391',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iso6391',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iso6391',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      iso6391IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iso6391',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
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

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension SpokenLanguageQueryObject
    on QueryBuilder<SpokenLanguage, SpokenLanguage, QFilterCondition> {}

extension SpokenLanguageQueryLinks
    on QueryBuilder<SpokenLanguage, SpokenLanguage, QFilterCondition> {
  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition> movies(
      FilterQuery<MovieDetailsTmdb> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'movies');
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      moviesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', length, true, length, true);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      moviesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, 0, true);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      moviesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, false, 999999, true);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      moviesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, length, include);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
      moviesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', length, include, 999999, true);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterFilterCondition>
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

extension SpokenLanguageQuerySortBy
    on QueryBuilder<SpokenLanguage, SpokenLanguage, QSortBy> {
  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy>
      sortByEnglishName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy>
      sortByEnglishNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.desc);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy> sortByIso6391() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso6391', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy>
      sortByIso6391Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso6391', Sort.desc);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension SpokenLanguageQuerySortThenBy
    on QueryBuilder<SpokenLanguage, SpokenLanguage, QSortThenBy> {
  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy>
      thenByEnglishName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy>
      thenByEnglishNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.desc);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy> thenByIso6391() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso6391', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy>
      thenByIso6391Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iso6391', Sort.desc);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension SpokenLanguageQueryWhereDistinct
    on QueryBuilder<SpokenLanguage, SpokenLanguage, QDistinct> {
  QueryBuilder<SpokenLanguage, SpokenLanguage, QDistinct> distinctByEnglishName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'englishName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QDistinct> distinctByIso6391(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iso6391', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SpokenLanguage, SpokenLanguage, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension SpokenLanguageQueryProperty
    on QueryBuilder<SpokenLanguage, SpokenLanguage, QQueryProperty> {
  QueryBuilder<SpokenLanguage, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<SpokenLanguage, String, QQueryOperations> englishNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'englishName');
    });
  }

  QueryBuilder<SpokenLanguage, String, QQueryOperations> iso6391Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iso6391');
    });
  }

  QueryBuilder<SpokenLanguage, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpokenLanguage _$SpokenLanguageFromJson(Map<String, dynamic> json) =>
    SpokenLanguage(
      englishName: json['english_name'] as String,
      iso6391: json['iso6391'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SpokenLanguageToJson(SpokenLanguage instance) =>
    <String, dynamic>{
      'english_name': instance.englishName,
      'iso6391': instance.iso6391,
      'name': instance.name,
    };
