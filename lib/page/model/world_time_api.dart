import 'package:json_annotation/json_annotation.dart';

part 'world_time_api.g.dart';

@JsonSerializable()
class WorldTimeApi {
  String? abbreviation;
  String? clientIp;
  String? datetime;
  int? dayOfWeek;
  int? dayOfYear;
  bool? dst;
  String? dstFrom;
  int? dstOffset;
  String? dstUntil;
  int? rawOffset;
  String? timezone;
  int? unixtime;
  String? utcDatetime;
  String? utcOffset;
  int? weekNumber;

  WorldTimeApi({
    this.abbreviation,
    this.clientIp,
    this.datetime,
    this.dayOfWeek,
    this.dayOfYear,
    this.dst,
    this.dstFrom,
    this.dstOffset,
    this.dstUntil,
    this.rawOffset,
    this.timezone,
    this.unixtime,
    this.utcDatetime,
    this.utcOffset,
    this.weekNumber,
  });

  factory WorldTimeApi.fromJson(Map<String, dynamic> json) =>
      _$WorldTimeApiFromJson(json);

  Map<String, dynamic> toJson() => _$WorldTimeApiToJson(this);

  @override
  String toString() {
    return 'WorldTimeApi{abbreviation: $abbreviation, clientIp: $clientIp, datetime: $datetime, dayOfWeek: $dayOfWeek, dayOfYear: $dayOfYear, dst: $dst, dstFrom: $dstFrom, dstOffset: $dstOffset, dstUntil: $dstUntil, rawOffset: $rawOffset, timezone: $timezone, unixtime: $unixtime, utcDatetime: $utcDatetime, utcOffset: $utcOffset, weekNumber: $weekNumber}';
  }
}
