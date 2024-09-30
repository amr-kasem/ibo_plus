// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCategoryIsarModelCollection on Isar {
  IsarCollection<CategoryIsarModel> get categoryIsarModels => this.collection();
}

const CategoryIsarModelSchema = CollectionSchema(
  name: r'CategoryIsarModel',
  id: -7763797637460357684,
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
    r'hashCode': PropertySchema(
      id: 2,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'parentId': PropertySchema(
      id: 3,
      name: r'parentId',
      type: IsarType.long,
    ),
    r'playlistId': PropertySchema(
      id: 4,
      name: r'playlistId',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 5,
      name: r'type',
      type: IsarType.byte,
      enumMap: _CategoryIsarModeltypeEnumValueMap,
    )
  },
  estimateSize: _categoryIsarModelEstimateSize,
  serialize: _categoryIsarModelSerialize,
  deserialize: _categoryIsarModelDeserialize,
  deserializeProp: _categoryIsarModelDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'categoryId_playlistId': IndexSchema(
      id: -3711201959082582640,
      name: r'categoryId_playlistId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'categoryId',
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
  links: {},
  embeddedSchemas: {},
  getId: _categoryIsarModelGetId,
  getLinks: _categoryIsarModelGetLinks,
  attach: _categoryIsarModelAttach,
  version: '3.1.0+1',
);

int _categoryIsarModelEstimateSize(
  CategoryIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.categoryName.length * 3;
  return bytesCount;
}

void _categoryIsarModelSerialize(
  CategoryIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.categoryId);
  writer.writeString(offsets[1], object.categoryName);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeLong(offsets[3], object.parentId);
  writer.writeLong(offsets[4], object.playlistId);
  writer.writeByte(offsets[5], object.type.index);
}

CategoryIsarModel _categoryIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CategoryIsarModel(
    categoryId: reader.readLong(offsets[0]),
    categoryName: reader.readString(offsets[1]),
    parentId: reader.readLong(offsets[3]),
  );
  object.playlistId = reader.readLong(offsets[4]);
  object.type =
      _CategoryIsarModeltypeValueEnumMap[reader.readByteOrNull(offsets[5])] ??
          CategoryType.liveChannels;
  return object;
}

P _categoryIsarModelDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (_CategoryIsarModeltypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          CategoryType.liveChannels) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _CategoryIsarModeltypeEnumValueMap = {
  'liveChannels': 0,
  'movies': 1,
  'series': 2,
};
const _CategoryIsarModeltypeValueEnumMap = {
  0: CategoryType.liveChannels,
  1: CategoryType.movies,
  2: CategoryType.series,
};

Id _categoryIsarModelGetId(CategoryIsarModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _categoryIsarModelGetLinks(
    CategoryIsarModel object) {
  return [];
}

void _categoryIsarModelAttach(
    IsarCollection<dynamic> col, Id id, CategoryIsarModel object) {}

extension CategoryIsarModelQueryWhereSort
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QWhere> {
  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhere>
      anyCategoryIdPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'categoryId_playlistId'),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhere> anyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'type'),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhere>
      anyPlaylistIdType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'playlistId_type'),
      );
    });
  }
}

