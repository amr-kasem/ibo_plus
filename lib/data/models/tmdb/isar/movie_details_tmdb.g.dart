// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_tmdb.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMovieDetailsTmdbIsarModelCollection on Isar {
  IsarCollection<MovieDetailsTmdbIsarModel> get movieDetailsTmdbIsarModels =>
      this.collection();
}

const MovieDetailsTmdbIsarModelSchema = CollectionSchema(
  name: r'MovieDetailsTmdbIsarModel',
  id: -8174769729401537589,
  properties: {
    r'adult': PropertySchema(
      id: 0,
      name: r'adult',
      type: IsarType.bool,
    ),
    r'backdropPath': PropertySchema(
      id: 1,
      name: r'backdropPath',
      type: IsarType.string,
    ),
    r'budget': PropertySchema(
      id: 2,
      name: r'budget',
      type: IsarType.long,
    ),
    r'homepage': PropertySchema(
      id: 3,
      name: r'homepage',
      type: IsarType.string,
    ),
    r'imdbId': PropertySchema(
      id: 4,
      name: r'imdbId',
      type: IsarType.string,
    ),
    r'originCountry': PropertySchema(
      id: 5,
      name: r'originCountry',
      type: IsarType.stringList,
    ),
    r'originalLanguage': PropertySchema(
      id: 6,
      name: r'originalLanguage',
      type: IsarType.string,
    ),
    r'originalTitle': PropertySchema(
      id: 7,
      name: r'originalTitle',
      type: IsarType.string,
    ),
    r'overview': PropertySchema(
      id: 8,
      name: r'overview',
      type: IsarType.string,
    ),
    r'popularity': PropertySchema(
      id: 9,
      name: r'popularity',
      type: IsarType.double,
    ),
    r'posterPath': PropertySchema(
      id: 10,
      name: r'posterPath',
      type: IsarType.string,
    ),
    r'releaseDate': PropertySchema(
      id: 11,
      name: r'releaseDate',
      type: IsarType.string,
    ),
    r'revenue': PropertySchema(
      id: 12,
      name: r'revenue',
      type: IsarType.long,
    ),
    r'runtime': PropertySchema(
      id: 13,
      name: r'runtime',
      type: IsarType.long,
    ),
    r'status': PropertySchema(
      id: 14,
      name: r'status',
      type: IsarType.string,
    ),
    r'tagline': PropertySchema(
      id: 15,
      name: r'tagline',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 16,
      name: r'title',
      type: IsarType.string,
    ),
    r'video': PropertySchema(
      id: 17,
      name: r'video',
      type: IsarType.bool,
    ),
    r'voteAverage': PropertySchema(
      id: 18,
      name: r'voteAverage',
      type: IsarType.double,
    )
  },
  estimateSize: _movieDetailsTmdbIsarModelEstimateSize,
  serialize: _movieDetailsTmdbIsarModelSerialize,
  deserialize: _movieDetailsTmdbIsarModelDeserialize,
  deserializeProp: _movieDetailsTmdbIsarModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'belongsToCollection': LinkSchema(
      id: -3187325519259525808,
      name: r'belongsToCollection',
      target: r'TmdbCollectionIsarModel',
      single: true,
      linkName: r'movies',
    ),
    r'genres': LinkSchema(
      id: -5711910783477427128,
      name: r'genres',
      target: r'GenreIsarModel',
      single: false,
      linkName: r'movies',
    ),
    r'productionCompanies': LinkSchema(
      id: 6342004741392689011,
      name: r'productionCompanies',
      target: r'ProductionCompanyIsarModel',
      single: false,
      linkName: r'movies',
    ),
    r'productionCountries': LinkSchema(
      id: -6063363573906411029,
      name: r'productionCountries',
      target: r'ProductionCountryIsarModel',
      single: false,
      linkName: r'movies',
    ),
    r'spokenLanguages': LinkSchema(
      id: 8584951270992453558,
      name: r'spokenLanguages',
      target: r'SpokenLanguageIsarModel',
      single: false,
      linkName: r'movies',
    )
  },
  embeddedSchemas: {},
  getId: _movieDetailsTmdbIsarModelGetId,
  getLinks: _movieDetailsTmdbIsarModelGetLinks,
  attach: _movieDetailsTmdbIsarModelAttach,
  version: '3.1.0+1',
);

