// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'world_time_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorldTimeApi _$WorldTimeApiFromJson(Map<String, dynamic> json) => WorldTimeApi(
      abbreviation: json['abbreviation'] as String?,
      clientIp: json['clientIp'] as String?,
      datetime: json['datetime'] as String?,
      dayOfWeek: json['dayOfWeek'] as int?,
      dayOfYear: json['dayOfYear'] as int?,
      dst: json['dst'] as bool?,
      dstFrom: json['dstFrom'] as String?,
      dstOffset: json['dstOffset'] as int?,
      dstUntil: json['dstUntil'] as String?,
      rawOffset: json['rawOffset'] as int?,
      timezone: json['timezone'] as String?,
      unixtime: json['unixtime'] as int?,
      utcDatetime: json['utcDatetime'] as String?,
      utcOffset: json['utcOffset'] as String?,
      weekNumber: json['weekNumber'] as int?,
    );

Map<String, dynamic> _$WorldTimeApiToJson(WorldTimeApi instance) =>
    <String, dynamic>{
      'abbreviation': instance.abbreviation,
      'clientIp': instance.clientIp,
      'datetime': instance.datetime,
      'dayOfWeek': instance.dayOfWeek,
      'dayOfYear': instance.dayOfYear,
      'dst': instance.dst,
      'dstFrom': instance.dstFrom,
      'dstOffset': instance.dstOffset,
      'dstUntil': instance.dstUntil,
      'rawOffset': instance.rawOffset,
      'timezone': instance.timezone,
      'unixtime': instance.unixtime,
      'utcDatetime': instance.utcDatetime,
      'utcOffset': instance.utcOffset,
      'weekNumber': instance.weekNumber,
    };
