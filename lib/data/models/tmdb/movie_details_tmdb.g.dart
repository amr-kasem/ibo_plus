// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_tmdb.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMovieDetailsTmdbCollection on Isar {
  IsarCollection<MovieDetailsTmdb> get movieDetailsTmdbs => this.collection();
}

const MovieDetailsTmdbSchema = CollectionSchema(
  name: r'MovieDetailsTmdb',
  id: -795423673631208217,
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
  estimateSize: _movieDetailsTmdbEstimateSize,
  serialize: _movieDetailsTmdbSerialize,
  deserialize: _movieDetailsTmdbDeserialize,
  deserializeProp: _movieDetailsTmdbDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'belongsToCollection': LinkSchema(
      id: 997296746583747822,
      name: r'belongsToCollection',
      target: r'TmdbCollection',
      single: true,
      linkName: r'movies',
    ),
    r'genres': LinkSchema(
      id: -3901388253695702989,
      name: r'genres',
      target: r'Genre',
      single: false,
      linkName: r'movies',
    ),
    r'productionCompanies': LinkSchema(
      id: -4204769490285297177,
      name: r'productionCompanies',
      target: r'ProductionCompany',
      single: false,
      linkName: r'movies',
    ),
    r'productionCountries': LinkSchema(
      id: 9018558688422341210,
      name: r'productionCountries',
      target: r'ProductionCountry',
      single: false,
      linkName: r'movies',
    ),
    r'spokenLanguages': LinkSchema(
      id: -57824761885982723,
      name: r'spokenLanguages',
      target: r'SpokenLanguage',
      single: false,
      linkName: r'movies',
    )
  },
  embeddedSchemas: {},
  getId: _movieDetailsTmdbGetId,
  getLinks: _movieDetailsTmdbGetLinks,
  attach: _movieDetailsTmdbAttach,
  version: '3.1.0+1',
);

