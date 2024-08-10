// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm3u_playlist.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetM3UPlaylistCollection on Isar {
  IsarCollection<M3UPlaylist> get m3UPlaylists => this.collection();
}

const M3UPlaylistSchema = CollectionSchema(
  name: r'M3UPlaylist',
  id: -1340454130083766844,
  properties: {
    r'active': PropertySchema(
      id: 0,
      name: r'active',
      type: IsarType.bool,
    ),
    r'connected': PropertySchema(
      id: 1,
      name: r'connected',
      type: IsarType.bool,
    ),
    r'epgUrl': PropertySchema(
      id: 2,
      name: r'epgUrl',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 3,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.string,
    ),
    r'isProtected': PropertySchema(
      id: 5,
      name: r'isProtected',
      type: IsarType.bool,
    ),
    r'isarExpiary': PropertySchema(
      id: 6,
      name: r'isarExpiary',
      type: IsarType.long,
    ),
    r'originType': PropertySchema(
      id: 7,
      name: r'originType',
      type: IsarType.string,
    ),
    r'originUrl': PropertySchema(
      id: 8,
      name: r'originUrl',
      type: IsarType.string,
    ),
    r'password': PropertySchema(
      id: 9,
      name: r'password',
      type: IsarType.string,
    ),
    r'playlistName': PropertySchema(
      id: 10,
      name: r'playlistName',
      type: IsarType.string,
    ),
    r'playlistType': PropertySchema(
      id: 11,
      name: r'playlistType',
      type: IsarType.string,
    ),
    r'url': PropertySchema(
      id: 12,
      name: r'url',
      type: IsarType.string,
    ),
    r'username': PropertySchema(
      id: 13,
      name: r'username',
      type: IsarType.string,
    )
  },
  estimateSize: _m3UPlaylistEstimateSize,
  serialize: _m3UPlaylistSerialize,
  deserialize: _m3UPlaylistDeserialize,
  deserializeProp: _m3UPlaylistDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _m3UPlaylistGetId,
  getLinks: _m3UPlaylistGetLinks,
  attach: _m3UPlaylistAttach,
  version: '3.1.0+1',
);

int _m3UPlaylistEstimateSize(
  M3UPlaylist object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.epgUrl.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.originType.length * 3;
  bytesCount += 3 + object.originUrl.length * 3;
  bytesCount += 3 + object.password.length * 3;
  bytesCount += 3 + object.playlistName.length * 3;
  bytesCount += 3 + object.playlistType.length * 3;
  bytesCount += 3 + object.url.length * 3;
  bytesCount += 3 + object.username.length * 3;
  return bytesCount;
}

void _m3UPlaylistSerialize(
  M3UPlaylist object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.active);
  writer.writeBool(offsets[1], object.connected);
  writer.writeString(offsets[2], object.epgUrl);
  writer.writeLong(offsets[3], object.hashCode);
  writer.writeString(offsets[4], object.id);
  writer.writeBool(offsets[5], object.isProtected);
  writer.writeLong(offsets[6], object.isarExpiary);
  writer.writeString(offsets[7], object.originType);
  writer.writeString(offsets[8], object.originUrl);
  writer.writeString(offsets[9], object.password);
  writer.writeString(offsets[10], object.playlistName);
  writer.writeString(offsets[11], object.playlistType);
  writer.writeString(offsets[12], object.url);
  writer.writeString(offsets[13], object.username);
}

M3UPlaylist _m3UPlaylistDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = M3UPlaylist(
    epgUrl: reader.readString(offsets[2]),
    id: reader.readString(offsets[4]),
    isProtected: reader.readBool(offsets[5]),
    originType: reader.readString(offsets[7]),
    originUrl: reader.readString(offsets[8]),
    password: reader.readString(offsets[9]),
    playlistName: reader.readString(offsets[10]),
    playlistType: reader.readString(offsets[11]),
    url: reader.readString(offsets[12]),
    username: reader.readString(offsets[13]),
  );
  object.active = reader.readBool(offsets[0]);
  object.connected = reader.readBool(offsets[1]);
  object.isarExpiary = reader.readLong(offsets[6]);
  return object;
}

P _m3UPlaylistDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _m3UPlaylistGetId(M3UPlaylist object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _m3UPlaylistGetLinks(M3UPlaylist object) {
  return [];
}

void _m3UPlaylistAttach(
    IsarCollection<dynamic> col, Id id, M3UPlaylist object) {}

extension M3UPlaylistQueryWhereSort
    on QueryBuilder<M3UPlaylist, M3UPlaylist, QWhere> {
  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension M3UPlaylistQueryWhere
    on QueryBuilder<M3UPlaylist, M3UPlaylist, QWhereClause> {
  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
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

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterWhereClause> isarIdBetween(
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

extension M3UPlaylistQueryFilter
    on QueryBuilder<M3UPlaylist, M3UPlaylist, QFilterCondition> {
  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> activeEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'active',
        value: value,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      connectedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'connected',
        value: value,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> epgUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'epgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      epgUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'epgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> epgUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'epgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> epgUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'epgUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      epgUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'epgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> epgUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'epgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> epgUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'epgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> epgUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'epgUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      epgUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'epgUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      epgUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'epgUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      hashCodeGreaterThan(
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

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      hashCodeLessThan(
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

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      isProtectedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isProtected',
        value: value,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      isarExpiaryEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarExpiary',
        value: value,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      isarExpiaryGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarExpiary',
        value: value,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      isarExpiaryLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarExpiary',
        value: value,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      isarExpiaryBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarExpiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
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

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originType',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originType',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      originUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> passwordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      passwordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      passwordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> passwordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'password',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      passwordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      passwordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      passwordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> passwordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'password',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'playlistName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'playlistName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistName',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'playlistName',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'playlistType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'playlistType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'playlistType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'playlistType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'playlistType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'playlistType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'playlistType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistType',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      playlistTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'playlistType',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      usernameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      usernameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> usernameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'username',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      usernameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition> usernameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'username',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: '',
      ));
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterFilterCondition>
      usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'username',
        value: '',
      ));
    });
  }
}

