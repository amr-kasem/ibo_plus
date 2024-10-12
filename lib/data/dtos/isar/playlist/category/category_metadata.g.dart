// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_metadata.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCategoryMetadataIsarModelCollection on Isar {
  IsarCollection<CategoryMetadataIsarModel> get categoryMetadataIsarModels =>
      this.collection();
}

const CategoryMetadataIsarModelSchema = CollectionSchema(
  name: r'CategoryMetadataIsarModel',
  id: 1233986746347685076,
  properties: {
    r'categoryId': PropertySchema(
      id: 0,
      name: r'categoryId',
      type: IsarType.long,
    ),
    r'categoryName': PropertySchema(
      id: 1,
      name: r'categoryName',
      type: IsarType.string,
    ),
    r'favorite': PropertySchema(
      id: 2,
      name: r'favorite',
      type: IsarType.bool,
    ),
    r'hashCode': PropertySchema(
      id: 3,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'index': PropertySchema(
      id: 4,
      name: r'index',
      type: IsarType.long,
    ),
    r'lastUpdated': PropertySchema(
      id: 5,
      name: r'lastUpdated',
      type: IsarType.dateTime,
    ),
    r'locked': PropertySchema(
      id: 6,
      name: r'locked',
      type: IsarType.bool,
    ),
    r'playlistId': PropertySchema(
      id: 7,
      name: r'playlistId',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 8,
      name: r'type',
      type: IsarType.byte,
      enumMap: _CategoryMetadataIsarModeltypeEnumValueMap,
    )
  },
  estimateSize: _categoryMetadataIsarModelEstimateSize,
  serialize: _categoryMetadataIsarModelSerialize,
  deserialize: _categoryMetadataIsarModelDeserialize,
  deserializeProp: _categoryMetadataIsarModelDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'type': IndexSchema(
      id: 5117122708147080838,
      name: r'type',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'type',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'playlistId_type': IndexSchema(
      id: -9190797914089246011,
      name: r'playlistId_type',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'playlistId',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'type',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'category': LinkSchema(
      id: -1669282490264125891,
      name: r'category',
      target: r'CategoryIsarModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _categoryMetadataIsarModelGetId,
  getLinks: _categoryMetadataIsarModelGetLinks,
  attach: _categoryMetadataIsarModelAttach,
  version: '3.1.0+1',
);

int _categoryMetadataIsarModelEstimateSize(
  CategoryMetadataIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.categoryName.length * 3;
  return bytesCount;
}

void _categoryMetadataIsarModelSerialize(
  CategoryMetadataIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.categoryId);
  writer.writeString(offsets[1], object.categoryName);
  writer.writeBool(offsets[2], object.favorite);
  writer.writeLong(offsets[3], object.hashCode);
  writer.writeLong(offsets[4], object.index);
  writer.writeDateTime(offsets[5], object.lastUpdated);
  writer.writeBool(offsets[6], object.locked);
  writer.writeLong(offsets[7], object.playlistId);
  writer.writeByte(offsets[8], object.type.index);
}

CategoryMetadataIsarModel _categoryMetadataIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CategoryMetadataIsarModel(
    categoryId: reader.readLong(offsets[0]),
    categoryName: reader.readString(offsets[1]),
    favorite: reader.readBoolOrNull(offsets[2]) ?? false,
    index: reader.readLong(offsets[4]),
    lastUpdated: reader.readDateTime(offsets[5]),
    locked: reader.readBoolOrNull(offsets[6]) ?? false,
    type: _CategoryMetadataIsarModeltypeValueEnumMap[
            reader.readByteOrNull(offsets[8])] ??
        CategoryType.liveChannels,
  );
  object.playlistId = reader.readLong(offsets[7]);
  return object;
}

P _categoryMetadataIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (_CategoryMetadataIsarModeltypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          CategoryType.liveChannels) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _CategoryMetadataIsarModeltypeEnumValueMap = {
  'liveChannels': 0,
  'movies': 1,
  'series': 2,
};
const _CategoryMetadataIsarModeltypeValueEnumMap = {
  0: CategoryType.liveChannels,
  1: CategoryType.movies,
  2: CategoryType.series,
};

Id _categoryMetadataIsarModelGetId(CategoryMetadataIsarModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _categoryMetadataIsarModelGetLinks(
    CategoryMetadataIsarModel object) {
  return [object.category];
}

void _categoryMetadataIsarModelAttach(
    IsarCollection<dynamic> col, Id id, CategoryMetadataIsarModel object) {
  object.category
      .attach(col, col.isar.collection<CategoryIsarModel>(), r'category', id);
}

extension CategoryMetadataIsarModelQueryWhereSort on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QWhere> {
  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhere> anyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'type'),
      );
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhere> anyPlaylistIdType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'playlistId_type'),
      );
    });
  }
}

