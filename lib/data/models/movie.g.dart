// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMovieCollection on Isar {
  IsarCollection<Movie> get movies => this.collection();
}

const MovieSchema = CollectionSchema(
  name: r'Movie',
  id: 693552702131689691,
  properties: {
    r'added': PropertySchema(
      id: 0,
      name: r'added',
      type: IsarType.string,
    ),
    r'categoryId': PropertySchema(
      id: 1,
      name: r'categoryId',
      type: IsarType.long,
    ),
    r'containerExtension': PropertySchema(
      id: 2,
      name: r'containerExtension',
      type: IsarType.string,
    ),
    r'customSid': PropertySchema(
      id: 3,
      name: r'customSid',
      type: IsarType.long,
    ),
    r'hashCode': PropertySchema(
      id: 4,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'isFavorite': PropertySchema(
      id: 5,
      name: r'isFavorite',
      type: IsarType.bool,
    ),
    r'movieNum': PropertySchema(
      id: 6,
      name: r'movieNum',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'playlistId': PropertySchema(
      id: 8,
      name: r'playlistId',
      type: IsarType.long,
    ),
    r'rating': PropertySchema(
      id: 9,
      name: r'rating',
      type: IsarType.double,
    ),
    r'rating5Based': PropertySchema(
      id: 10,
      name: r'rating5Based',
      type: IsarType.double,
    ),
    r'streamIcon': PropertySchema(
      id: 11,
      name: r'streamIcon',
      type: IsarType.string,
    ),
    r'streamId': PropertySchema(
      id: 12,
      name: r'streamId',
      type: IsarType.long,
    ),
    r'streamType': PropertySchema(
      id: 13,
      name: r'streamType',
      type: IsarType.string,
    )
  },
  estimateSize: _movieEstimateSize,
  serialize: _movieSerialize,
  deserialize: _movieDeserialize,
  deserializeProp: _movieDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'streamId_playlistId': IndexSchema(
      id: -5265473376930852151,
      name: r'streamId_playlistId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'streamId',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'playlistId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'playlistId': IndexSchema(
      id: 7921918076105486368,
      name: r'playlistId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'playlistId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _movieGetId,
  getLinks: _movieGetLinks,
  attach: _movieAttach,
  version: '3.1.0+1',
);

int _movieEstimateSize(
  Movie object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.added;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.containerExtension;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.streamIcon;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.streamType.length * 3;
  return bytesCount;
}

void _movieSerialize(
  Movie object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.added);
  writer.writeLong(offsets[1], object.categoryId);
  writer.writeString(offsets[2], object.containerExtension);
  writer.writeLong(offsets[3], object.customSid);
  writer.writeLong(offsets[4], object.hashCode);
  writer.writeBool(offsets[5], object.isFavorite);
  writer.writeLong(offsets[6], object.movieNum);
  writer.writeString(offsets[7], object.name);
  writer.writeLong(offsets[8], object.playlistId);
  writer.writeDouble(offsets[9], object.rating);
  writer.writeDouble(offsets[10], object.rating5Based);
  writer.writeString(offsets[11], object.streamIcon);
  writer.writeLong(offsets[12], object.streamId);
  writer.writeString(offsets[13], object.streamType);
}

Movie _movieDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Movie(
    added: reader.readStringOrNull(offsets[0]),
    categoryId: reader.readLongOrNull(offsets[1]),
    containerExtension: reader.readStringOrNull(offsets[2]),
    customSid: reader.readLongOrNull(offsets[3]),
    isFavorite: reader.readBoolOrNull(offsets[5]) ?? false,
    movieNum: reader.readLongOrNull(offsets[6]),
    name: reader.readString(offsets[7]),
    rating: reader.readDoubleOrNull(offsets[9]),
    rating5Based: reader.readDoubleOrNull(offsets[10]),
    streamIcon: reader.readStringOrNull(offsets[11]),
    streamId: reader.readLong(offsets[12]),
    streamType: reader.readString(offsets[13]),
  );
  object.playlistId = reader.readLong(offsets[8]);
  return object;
}

P _movieDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _movieGetId(Movie object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _movieGetLinks(Movie object) {
  return [];
}

void _movieAttach(IsarCollection<dynamic> col, Id id, Movie object) {}

extension MovieQueryWhereSort on QueryBuilder<Movie, Movie, QWhere> {
  QueryBuilder<Movie, Movie, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhere> anyStreamIdPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'streamId_playlistId'),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhere> anyPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'playlistId'),
      );
    });
  }
}

extension MovieQueryWhere on QueryBuilder<Movie, Movie, QWhereClause> {
  QueryBuilder<Movie, Movie, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
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