int _movieDetailsTmdbIsarModelEstimateSize(
  MovieDetailsTmdbIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.backdropPath.length * 3;
  bytesCount += 3 + object.homepage.length * 3;
  bytesCount += 3 + object.imdbId.length * 3;
  bytesCount += 3 + object.originCountry.length * 3;
  {
    for (var i = 0; i < object.originCountry.length; i++) {
      final value = object.originCountry[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.originalLanguage.length * 3;
  bytesCount += 3 + object.originalTitle.length * 3;
  bytesCount += 3 + object.overview.length * 3;
  bytesCount += 3 + object.posterPath.length * 3;
  bytesCount += 3 + object.releaseDate.length * 3;
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.tagline.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _movieDetailsTmdbIsarModelSerialize(
  MovieDetailsTmdbIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.adult);
  writer.writeString(offsets[1], object.backdropPath);
  writer.writeLong(offsets[2], object.budget);
  writer.writeString(offsets[3], object.homepage);
  writer.writeString(offsets[4], object.imdbId);
  writer.writeStringList(offsets[5], object.originCountry);
  writer.writeString(offsets[6], object.originalLanguage);
  writer.writeString(offsets[7], object.originalTitle);
  writer.writeString(offsets[8], object.overview);
  writer.writeDouble(offsets[9], object.popularity);
  writer.writeString(offsets[10], object.posterPath);
  writer.writeString(offsets[11], object.releaseDate);
  writer.writeLong(offsets[12], object.revenue);
  writer.writeLong(offsets[13], object.runtime);
  writer.writeString(offsets[14], object.status);
  writer.writeString(offsets[15], object.tagline);
  writer.writeString(offsets[16], object.title);
  writer.writeBool(offsets[17], object.video);
  writer.writeDouble(offsets[18], object.voteAverage);
}

MovieDetailsTmdbIsarModel _movieDetailsTmdbIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MovieDetailsTmdbIsarModel(
    adult: reader.readBool(offsets[0]),
    backdropPath: reader.readString(offsets[1]),
    budget: reader.readLong(offsets[2]),
    homepage: reader.readString(offsets[3]),
    id: id,
    imdbId: reader.readString(offsets[4]),
    originCountry: reader.readStringList(offsets[5]) ?? [],
    originalLanguage: reader.readString(offsets[6]),
    originalTitle: reader.readString(offsets[7]),
    overview: reader.readString(offsets[8]),
    popularity: reader.readDouble(offsets[9]),
    posterPath: reader.readString(offsets[10]),
    releaseDate: reader.readString(offsets[11]),
    revenue: reader.readLong(offsets[12]),
    runtime: reader.readLong(offsets[13]),
    status: reader.readString(offsets[14]),
    tagline: reader.readString(offsets[15]),
    title: reader.readString(offsets[16]),
    video: reader.readBool(offsets[17]),
    voteAverage: reader.readDouble(offsets[18]),
  );
  return object;
}

P _movieDetailsTmdbIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readBool(offset)) as P;
    case 18:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _movieDetailsTmdbIsarModelGetId(MovieDetailsTmdbIsarModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _movieDetailsTmdbIsarModelGetLinks(
    MovieDetailsTmdbIsarModel object) {
  return [
    object.belongsToCollection,
    object.genres,
    object.productionCompanies,
    object.productionCountries,
    object.spokenLanguages
  ];
}

void _movieDetailsTmdbIsarModelAttach(
    IsarCollection<dynamic> col, Id id, MovieDetailsTmdbIsarModel object) {
  object.belongsToCollection.attach(
      col,
      col.isar.collection<TmdbCollectionIsarModel>(),
      r'belongsToCollection',
      id);
  object.genres
      .attach(col, col.isar.collection<GenreIsarModel>(), r'genres', id);
  object.productionCompanies.attach(
      col,
      col.isar.collection<ProductionCompanyIsarModel>(),
      r'productionCompanies',
      id);
  object.productionCountries.attach(
      col,
      col.isar.collection<ProductionCountryIsarModel>(),
      r'productionCountries',
      id);
  object.spokenLanguages.attach(col,
      col.isar.collection<SpokenLanguageIsarModel>(), r'spokenLanguages', id);
}

extension MovieDetailsTmdbIsarModelQueryWhereSort on QueryBuilder<
    MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QWhere> {
  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MovieDetailsTmdbIsarModelQueryWhere on QueryBuilder<
    MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QWhereClause> {
  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
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

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
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

extension MovieDetailsTmdbIsarModelQueryFilter on QueryBuilder<
    MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QFilterCondition> {
  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> adultEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adult',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> backdropPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> backdropPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> backdropPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> backdropPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backdropPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> backdropPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> backdropPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      backdropPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      backdropPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backdropPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> backdropPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backdropPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> backdropPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backdropPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> budgetEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'budget',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> budgetGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'budget',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> budgetLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'budget',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> budgetBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'budget',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> homepageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> homepageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> homepageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> homepageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'homepage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> homepageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> homepageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      homepageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      homepageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'homepage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> homepageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'homepage',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> homepageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'homepage',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
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

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
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

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
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

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> imdbIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imdbId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> imdbIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imdbId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> imdbIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imdbId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> imdbIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imdbId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> imdbIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imdbId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> imdbIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imdbId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      imdbIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imdbId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      imdbIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imdbId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> imdbIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imdbId',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> imdbIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imdbId',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryElementEqualTo(
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

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryElementGreaterThan(
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

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryElementLessThan(
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

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryElementBetween(
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

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryElementStartsWith(
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

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryElementEndsWith(
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

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      originCountryElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      originCountryElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originCountry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'originCountry',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'originCountry',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'originCountry',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'originCountry',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'originCountry',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originCountryLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'originCountry',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalLanguageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalLanguageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalLanguageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalLanguageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalLanguage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalLanguageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalLanguageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      originalLanguageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      originalLanguageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originalLanguage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalLanguageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalLanguage',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalLanguageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originalLanguage',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalTitleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalTitleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalTitleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalTitleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      originalTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      originalTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originalTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> originalTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originalTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> overviewEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> overviewGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> overviewLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> overviewBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overview',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> overviewStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> overviewEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      overviewContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      overviewMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'overview',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> overviewIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> overviewIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> popularityEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'popularity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> popularityGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'popularity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> popularityLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'popularity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> popularityBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'popularity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> posterPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> posterPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> posterPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> posterPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'posterPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> posterPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> posterPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      posterPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      posterPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'posterPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> posterPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> posterPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'posterPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> releaseDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> releaseDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> releaseDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> releaseDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'releaseDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> releaseDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> releaseDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      releaseDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      releaseDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'releaseDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> releaseDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'releaseDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> releaseDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'releaseDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> revenueEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'revenue',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> revenueGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'revenue',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> revenueLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'revenue',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> revenueBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'revenue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> runtimeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'runtime',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> runtimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'runtime',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> runtimeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'runtime',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> runtimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'runtime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> taglineEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> taglineGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> taglineLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> taglineBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tagline',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> taglineStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> taglineEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      taglineContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      taglineMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tagline',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> taglineIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagline',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> taglineIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tagline',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> videoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'video',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> voteAverageEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'voteAverage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> voteAverageGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'voteAverage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> voteAverageLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'voteAverage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> voteAverageBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'voteAverage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension MovieDetailsTmdbIsarModelQueryObject on QueryBuilder<
    MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QFilterCondition> {}

extension MovieDetailsTmdbIsarModelQueryLinks on QueryBuilder<
    MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QFilterCondition> {
  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      belongsToCollection(FilterQuery<TmdbCollectionIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'belongsToCollection');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> belongsToCollectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'belongsToCollection', 0, true, 0, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> genres(FilterQuery<GenreIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'genres');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> genresLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genres', length, true, length, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> genresIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genres', 0, true, 0, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> genresIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genres', 0, false, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> genresLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genres', 0, true, length, include);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> genresLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genres', length, include, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> genresLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'genres', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      productionCompanies(FilterQuery<ProductionCompanyIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'productionCompanies');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> productionCompaniesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'productionCompanies', length, true, length, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> productionCompaniesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'productionCompanies', 0, true, 0, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> productionCompaniesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'productionCompanies', 0, false, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> productionCompaniesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'productionCompanies', 0, true, length, include);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> productionCompaniesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'productionCompanies', length, include, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> productionCompaniesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'productionCompanies', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      productionCountries(FilterQuery<ProductionCountryIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'productionCountries');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> productionCountriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'productionCountries', length, true, length, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> productionCountriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'productionCountries', 0, true, 0, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> productionCountriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'productionCountries', 0, false, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> productionCountriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'productionCountries', 0, true, length, include);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> productionCountriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'productionCountries', length, include, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> productionCountriesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'productionCountries', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
          QAfterFilterCondition>
      spokenLanguages(FilterQuery<SpokenLanguageIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'spokenLanguages');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> spokenLanguagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'spokenLanguages', length, true, length, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> spokenLanguagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'spokenLanguages', 0, true, 0, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> spokenLanguagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'spokenLanguages', 0, false, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> spokenLanguagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'spokenLanguages', 0, true, length, include);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> spokenLanguagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'spokenLanguages', length, include, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterFilterCondition> spokenLanguagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'spokenLanguages', lower, includeLower, upper, includeUpper);
    });
  }
}

extension MovieDetailsTmdbIsarModelQuerySortBy on QueryBuilder<
    MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QSortBy> {
  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adult', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByAdultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adult', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByBackdropPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backdropPath', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByBackdropPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backdropPath', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByBudget() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'budget', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByBudgetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'budget', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByHomepage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByHomepageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByImdbId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imdbId', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByImdbIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imdbId', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByOriginalLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalLanguage', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByOriginalLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalLanguage', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByOriginalTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalTitle', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByOriginalTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalTitle', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByOverview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByOverviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByPopularityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByPosterPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByPosterPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByReleaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByRevenue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revenue', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByRevenueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revenue', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByRuntimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByTagline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagline', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByTaglineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagline', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> sortByVoteAverageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.desc);
    });
  }
}

extension MovieDetailsTmdbIsarModelQuerySortThenBy on QueryBuilder<
    MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QSortThenBy> {
  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adult', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByAdultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adult', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByBackdropPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backdropPath', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByBackdropPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backdropPath', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByBudget() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'budget', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByBudgetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'budget', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByHomepage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByHomepageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByImdbId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imdbId', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByImdbIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imdbId', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByOriginalLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalLanguage', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByOriginalLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalLanguage', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByOriginalTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalTitle', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByOriginalTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalTitle', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByOverview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByOverviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByPopularityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByPosterPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByPosterPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByReleaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByRevenue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revenue', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByRevenueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revenue', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByRuntimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByTagline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagline', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByTaglineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagline', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel,
      QAfterSortBy> thenByVoteAverageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.desc);
    });
  }
}

