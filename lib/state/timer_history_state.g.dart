// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_history_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimerHistoryState _$$_TimerHistoryStateFromJson(Map<String, dynamic> json) =>
    _$_TimerHistoryState(
      workTimeTotal: Duration(microseconds: json['workTimeTotal'] as int),
    );

Map<String, dynamic> _$$_TimerHistoryStateToJson(
        _$_TimerHistoryState instance) =>
    <String, dynamic>{
      'workTimeTotal': instance.workTimeTotal.inMicroseconds,
    };
