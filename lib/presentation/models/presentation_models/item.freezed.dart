// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemPresentationModel {
  Item get object => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  bool get hovered => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemPresentationModelCopyWith<ItemPresentationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemPresentationModelCopyWith<$Res> {
  factory $ItemPresentationModelCopyWith(ItemPresentationModel value,
          $Res Function(ItemPresentationModel) then) =
      _$ItemPresentationModelCopyWithImpl<$Res, ItemPresentationModel>;
  @useResult
  $Res call({Item object, bool selected, bool hovered});
}

/// @nodoc
class _$ItemPresentationModelCopyWithImpl<$Res,
        $Val extends ItemPresentationModel>
    implements $ItemPresentationModelCopyWith<$Res> {
  _$ItemPresentationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = null,
    Object? selected = null,
    Object? hovered = null,
  }) {
    return _then(_value.copyWith(
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as Item,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      hovered: null == hovered
          ? _value.hovered
          : hovered // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemPresentaionModelImplCopyWith<$Res>
    implements $ItemPresentationModelCopyWith<$Res> {
  factory _$$ItemPresentaionModelImplCopyWith(_$ItemPresentaionModelImpl value,
          $Res Function(_$ItemPresentaionModelImpl) then) =
      __$$ItemPresentaionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Item object, bool selected, bool hovered});
}

/// @nodoc
class __$$ItemPresentaionModelImplCopyWithImpl<$Res>
    extends _$ItemPresentationModelCopyWithImpl<$Res,
        _$ItemPresentaionModelImpl>
    implements _$$ItemPresentaionModelImplCopyWith<$Res> {
  __$$ItemPresentaionModelImplCopyWithImpl(_$ItemPresentaionModelImpl _value,
      $Res Function(_$ItemPresentaionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = null,
    Object? selected = null,
    Object? hovered = null,
  }) {
    return _then(_$ItemPresentaionModelImpl(
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as Item,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      hovered: null == hovered
          ? _value.hovered
          : hovered // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ItemPresentaionModelImpl implements _ItemPresentaionModel {
  const _$ItemPresentaionModelImpl(
      {required this.object, required this.selected, required this.hovered});

  @override
  final Item object;
  @override
  final bool selected;
  @override
  final bool hovered;

  @override
  String toString() {
    return 'ItemPresentationModel(object: $object, selected: $selected, hovered: $hovered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemPresentaionModelImpl &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.hovered, hovered) || other.hovered == hovered));
  }

  @override
  int get hashCode => Object.hash(runtimeType, object, selected, hovered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemPresentaionModelImplCopyWith<_$ItemPresentaionModelImpl>
      get copyWith =>
          __$$ItemPresentaionModelImplCopyWithImpl<_$ItemPresentaionModelImpl>(
              this, _$identity);
}

abstract class _ItemPresentaionModel implements ItemPresentationModel {
  const factory _ItemPresentaionModel(
      {required final Item object,
      required final bool selected,
      required final bool hovered}) = _$ItemPresentaionModelImpl;

  @override
  Item get object;
  @override
  bool get selected;
  @override
  bool get hovered;
  @override
  @JsonKey(ignore: true)
  _$$ItemPresentaionModelImplCopyWith<_$ItemPresentaionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