extension CategoryIsarModelQueryWhere
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QWhereClause> {
  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      categoryIdEqualToAnyPlaylistId(int categoryId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'categoryId_playlistId',
        value: [categoryId],
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      categoryIdNotEqualToAnyPlaylistId(int categoryId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryId_playlistId',
              lower: [],
              upper: [categoryId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryId_playlistId',
              lower: [categoryId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryId_playlistId',
              lower: [categoryId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryId_playlistId',
              lower: [],
              upper: [categoryId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      categoryIdGreaterThanAnyPlaylistId(
    int categoryId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'categoryId_playlistId',
        lower: [categoryId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      categoryIdLessThanAnyPlaylistId(
    int categoryId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'categoryId_playlistId',
        lower: [],
        upper: [categoryId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      categoryIdBetweenAnyPlaylistId(
    int lowerCategoryId,
    int upperCategoryId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'categoryId_playlistId',
        lower: [lowerCategoryId],
        includeLower: includeLower,
        upper: [upperCategoryId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      categoryIdPlaylistIdEqualTo(int categoryId, int playlistId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'categoryId_playlistId',
        value: [categoryId, playlistId],
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      categoryIdEqualToPlaylistIdNotEqualTo(int categoryId, int playlistId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryId_playlistId',
              lower: [categoryId],
              upper: [categoryId, playlistId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryId_playlistId',
              lower: [categoryId, playlistId],
              includeLower: false,
              upper: [categoryId],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryId_playlistId',
              lower: [categoryId, playlistId],
              includeLower: false,
              upper: [categoryId],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoryId_playlistId',
              lower: [categoryId],
              upper: [categoryId, playlistId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      categoryIdEqualToPlaylistIdGreaterThan(
    int categoryId,
    int playlistId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'categoryId_playlistId',
        lower: [categoryId, playlistId],
        includeLower: include,
        upper: [categoryId],
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      categoryIdEqualToPlaylistIdLessThan(
    int categoryId,
    int playlistId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'categoryId_playlistId',
        lower: [categoryId],
        upper: [categoryId, playlistId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      categoryIdEqualToPlaylistIdBetween(
    int categoryId,
    int lowerPlaylistId,
    int upperPlaylistId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'categoryId_playlistId',
        lower: [categoryId, lowerPlaylistId],
        includeLower: includeLower,
        upper: [categoryId, upperPlaylistId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      typeEqualTo(CategoryType type) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'type',
        value: [type],
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      typeNotEqualTo(CategoryType type) {
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      typeGreaterThan(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      typeLessThan(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      typeBetween(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      playlistIdEqualToAnyType(int playlistId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'playlistId_type',
        value: [playlistId],
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      playlistIdNotEqualToAnyType(int playlistId) {
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      playlistIdGreaterThanAnyType(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      playlistIdLessThanAnyType(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      playlistIdBetweenAnyType(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      playlistIdTypeEqualTo(int playlistId, CategoryType type) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'playlistId_type',
        value: [playlistId, type],
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      playlistIdEqualToTypeGreaterThan(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      playlistIdEqualToTypeLessThan(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterWhereClause>
      playlistIdEqualToTypeBetween(
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

extension CategoryIsarModelQueryFilter
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QFilterCondition> {
  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryIdGreaterThan(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryIdLessThan(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryIdBetween(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryNameEqualTo(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryNameGreaterThan(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryNameLessThan(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryNameBetween(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryNameStartsWith(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryNameEndsWith(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoryName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      categoryNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      hashCodeBetween(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      parentIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      parentIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      parentIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      parentIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      playlistIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistId',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      playlistIdGreaterThan(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      playlistIdLessThan(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      playlistIdBetween(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      typeEqualTo(CategoryType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      typeGreaterThan(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      typeLessThan(
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

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
      typeBetween(
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

extension CategoryIsarModelQueryObject
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QFilterCondition> {}

extension CategoryIsarModelQueryLinks
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QFilterCondition> {}

extension CategoryIsarModelQuerySortBy
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QSortBy> {
  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      sortByCategoryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      sortByCategoryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      sortByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      sortByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      sortByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      sortByPlaylistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension CategoryIsarModelQuerySortThenBy
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QSortThenBy> {
  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByCategoryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByCategoryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByPlaylistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistId', Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
      thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension CategoryIsarModelQueryWhereDistinct
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QDistinct> {
  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QDistinct>
      distinctByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryId');
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QDistinct>
      distinctByCategoryName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QDistinct>
      distinctByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentId');
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QDistinct>
      distinctByPlaylistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playlistId');
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QDistinct>
      distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }
}

extension CategoryIsarModelQueryProperty
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QQueryProperty> {
  QueryBuilder<CategoryIsarModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<CategoryIsarModel, int, QQueryOperations> categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<CategoryIsarModel, String, QQueryOperations>
      categoryNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryName');
    });
  }

  QueryBuilder<CategoryIsarModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<CategoryIsarModel, int, QQueryOperations> parentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentId');
    });
  }

  QueryBuilder<CategoryIsarModel, int, QQueryOperations> playlistIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playlistId');
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryType, QQueryOperations>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