extension M3UPlaylistQueryObject
    on QueryBuilder<M3UPlaylist, M3UPlaylist, QFilterCondition> {}

extension M3UPlaylistQueryLinks
    on QueryBuilder<M3UPlaylist, M3UPlaylist, QFilterCondition> {}

extension M3UPlaylistQuerySortBy
    on QueryBuilder<M3UPlaylist, M3UPlaylist, QSortBy> {
  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByConnected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'connected', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByConnectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'connected', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByEpgUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgUrl', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByEpgUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgUrl', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByIsProtected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProtected', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByIsProtectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProtected', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByIsarExpiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarExpiary', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByIsarExpiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarExpiary', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByOriginType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originType', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByOriginTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originType', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByOriginUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originUrl', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByOriginUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originUrl', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByPlaylistName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistName', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy>
      sortByPlaylistNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistName', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByPlaylistType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistType', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy>
      sortByPlaylistTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistType', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> sortByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension M3UPlaylistQuerySortThenBy
    on QueryBuilder<M3UPlaylist, M3UPlaylist, QSortThenBy> {
  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByConnected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'connected', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByConnectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'connected', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByEpgUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgUrl', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByEpgUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgUrl', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByIsProtected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProtected', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByIsProtectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProtected', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByIsarExpiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarExpiary', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByIsarExpiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarExpiary', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByOriginType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originType', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByOriginTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originType', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByOriginUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originUrl', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByOriginUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originUrl', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByPlaylistName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistName', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy>
      thenByPlaylistNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistName', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByPlaylistType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistType', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy>
      thenByPlaylistTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistType', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QAfterSortBy> thenByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension M3UPlaylistQueryWhereDistinct
    on QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> {
  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'active');
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByConnected() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'connected');
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByEpgUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'epgUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByIsProtected() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isProtected');
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByIsarExpiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isarExpiary');
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByOriginType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByOriginUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'password', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByPlaylistName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playlistName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByPlaylistType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playlistType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3UPlaylist, M3UPlaylist, QDistinct> distinctByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'username', caseSensitive: caseSensitive);
    });
  }
}

extension M3UPlaylistQueryProperty
    on QueryBuilder<M3UPlaylist, M3UPlaylist, QQueryProperty> {
  QueryBuilder<M3UPlaylist, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<M3UPlaylist, bool, QQueryOperations> activeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'active');
    });
  }

  QueryBuilder<M3UPlaylist, bool, QQueryOperations> connectedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'connected');
    });
  }

  QueryBuilder<M3UPlaylist, String, QQueryOperations> epgUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'epgUrl');
    });
  }

  QueryBuilder<M3UPlaylist, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<M3UPlaylist, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<M3UPlaylist, bool, QQueryOperations> isProtectedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isProtected');
    });
  }

  QueryBuilder<M3UPlaylist, int, QQueryOperations> isarExpiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarExpiary');
    });
  }

  QueryBuilder<M3UPlaylist, String, QQueryOperations> originTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originType');
    });
  }

  QueryBuilder<M3UPlaylist, String, QQueryOperations> originUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originUrl');
    });
  }

  QueryBuilder<M3UPlaylist, String, QQueryOperations> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'password');
    });
  }

  QueryBuilder<M3UPlaylist, String, QQueryOperations> playlistNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playlistName');
    });
  }

  QueryBuilder<M3UPlaylist, String, QQueryOperations> playlistTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playlistType');
    });
  }

  QueryBuilder<M3UPlaylist, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }

  QueryBuilder<M3UPlaylist, String, QQueryOperations> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'username');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

M3UPlaylist _$M3UPlaylistFromJson(Map<String, dynamic> json) => M3UPlaylist(
      isProtected: AppUtils.intToBool((json['is_protected'] as num).toInt()),
      id: json['id'] as String,
      url: json['url'] as String,
      playlistName: json['playlist_name'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      epgUrl: json['epg_url'] as String,
      playlistType: json['playlist_type'] as String,
      originType: json['origin_type'] as String,
      originUrl: json['origin_url'] as String,
    );

Map<String, dynamic> _$M3UPlaylistToJson(M3UPlaylist instance) =>
    <String, dynamic>{
      'is_protected': AppUtils.boolToInt(instance.isProtected),
      'id': instance.id,
      'url': instance.url,
      'playlist_name': instance.playlistName,
      'username': instance.username,
      'password': instance.password,
      'epg_url': instance.epgUrl,
      'playlist_type': instance.playlistType,
      'origin_type': instance.originType,
      'origin_url': instance.originUrl,
    };
