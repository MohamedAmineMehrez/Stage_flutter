// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SessionsRecord> _$sessionsRecordSerializer =
    new _$SessionsRecordSerializer();

class _$SessionsRecordSerializer
    implements StructuredSerializer<SessionsRecord> {
  @override
  final Iterable<Type> types = const [SessionsRecord, _$SessionsRecord];
  @override
  final String wireName = 'SessionsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SessionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.formation;
    if (value != null) {
      result
        ..add('formation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.dateD;
    if (value != null) {
      result
        ..add('DateD')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  SessionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SessionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'formation':
          result.formation = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'DateD':
          result.dateD = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$SessionsRecord extends SessionsRecord {
  @override
  final DocumentReference<Object?>? formation;
  @override
  final DateTime? dateD;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SessionsRecord([void Function(SessionsRecordBuilder)? updates]) =>
      (new SessionsRecordBuilder()..update(updates))._build();

  _$SessionsRecord._({this.formation, this.dateD, this.ffRef}) : super._();

  @override
  SessionsRecord rebuild(void Function(SessionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionsRecordBuilder toBuilder() =>
      new SessionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionsRecord &&
        formation == other.formation &&
        dateD == other.dateD &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, formation.hashCode), dateD.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionsRecord')
          ..add('formation', formation)
          ..add('dateD', dateD)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SessionsRecordBuilder
    implements Builder<SessionsRecord, SessionsRecordBuilder> {
  _$SessionsRecord? _$v;

  DocumentReference<Object?>? _formation;
  DocumentReference<Object?>? get formation => _$this._formation;
  set formation(DocumentReference<Object?>? formation) =>
      _$this._formation = formation;

  DateTime? _dateD;
  DateTime? get dateD => _$this._dateD;
  set dateD(DateTime? dateD) => _$this._dateD = dateD;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SessionsRecordBuilder() {
    SessionsRecord._initializeBuilder(this);
  }

  SessionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _formation = $v.formation;
      _dateD = $v.dateD;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SessionsRecord;
  }

  @override
  void update(void Function(SessionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionsRecord build() => _build();

  _$SessionsRecord _build() {
    final _$result = _$v ??
        new _$SessionsRecord._(
            formation: formation, dateD: dateD, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
