// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      registerd: json['mac_registered'] as bool,
      hasOwnPlaylist: json['has_own_playlist'] as bool,
      trialDays: (json['trial_days'] as num).toInt(),
      pin: json['parent_pin'] as String,
      isTrial: const NullableIntToBoolSerializer()
          .fromJson((json['is_trial'] as num).toInt()),
      expirayDate: DateTime.parse(json['expiray_date'] as String),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'mac_registered': instance.registerd,
      'has_own_playlist': instance.hasOwnPlaylist,
      'trial_days': instance.trialDays,
      'parent_pin': instance.pin,
      'is_trial': const NullableIntToBoolSerializer().toJson(instance.isTrial),
      'expiray_date': instance.expirayDate.toIso8601String(),
    };