  QueryBuilder<Movie, Movie, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> isarIdBetween(
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

  QueryBuilder<Movie, Movie, QAfterWhereClause> streamIdEqualToAnyPlaylistId(
      int streamId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'streamId_playlistId',
        value: [streamId],
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> streamIdNotEqualToAnyPlaylistId(
      int streamId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [],
              upper: [streamId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [streamId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [streamId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [],
              upper: [streamId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause>
      streamIdGreaterThanAnyPlaylistId(
    int streamId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'streamId_playlistId',
        lower: [streamId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> streamIdLessThanAnyPlaylistId(
    int streamId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'streamId_playlistId',
        lower: [],
        upper: [streamId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> streamIdBetweenAnyPlaylistId(
    int lowerStreamId,
    int upperStreamId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'streamId_playlistId',
        lower: [lowerStreamId],
        includeLower: includeLower,
        upper: [upperStreamId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> streamIdPlaylistIdEqualTo(
      int streamId, int playlistId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'streamId_playlistId',
        value: [streamId, playlistId],
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause>
      streamIdEqualToPlaylistIdNotEqualTo(int streamId, int playlistId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [streamId],
              upper: [streamId, playlistId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [streamId, playlistId],
              includeLower: false,
              upper: [streamId],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [streamId, playlistId],
              includeLower: false,
              upper: [streamId],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'streamId_playlistId',
              lower: [streamId],
              upper: [streamId, playlistId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause>
      streamIdEqualToPlaylistIdGreaterThan(
    int streamId,
    int playlistId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'streamId_playlistId',
        lower: [streamId, playlistId],
        includeLower: include,
        upper: [streamId],
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause>
      streamIdEqualToPlaylistIdLessThan(
    int streamId,
    int playlistId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'streamId_playlistId',
        lower: [streamId],
        upper: [streamId, playlistId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause>
      streamIdEqualToPlaylistIdBetween(
    int streamId,
    int lowerPlaylistId,
    int upperPlaylistId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'streamId_playlistId',
        lower: [streamId, lowerPlaylistId],
        includeLower: includeLower,
        upper: [streamId, upperPlaylistId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> playlistIdEqualTo(
      int playlistId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'playlistId',
        value: [playlistId],
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> playlistIdNotEqualTo(
      int playlistId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId',
              lower: [],
              upper: [playlistId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId',
              lower: [playlistId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId',
              lower: [playlistId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId',
              lower: [],
              upper: [playlistId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> playlistIdGreaterThan(
    int playlistId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'playlistId',
        lower: [playlistId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> playlistIdLessThan(
    int playlistId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'playlistId',
        lower: [],
        upper: [playlistId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> playlistIdBetween(
    int lowerPlaylistId,
    int upperPlaylistId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'playlistId',
        lower: [lowerPlaylistId],
        includeLower: includeLower,
        upper: [upperPlaylistId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MovieQueryFilter on QueryBuilder<Movie, Movie, QFilterCondition> {
  QueryBuilder<Movie, Movie, QAfterFilterCondition> addedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'added',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> addedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'added',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> addedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> addedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> addedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> addedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'added',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> addedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> addedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> addedContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'added',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> addedMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'added',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> addedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'added',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> addedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'added',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> containerExtensionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'containerExtension',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      containerExtensionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'containerExtension',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> containerExtensionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'containerExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      containerExtensionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'containerExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> containerExtensionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'containerExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> containerExtensionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'containerExtension',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      containerExtensionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'containerExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> containerExtensionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'containerExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> containerExtensionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'containerExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> containerExtensionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'containerExtension',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      containerExtensionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'containerExtension',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      containerExtensionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'containerExtension',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> customSidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customSid',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> customSidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customSid',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> customSidEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customSid',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> customSidGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customSid',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> customSidLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customSid',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> customSidBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customSid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<Movie, Movie, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<Movie, Movie, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Movie, Movie, QAfterFilterCondition> isFavoriteEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFavorite',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> isarIdGreaterThan(
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

  QueryBuilder<Movie, Movie, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<Movie, Movie, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<Movie, Movie, QAfterFilterCondition> movieNumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'movieNum',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> movieNumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'movieNum',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> movieNumEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'movieNum',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> movieNumGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'movieNum',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> movieNumLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'movieNum',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> movieNumBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'movieNum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> playlistIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> playlistIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'playlistId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> playlistIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'playlistId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> playlistIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'playlistId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> ratingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rating',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> ratingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rating',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> ratingEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rating',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> ratingGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rating',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> ratingLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rating',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> ratingBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rating',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> rating5BasedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rating5Based',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> rating5BasedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rating5Based',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> rating5BasedEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rating5Based',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> rating5BasedGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rating5Based',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> rating5BasedLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rating5Based',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> rating5BasedBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rating5Based',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIconIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'streamIcon',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIconIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'streamIcon',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIconEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIconGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIconLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIconBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streamIcon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIconContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'streamIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIconMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'streamIcon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'streamIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streamId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streamId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streamId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streamType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'streamType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'streamType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamType',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> streamTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'streamType',
        value: '',
      ));
    });
  }
}

extension MovieQueryObject on QueryBuilder<Movie, Movie, QFilterCondition> {}

extension MovieQueryLinks on QueryBuilder<Movie, Movie, QFilterCondition> {}

extension MovieQuerySortBy on QueryBuilder<Movie, Movie, QSortBy> {
  QueryBuilder<Movie, Movie, QAfterSortBy> sortByAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'added', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'added', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByContainerExtension() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'containerExtension', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByContainerExtensionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'containerExtension', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByCustomSid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customSid', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByCustomSidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customSid', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByMovieNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'movieNum', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByMovieNumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'movieNum', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByPlaylistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByRating5Based() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating5Based', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByRating5BasedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating5Based', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByStreamIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamIcon', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByStreamIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamIcon', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByStreamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamId', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByStreamIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamId', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByStreamType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamType', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByStreamTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamType', Sort.desc);
    });
  }
}

extension MovieQuerySortThenBy on QueryBuilder<Movie, Movie, QSortThenBy> {
  QueryBuilder<Movie, Movie, QAfterSortBy> thenByAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'added', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'added', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByContainerExtension() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'containerExtension', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByContainerExtensionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'containerExtension', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByCustomSid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customSid', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByCustomSidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customSid', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByMovieNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'movieNum', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByMovieNumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'movieNum', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByPlaylistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByRating5Based() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating5Based', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByRating5BasedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating5Based', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByStreamIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamIcon', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByStreamIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamIcon', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByStreamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamId', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByStreamIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamId', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByStreamType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamType', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByStreamTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamType', Sort.desc);
    });
  }
}

extension MovieQueryWhereDistinct on QueryBuilder<Movie, Movie, QDistinct> {
  QueryBuilder<Movie, Movie, QDistinct> distinctByAdded(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'added', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryId');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByContainerExtension(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'containerExtension',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByCustomSid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customSid');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFavorite');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByMovieNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'movieNum');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playlistId');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rating');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByRating5Based() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rating5Based');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByStreamIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streamIcon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByStreamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streamId');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByStreamType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streamType', caseSensitive: caseSensitive);
    });
  }
}

extension MovieQueryProperty on QueryBuilder<Movie, Movie, QQueryProperty> {
  QueryBuilder<Movie, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Movie, String?, QQueryOperations> addedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'added');
    });
  }

  QueryBuilder<Movie, int?, QQueryOperations> categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<Movie, String?, QQueryOperations> containerExtensionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'containerExtension');
    });
  }

  QueryBuilder<Movie, int?, QQueryOperations> customSidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customSid');
    });
  }

  QueryBuilder<Movie, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Movie, bool, QQueryOperations> isFavoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFavorite');
    });
  }

  QueryBuilder<Movie, int?, QQueryOperations> movieNumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'movieNum');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Movie, int, QQueryOperations> playlistIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playlistId');
    });
  }

  QueryBuilder<Movie, double?, QQueryOperations> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rating');
    });
  }

  QueryBuilder<Movie, double?, QQueryOperations> rating5BasedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rating5Based');
    });
  }

  QueryBuilder<Movie, String?, QQueryOperations> streamIconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streamIcon');
    });
  }

  QueryBuilder<Movie, int, QQueryOperations> streamIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streamId');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> streamTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streamType');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      movieNum: (json['num'] as num?)?.toInt(),
      name: json['name'] as String,
      streamType: json['stream_type'] as String,
      streamId: (json['stream_id'] as num).toInt(),
      streamIcon: json['stream_icon'] as String?,
      rating: AppUtils.toDouble(json['rating']),
      rating5Based: (json['rating5_based'] as num?)?.toDouble(),
      added: json['added'] as String?,
      categoryId: AppUtils.toInt(json['category_id']),
      containerExtension: json['container_extension'] as String? ?? "mp4",
      customSid: AppUtils.toInt(json['custom_sid']),
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'num': instance.movieNum,
      'name': instance.name,
      'stream_type': instance.streamType,
      'stream_id': instance.streamId,
      'stream_icon': instance.streamIcon,
      'rating': AppUtils.numToString(instance.rating),
      'rating5_based': instance.rating5Based,
      'added': instance.added,
      'category_id': AppUtils.numToString(instance.categoryId),
      'container_extension': instance.containerExtension,
      'custom_sid': AppUtils.numToString(instance.customSid),
    };