extension MovieDetailsTmdbIsarModelQueryWhereDistinct on QueryBuilder<
    MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct> {
  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adult');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByBackdropPath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backdropPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByBudget() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'budget');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByHomepage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'homepage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByImdbId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imdbId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByOriginCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originCountry');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByOriginalLanguage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originalLanguage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByOriginalTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originalTitle',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByOverview({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overview', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'popularity');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByPosterPath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'posterPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByReleaseDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'releaseDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByRevenue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'revenue');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'runtime');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByTagline({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tagline', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'video');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QDistinct>
      distinctByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'voteAverage');
    });
  }
}

extension MovieDetailsTmdbIsarModelQueryProperty on QueryBuilder<
    MovieDetailsTmdbIsarModel, MovieDetailsTmdbIsarModel, QQueryProperty> {
  QueryBuilder<MovieDetailsTmdbIsarModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, bool, QQueryOperations>
      adultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adult');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, String, QQueryOperations>
      backdropPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backdropPath');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, int, QQueryOperations>
      budgetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'budget');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, String, QQueryOperations>
      homepageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'homepage');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, String, QQueryOperations>
      imdbIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imdbId');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, List<String>, QQueryOperations>
      originCountryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originCountry');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, String, QQueryOperations>
      originalLanguageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originalLanguage');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, String, QQueryOperations>
      originalTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originalTitle');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, String, QQueryOperations>
      overviewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overview');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, double, QQueryOperations>
      popularityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'popularity');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, String, QQueryOperations>
      posterPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'posterPath');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, String, QQueryOperations>
      releaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'releaseDate');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, int, QQueryOperations>
      revenueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'revenue');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, int, QQueryOperations>
      runtimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'runtime');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, String, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, String, QQueryOperations>
      taglineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tagline');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, String, QQueryOperations>
      titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, bool, QQueryOperations>
      videoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'video');
    });
  }

  QueryBuilder<MovieDetailsTmdbIsarModel, double, QQueryOperations>
      voteAverageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'voteAverage');
    });
  }
}
