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
    r'favorite': PropertySchema(
      id: 0,
      name: r'favorite',
      type: IsarType.bool,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'index': PropertySchema(
      id: 2,
      name: r'index',
      type: IsarType.long,
    ),
    r'lastUpdated': PropertySchema(
      id: 3,
      name: r'lastUpdated',
      type: IsarType.dateTime,
    ),
    r'locked': PropertySchema(
      id: 4,
      name: r'locked',
      type: IsarType.bool,
    )
  },
  estimateSize: _categoryMetadataIsarModelEstimateSize,
  serialize: _categoryMetadataIsarModelSerialize,
  deserialize: _categoryMetadataIsarModelDeserialize,
  deserializeProp: _categoryMetadataIsarModelDeserializeProp,
  idName: r'cateogy',
  indexes: {},
  links: {},
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
  return bytesCount;
}

void _categoryMetadataIsarModelSerialize(
  CategoryMetadataIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.favorite);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeLong(offsets[2], object.index);
  writer.writeDateTime(offsets[3], object.lastUpdated);
  writer.writeBool(offsets[4], object.locked);
}

CategoryMetadataIsarModel _categoryMetadataIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CategoryMetadataIsarModel(
    cateogy: id,
    favorite: reader.readBoolOrNull(offsets[0]) ?? false,
    index: reader.readLong(offsets[2]),
    lastUpdated: reader.readDateTime(offsets[3]),
    locked: reader.readBoolOrNull(offsets[4]) ?? false,
  );
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
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _categoryMetadataIsarModelGetId(CategoryMetadataIsarModel object) {
  return object.cateogy;
}

List<IsarLinkBase<dynamic>> _categoryMetadataIsarModelGetLinks(
    CategoryMetadataIsarModel object) {
  return [];
}

void _categoryMetadataIsarModelAttach(
    IsarCollection<dynamic> col, Id id, CategoryMetadataIsarModel object) {}

extension CategoryMetadataIsarModelQueryWhereSort on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QWhere> {
  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhere> anyCateogy() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CategoryMetadataIsarModelQueryWhere on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QWhereClause> {
  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> cateogyEqualTo(Id cateogy) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: cateogy,
        upper: cateogy,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> cateogyNotEqualTo(Id cateogy) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: cateogy, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: cateogy, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: cateogy, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: cateogy, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
          QAfterWhereClause>
      cateogyGreaterThan(Id cateogy, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: cateogy, includeLower: include),
      );
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> cateogyLessThan(Id cateogy, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: cateogy, includeUpper: include),
      );
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterWhereClause> cateogyBetween(
    Id lowerCateogy,
    Id upperCateogy, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerCateogy,
        includeLower: includeLower,
        upper: upperCateogy,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CategoryMetadataIsarModelQueryFilter on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QFilterCondition> {
  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> cateogyEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cateogy',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> cateogyGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cateogy',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> cateogyLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cateogy',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterFilterCondition> cateogyBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cateogy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
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
}

extension CategoryMetadataIsarModelQueryObject on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QFilterCondition> {}

extension CategoryMetadataIsarModelQueryLinks on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QFilterCondition> {}

extension CategoryMetadataIsarModelQuerySortBy on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QSortBy> {
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
}

extension CategoryMetadataIsarModelQuerySortThenBy on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QSortThenBy> {
  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByCateogy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cateogy', Sort.asc);
    });
  }

  QueryBuilder<CategoryMetadataIsarModel, CategoryMetadataIsarModel,
      QAfterSortBy> thenByCateogyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cateogy', Sort.desc);
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
}

extension CategoryMetadataIsarModelQueryWhereDistinct on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QDistinct> {
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
}

extension CategoryMetadataIsarModelQueryProperty on QueryBuilder<
    CategoryMetadataIsarModel, CategoryMetadataIsarModel, QQueryProperty> {
  QueryBuilder<CategoryMetadataIsarModel, int, QQueryOperations>
      cateogyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cateogy');
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
}
