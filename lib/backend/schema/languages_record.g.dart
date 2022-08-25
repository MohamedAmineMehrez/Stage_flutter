// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'languages_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LanguagesRecord> _$languagesRecordSerializer =
    new _$LanguagesRecordSerializer();

class _$LanguagesRecordSerializer
    implements StructuredSerializer<LanguagesRecord> {
  @override
  final Iterable<Type> types = const [LanguagesRecord, _$LanguagesRecord];
  @override
  final String wireName = 'LanguagesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LanguagesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.libelle;
    if (value != null) {
      result
        ..add('libelle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  LanguagesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LanguagesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'libelle':
          result.libelle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$LanguagesRecord extends LanguagesRecord {
  @override
  final String? libelle;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LanguagesRecord([void Function(LanguagesRecordBuilder)? updates]) =>
      (new LanguagesRecordBuilder()..update(updates))._build();

  _$LanguagesRecord._({this.libelle, this.ffRef}) : super._();

  @override
  LanguagesRecord rebuild(void Function(LanguagesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LanguagesRecordBuilder toBuilder() =>
      new LanguagesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LanguagesRecord &&
        libelle == other.libelle &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, libelle.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LanguagesRecord')
          ..add('libelle', libelle)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LanguagesRecordBuilder
    implements Builder<LanguagesRecord, LanguagesRecordBuilder> {
  _$LanguagesRecord? _$v;

  String? _libelle;
  String? get libelle => _$this._libelle;
  set libelle(String? libelle) => _$this._libelle = libelle;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LanguagesRecordBuilder() {
    LanguagesRecord._initializeBuilder(this);
  }

  LanguagesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _libelle = $v.libelle;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LanguagesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LanguagesRecord;
  }

  @override
  void update(void Function(LanguagesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LanguagesRecord build() => _build();

  _$LanguagesRecord _build() {
    final _$result =
        _$v ?? new _$LanguagesRecord._(libelle: libelle, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