int _movieDetailsTmdbEstimateSize(
  MovieDetailsTmdb object,
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

void _movieDetailsTmdbSerialize(
  MovieDetailsTmdb object,
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

MovieDetailsTmdb _movieDetailsTmdbDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MovieDetailsTmdb(
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

P _movieDetailsTmdbDeserializeProp<P>(
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

Id _movieDetailsTmdbGetId(MovieDetailsTmdb object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _movieDetailsTmdbGetLinks(MovieDetailsTmdb object) {
  return [
    object.belongsToCollection,
    object.genres,
    object.productionCompanies,
    object.productionCountries,
    object.spokenLanguages
  ];
}

void _movieDetailsTmdbAttach(
    IsarCollection<dynamic> col, Id id, MovieDetailsTmdb object) {
  object.belongsToCollection.attach(
      col, col.isar.collection<TmdbCollection>(), r'belongsToCollection', id);
  object.genres.attach(col, col.isar.collection<Genre>(), r'genres', id);
  object.productionCompanies.attach(col,
      col.isar.collection<ProductionCompany>(), r'productionCompanies', id);
  object.productionCountries.attach(col,
      col.isar.collection<ProductionCountry>(), r'productionCountries', id);
  object.spokenLanguages.attach(
      col, col.isar.collection<SpokenLanguage>(), r'spokenLanguages', id);
}

extension MovieDetailsTmdbQueryWhereSort
    on QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QWhere> {
  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MovieDetailsTmdbQueryWhere
    on QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QWhereClause> {
  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterWhereClause>
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterWhereClause> idBetween(
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

extension MovieDetailsTmdbQueryFilter
    on QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QFilterCondition> {
  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      adultEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adult',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      backdropPathEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      backdropPathGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      backdropPathLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      backdropPathBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      backdropPathStartsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      backdropPathEndsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      backdropPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backdropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      backdropPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backdropPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      backdropPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backdropPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      backdropPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backdropPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      budgetEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'budget',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      budgetGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      budgetLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      budgetBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      homepageEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      homepageGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      homepageLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      homepageBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      homepageStartsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      homepageEndsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      homepageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      homepageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'homepage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      homepageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'homepage',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      homepageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'homepage',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      imdbIdEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      imdbIdGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      imdbIdLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      imdbIdBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      imdbIdStartsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      imdbIdEndsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      imdbIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imdbId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      imdbIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imdbId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      imdbIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imdbId',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      imdbIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imdbId',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryElementEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryElementGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryElementLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryElementBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryElementStartsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryElementEndsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originCountry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryLengthEqualTo(int length) {
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryIsEmpty() {
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryIsNotEmpty() {
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryLengthLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryLengthGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originCountryLengthBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalLanguageEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalLanguageGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalLanguageLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalLanguageBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalLanguageStartsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalLanguageEndsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalLanguageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originalLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalLanguageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originalLanguage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalLanguageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalLanguage',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalLanguageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originalLanguage',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalTitleEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalTitleGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalTitleLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalTitleBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalTitleStartsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalTitleEndsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originalTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      originalTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originalTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      overviewEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      overviewGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      overviewLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      overviewBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      overviewStartsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      overviewEndsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      overviewContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      overviewMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'overview',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      overviewIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      overviewIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      popularityEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      popularityGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      popularityLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      popularityBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      posterPathEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      posterPathGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      posterPathLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      posterPathBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      posterPathStartsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      posterPathEndsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      posterPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      posterPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'posterPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      posterPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      posterPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'posterPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      releaseDateEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      releaseDateGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      releaseDateLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      releaseDateBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      releaseDateStartsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      releaseDateEndsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      releaseDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      releaseDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'releaseDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      releaseDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'releaseDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      releaseDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'releaseDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      revenueEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'revenue',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      revenueGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      revenueLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      revenueBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      runtimeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'runtime',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      runtimeGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      runtimeLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      runtimeBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      statusEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      statusGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      statusLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      statusBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      statusStartsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      statusEndsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      taglineEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      taglineGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      taglineLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      taglineBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      taglineStartsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      taglineEndsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      taglineContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tagline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      taglineMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tagline',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      taglineIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagline',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      taglineIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tagline',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      titleEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      titleGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      titleLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      titleBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      titleStartsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      titleEndsWith(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      videoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'video',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      voteAverageEqualTo(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      voteAverageGreaterThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      voteAverageLessThan(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      voteAverageBetween(
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

extension MovieDetailsTmdbQueryObject
    on QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QFilterCondition> {}

extension MovieDetailsTmdbQueryLinks
    on QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QFilterCondition> {
  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      belongsToCollection(FilterQuery<TmdbCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'belongsToCollection');
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      belongsToCollectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'belongsToCollection', 0, true, 0, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      genres(FilterQuery<Genre> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'genres');
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      genresLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genres', length, true, length, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      genresIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genres', 0, true, 0, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      genresIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genres', 0, false, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      genresLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genres', 0, true, length, include);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      genresLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genres', length, include, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      genresLengthBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCompanies(FilterQuery<ProductionCompany> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'productionCompanies');
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCompaniesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'productionCompanies', length, true, length, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCompaniesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'productionCompanies', 0, true, 0, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCompaniesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'productionCompanies', 0, false, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCompaniesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'productionCompanies', 0, true, length, include);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCompaniesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'productionCompanies', length, include, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCompaniesLengthBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCountries(FilterQuery<ProductionCountry> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'productionCountries');
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCountriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'productionCountries', length, true, length, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCountriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'productionCountries', 0, true, 0, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCountriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'productionCountries', 0, false, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCountriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'productionCountries', 0, true, length, include);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCountriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'productionCountries', length, include, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      productionCountriesLengthBetween(
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

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      spokenLanguages(FilterQuery<SpokenLanguage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'spokenLanguages');
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      spokenLanguagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'spokenLanguages', length, true, length, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      spokenLanguagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'spokenLanguages', 0, true, 0, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      spokenLanguagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'spokenLanguages', 0, false, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      spokenLanguagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'spokenLanguages', 0, true, length, include);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      spokenLanguagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'spokenLanguages', length, include, 999999, true);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterFilterCondition>
      spokenLanguagesLengthBetween(
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

extension MovieDetailsTmdbQuerySortBy
    on QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QSortBy> {
  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy> sortByAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adult', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByAdultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adult', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByBackdropPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backdropPath', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByBackdropPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backdropPath', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByBudget() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'budget', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByBudgetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'budget', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByHomepage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByHomepageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByImdbId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imdbId', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByImdbIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imdbId', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByOriginalLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalLanguage', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByOriginalLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalLanguage', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByOriginalTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalTitle', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByOriginalTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalTitle', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByOverview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByOverviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByPopularityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByPosterPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByPosterPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByReleaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByRevenue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revenue', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByRevenueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revenue', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByRuntimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByTagline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagline', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByTaglineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagline', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy> sortByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      sortByVoteAverageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.desc);
    });
  }
}

extension MovieDetailsTmdbQuerySortThenBy
    on QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QSortThenBy> {
  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy> thenByAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adult', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByAdultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adult', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByBackdropPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backdropPath', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByBackdropPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backdropPath', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByBudget() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'budget', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByBudgetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'budget', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByHomepage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByHomepageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByImdbId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imdbId', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByImdbIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imdbId', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByOriginalLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalLanguage', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByOriginalLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalLanguage', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByOriginalTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalTitle', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByOriginalTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalTitle', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByOverview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByOverviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByPopularityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByPosterPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByPosterPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByReleaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByRevenue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revenue', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByRevenueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revenue', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByRuntimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByTagline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagline', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByTaglineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagline', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy> thenByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.desc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.asc);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QAfterSortBy>
      thenByVoteAverageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.desc);
    });
  }
}

extension MovieDetailsTmdbQueryWhereDistinct
    on QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct> {
  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adult');
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByBackdropPath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backdropPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByBudget() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'budget');
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByHomepage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'homepage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct> distinctByImdbId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imdbId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByOriginCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originCountry');
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByOriginalLanguage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originalLanguage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByOriginalTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originalTitle',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByOverview({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overview', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'popularity');
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByPosterPath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'posterPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByReleaseDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'releaseDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByRevenue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'revenue');
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'runtime');
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct> distinctByTagline(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tagline', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'video');
    });
  }

  QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QDistinct>
      distinctByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'voteAverage');
    });
  }
}

