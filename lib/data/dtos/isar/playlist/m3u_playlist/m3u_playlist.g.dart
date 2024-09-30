// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm3u_playlist.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetM3uPlaylistIsarModelCollection on Isar {
  IsarCollection<M3uPlaylistIsarModel> get m3uPlaylistIsarModels =>
      this.collection();
}

const M3uPlaylistIsarModelSchema = CollectionSchema(
  name: r'M3uPlaylistIsarModel',
  id: 6598386317236361721,
  properties: {
    r'epgUrl': PropertySchema(
      id: 0,
      name: r'epgUrl',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 2,
      name: r'id',
      type: IsarType.string,
    ),
    r'isProtected': PropertySchema(
      id: 3,
      name: r'isProtected',
      type: IsarType.bool,
    ),
    r'originType': PropertySchema(
      id: 4,
      name: r'originType',
      type: IsarType.string,
    ),
    r'originUrl': PropertySchema(
      id: 5,
      name: r'originUrl',
      type: IsarType.string,
    ),
    r'password': PropertySchema(
      id: 6,
      name: r'password',
      type: IsarType.string,
    ),
    r'playlistName': PropertySchema(
      id: 7,
      name: r'playlistName',
      type: IsarType.string,
    ),
    r'playlistType': PropertySchema(
      id: 8,
      name: r'playlistType',
      type: IsarType.string,
    ),
    r'url': PropertySchema(
      id: 9,
      name: r'url',
      type: IsarType.string,
    ),
    r'username': PropertySchema(
      id: 10,
      name: r'username',
      type: IsarType.string,
    )
  },
  estimateSize: _m3uPlaylistIsarModelEstimateSize,
  serialize: _m3uPlaylistIsarModelSerialize,
  deserialize: _m3uPlaylistIsarModelDeserialize,
  deserializeProp: _m3uPlaylistIsarModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _m3uPlaylistIsarModelGetId,
  getLinks: _m3uPlaylistIsarModelGetLinks,
  attach: _m3uPlaylistIsarModelAttach,
  version: '3.1.0+1',
);

int _m3uPlaylistIsarModelEstimateSize(
  M3uPlaylistIsarModel object,
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

void _m3uPlaylistIsarModelSerialize(
  M3uPlaylistIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.epgUrl);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeString(offsets[2], object.id);
  writer.writeBool(offsets[3], object.isProtected);
  writer.writeString(offsets[4], object.originType);
  writer.writeString(offsets[5], object.originUrl);
  writer.writeString(offsets[6], object.password);
  writer.writeString(offsets[7], object.playlistName);
  writer.writeString(offsets[8], object.playlistType);
  writer.writeString(offsets[9], object.url);
  writer.writeString(offsets[10], object.username);
}

M3uPlaylistIsarModel _m3uPlaylistIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = M3uPlaylistIsarModel(
    epgUrl: reader.readString(offsets[0]),
    id: reader.readString(offsets[2]),
    isProtected: reader.readBool(offsets[3]),
    originType: reader.readString(offsets[4]),
    originUrl: reader.readString(offsets[5]),
    password: reader.readString(offsets[6]),
    playlistName: reader.readString(offsets[7]),
    playlistType: reader.readString(offsets[8]),
    url: reader.readString(offsets[9]),
    username: reader.readString(offsets[10]),
  );
  return object;
}