extension CategoryMetadataIsarModelQueryWhere on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QWhereClause> {
  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> typeEqualTo(CategoryType type) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'type',
        value: [type],
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> typeNotEqualTo(CategoryType type) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'type',
              lower: [],
              upper: [type],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'type',
              lower: [type],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'type',
              lower: [type],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'type',
              lower: [],
              upper: [type],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> typeGreaterThan(
    CategoryType type, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'type',
        lower: [type],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> typeLessThan(
    CategoryType type, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'type',
        lower: [],
        upper: [type],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> typeBetween(
    CategoryType lowerType,
    CategoryType upperType, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'type',
        lower: [lowerType],
        includeLower: includeLower,
        upper: [upperType],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> playlistIdEqualToAnyType(int playlistId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'playlistId_type',
        value: [playlistId],
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> playlistIdNotEqualToAnyType(int playlistId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId_type',
              lower: [],
              upper: [playlistId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId_type',
              lower: [playlistId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId_type',
              lower: [playlistId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId_type',
              lower: [],
              upper: [playlistId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> playlistIdGreaterThanAnyType(
    int playlistId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'playlistId_type',
        lower: [playlistId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> playlistIdLessThanAnyType(
    int playlistId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'playlistId_type',
        lower: [],
        upper: [playlistId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> playlistIdBetweenAnyType(
    int lowerPlaylistId,
    int upperPlaylistId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'playlistId_type',
        lower: [lowerPlaylistId],
        includeLower: includeLower,
        upper: [upperPlaylistId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
          QAfterWhereClause>
      playlistIdTypeEqualTo(int playlistId, CategoryType type) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'playlistId_type',
        value: [playlistId, type],
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
          QAfterWhereClause>
      playlistIdEqualToTypeNotEqualTo(int playlistId, CategoryType type) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId_type',
              lower: [playlistId],
              upper: [playlistId, type],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId_type',
              lower: [playlistId, type],
              includeLower: false,
              upper: [playlistId],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId_type',
              lower: [playlistId, type],
              includeLower: false,
              upper: [playlistId],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlistId_type',
              lower: [playlistId],
              upper: [playlistId, type],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> playlistIdEqualToTypeGreaterThan(
    int playlistId,
    CategoryType type, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'playlistId_type',
        lower: [playlistId, type],
        includeLower: include,
        upper: [playlistId],
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> playlistIdEqualToTypeLessThan(
    int playlistId,
    CategoryType type, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'playlistId_type',
        lower: [playlistId],
        upper: [playlistId, type],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> playlistIdEqualToTypeBetween(
    int playlistId,
    CategoryType lowerType,
    CategoryType upperType, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'playlistId_type',
        lower: [playlistId, lowerType],
        includeLower: includeLower,
        upper: [playlistId, upperType],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CategoryMetadataIsarModelQueryFilter on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QFilterCondition> {
  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryIdGreaterThan(
    int value, {
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryIdLessThan(
    int value, {
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryIdBetween(
    int lower,
    int upper, {
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
          QAfterFilterCondition>
      categoryNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
          QAfterFilterCondition>
      categoryNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoryName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> favoriteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'favorite',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> indexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'index',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> indexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'index',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> indexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'index',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> indexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'index',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> lastUpdatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> lastUpdatedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> lastUpdatedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> lastUpdatedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUpdated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> lockedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locked',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> playlistIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistId',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> playlistIdGreaterThan(
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> playlistIdLessThan(
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> playlistIdBetween(
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

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> typeEqualTo(CategoryType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> typeGreaterThan(
    CategoryType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> typeLessThan(
    CategoryType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> typeBetween(
    CategoryType lower,
    CategoryType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CategoryMetadataIsarModelQueryObject on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QFilterCondition> {}

extension CategoryMetadataIsarModelQueryLinks on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QFilterCondition> {
  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> category(FilterQuery<CategoryIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'category');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> categoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'category', 0, true, 0, true);
    });
  }
}

extension CategoryMetadataIsarModelQuerySortBy on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QSortBy> {
  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByCategoryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByCategoryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'index', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'index', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByLastUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByLocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locked', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByLockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locked', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByPlaylistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension CategoryMetadataIsarModelQuerySortThenBy on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QSortThenBy> {
  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByCategoryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByCategoryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'index', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'index', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByLastUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByLocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locked', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByLockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locked', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByPlaylistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.desc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension CategoryMetadataIsarModelQueryWhereDistinct on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QDistinct> {
  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel, QDistinct>
      distinctByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryId');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel, QDistinct>
      distinctByCategoryName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel, QDistinct>
      distinctByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'favorite');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel, QDistinct>
      distinctByIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'index');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel, QDistinct>
      distinctByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUpdated');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel, QDistinct>
      distinctByLocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locked');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel, QDistinct>
      distinctByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playlistId');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel, QDistinct>
      distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }
}

extension CategoryMetadataIsarModelQueryProperty on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QQueryProperty> {
  QueryBuilder<CategoryMetadataIsarModel, int, QQueryOperations>
      isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, int, QQueryOperations>
      categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, String, QQueryOperations>
      categoryNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryName');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, bool, QQueryOperations>
      favoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'favorite');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, int, QQueryOperations>
      hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, int, QQueryOperations>
      indexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'index');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, DateTime, QQueryOperations>
      lastUpdatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUpdated');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, bool, QQueryOperations>
      lockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locked');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, int, QQueryOperations>
      playlistIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playlistId');
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryType, QQueryOperations>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