extension MovieDetailsTmdbQueryProperty
    on QueryBuilder<MovieDetailsTmdb, MovieDetailsTmdb, QQueryProperty> {
  QueryBuilder<MovieDetailsTmdb, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MovieDetailsTmdb, bool, QQueryOperations> adultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adult');
    });
  }

  QueryBuilder<MovieDetailsTmdb, String, QQueryOperations>
      backdropPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backdropPath');
    });
  }

  QueryBuilder<MovieDetailsTmdb, int, QQueryOperations> budgetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'budget');
    });
  }

  QueryBuilder<MovieDetailsTmdb, String, QQueryOperations> homepageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'homepage');
    });
  }

  QueryBuilder<MovieDetailsTmdb, String, QQueryOperations> imdbIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imdbId');
    });
  }

  QueryBuilder<MovieDetailsTmdb, List<String>, QQueryOperations>
      originCountryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originCountry');
    });
  }

  QueryBuilder<MovieDetailsTmdb, String, QQueryOperations>
      originalLanguageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originalLanguage');
    });
  }

  QueryBuilder<MovieDetailsTmdb, String, QQueryOperations>
      originalTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originalTitle');
    });
  }

  QueryBuilder<MovieDetailsTmdb, String, QQueryOperations> overviewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overview');
    });
  }

  QueryBuilder<MovieDetailsTmdb, double, QQueryOperations>
      popularityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'popularity');
    });
  }

  QueryBuilder<MovieDetailsTmdb, String, QQueryOperations>
      posterPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'posterPath');
    });
  }

  QueryBuilder<MovieDetailsTmdb, String, QQueryOperations>
      releaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'releaseDate');
    });
  }

  QueryBuilder<MovieDetailsTmdb, int, QQueryOperations> revenueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'revenue');
    });
  }

  QueryBuilder<MovieDetailsTmdb, int, QQueryOperations> runtimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'runtime');
    });
  }

  QueryBuilder<MovieDetailsTmdb, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<MovieDetailsTmdb, String, QQueryOperations> taglineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tagline');
    });
  }

  QueryBuilder<MovieDetailsTmdb, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<MovieDetailsTmdb, bool, QQueryOperations> videoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'video');
    });
  }

  QueryBuilder<MovieDetailsTmdb, double, QQueryOperations>
      voteAverageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'voteAverage');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailsTmdb _$MovieDetailsTmdbFromJson(Map<String, dynamic> json) =>
    MovieDetailsTmdb(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String,
      budget: (json['budget'] as num).toInt(),
      homepage: json['homepage'] as String,
      id: (json['id'] as num).toInt(),
      imdbId: json['imdb_id'] as String,
      originCountry: (json['origin_country'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      revenue: (json['revenue'] as num).toInt(),
      runtime: (json['runtime'] as num).toInt(),
      status: json['status'] as String,
      tagline: json['tagline'] as String,
      title: json['title'] as String,
      video: json['video'] as bool,
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$MovieDetailsTmdbToJson(MovieDetailsTmdb instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'budget': instance.budget,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdb_id': instance.imdbId,
      'origin_country': instance.originCountry,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
    };