P _m3uPlaylistIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _m3uPlaylistIsarModelGetId(M3uPlaylistIsarModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _m3uPlaylistIsarModelGetLinks(
    M3uPlaylistIsarModel object) {
  return [];
}

void _m3uPlaylistIsarModelAttach(
    IsarCollection<dynamic> col, Id id, M3uPlaylistIsarModel object) {}

extension M3uPlaylistIsarModelQueryWhereSort
    on QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QWhere> {
  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterWhere>
      anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension M3uPlaylistIsarModelQueryWhere
    on QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QWhereClause> {
  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterWhereClause>
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterWhereClause>
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

extension M3uPlaylistIsarModelQueryFilter on QueryBuilder<M3uPlaylistIsarModel,
    M3uPlaylistIsarModel, QFilterCondition> {
  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> epgUrlEqualTo(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> epgUrlGreaterThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> epgUrlLessThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> epgUrlBetween(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> epgUrlStartsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> epgUrlEndsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      epgUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'epgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      epgUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'epgUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> epgUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'epgUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> epgUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'epgUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> isProtectedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isProtected',
        value: value,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originTypeEqualTo(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originTypeGreaterThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originTypeLessThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originTypeBetween(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originTypeStartsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originTypeEndsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      originTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      originTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originType',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originType',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originUrlEqualTo(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originUrlGreaterThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originUrlLessThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originUrlBetween(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originUrlStartsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originUrlEndsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      originUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      originUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> originUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> passwordEqualTo(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> passwordGreaterThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> passwordLessThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> passwordBetween(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> passwordStartsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> passwordEndsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      passwordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      passwordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'password',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistNameEqualTo(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistNameGreaterThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistNameLessThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistNameBetween(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistNameStartsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistNameEndsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      playlistNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      playlistNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'playlistName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistName',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'playlistName',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistTypeEqualTo(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistTypeGreaterThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistTypeLessThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistTypeBetween(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistTypeStartsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistTypeEndsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      playlistTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'playlistType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      playlistTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'playlistType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistType',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> playlistTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'playlistType',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> urlEqualTo(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> urlGreaterThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> urlLessThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> urlBetween(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> urlStartsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> urlEndsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      urlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      urlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> usernameEqualTo(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> usernameGreaterThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> usernameLessThan(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> usernameBetween(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> usernameStartsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> usernameEndsWith(
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

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      usernameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
          QAfterFilterCondition>
      usernameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'username',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: '',
      ));
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel,
      QAfterFilterCondition> usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'username',
        value: '',
      ));
    });
  }
}

extension M3uPlaylistIsarModelQueryObject on QueryBuilder<M3uPlaylistIsarModel,
    M3uPlaylistIsarModel, QFilterCondition> {}

extension M3uPlaylistIsarModelQueryLinks on QueryBuilder<M3uPlaylistIsarModel,
    M3uPlaylistIsarModel, QFilterCondition> {}

extension M3uPlaylistIsarModelQuerySortBy
    on QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QSortBy> {
  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByEpgUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgUrl', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByEpgUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgUrl', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByIsProtected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProtected', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByIsProtectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProtected', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByOriginType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originType', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByOriginTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originType', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByOriginUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originUrl', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByOriginUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originUrl', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByPlaylistName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistName', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByPlaylistNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistName', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByPlaylistType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistType', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByPlaylistTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistType', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      sortByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension M3uPlaylistIsarModelQuerySortThenBy
    on QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QSortThenBy> {
  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByEpgUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgUrl', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByEpgUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epgUrl', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByIsProtected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProtected', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByIsProtectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProtected', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByOriginType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originType', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByOriginTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originType', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByOriginUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originUrl', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByOriginUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originUrl', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByPlaylistName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistName', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByPlaylistNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistName', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByPlaylistType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistType', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByPlaylistTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistType', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QAfterSortBy>
      thenByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension M3uPlaylistIsarModelQueryWhereDistinct
    on QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QDistinct> {
  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QDistinct>
      distinctByEpgUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'epgUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QDistinct>
      distinctById({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QDistinct>
      distinctByIsProtected() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isProtected');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QDistinct>
      distinctByOriginType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QDistinct>
      distinctByOriginUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QDistinct>
      distinctByPassword({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'password', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QDistinct>
      distinctByPlaylistName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playlistName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QDistinct>
      distinctByPlaylistType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playlistType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QDistinct>
      distinctByUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, M3uPlaylistIsarModel, QDistinct>
      distinctByUsername({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'username', caseSensitive: caseSensitive);
    });
  }
}

extension M3uPlaylistIsarModelQueryProperty on QueryBuilder<
    M3uPlaylistIsarModel, M3uPlaylistIsarModel, QQueryProperty> {
  QueryBuilder<M3uPlaylistIsarModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, String, QQueryOperations>
      epgUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'epgUrl');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, bool, QQueryOperations>
      isProtectedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isProtected');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, String, QQueryOperations>
      originTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originType');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, String, QQueryOperations>
      originUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originUrl');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, String, QQueryOperations>
      passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'password');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, String, QQueryOperations>
      playlistNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playlistName');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, String, QQueryOperations>
      playlistTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playlistType');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }

  QueryBuilder<M3uPlaylistIsarModel, String, QQueryOperations>
      usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'username');
    });
  }
}
