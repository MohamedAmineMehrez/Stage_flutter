// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formations_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FormationsRecord> _$formationsRecordSerializer =
    new _$FormationsRecordSerializer();

class _$FormationsRecordSerializer
    implements StructuredSerializer<FormationsRecord> {
  @override
  final Iterable<Type> types = const [FormationsRecord, _$FormationsRecord];
  @override
  final String wireName = 'FormationsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FormationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dateD;
    if (value != null) {
      result
        ..add('DateD')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dateF;
    if (value != null) {
      result
        ..add('DateF')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.formateur;
    if (value != null) {
      result
        ..add('Formateur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.prix;
    if (value != null) {
      result
        ..add('prix')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
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
  FormationsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FormationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'DateD':
          result.dateD = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'DateF':
          result.dateF = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Formateur':
          result.formateur = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'prix':
          result.prix = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
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

class _$FormationsRecord extends FormationsRecord {
  @override
  final DateTime? dateD;
  @override
  final DateTime? dateF;
  @override
  final DocumentReference<Object?>? formateur;
  @override
  final double? prix;
  @override
  final String? libelle;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FormationsRecord(
          [void Function(FormationsRecordBuilder)? updates]) =>
      (new FormationsRecordBuilder()..update(updates))._build();

  _$FormationsRecord._(
      {this.dateD,
      this.dateF,
      this.formateur,
      this.prix,
      this.libelle,
      this.ffRef})
      : super._();

  @override
  FormationsRecord rebuild(void Function(FormationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FormationsRecordBuilder toBuilder() =>
      new FormationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FormationsRecord &&
        dateD == other.dateD &&
        dateF == other.dateF &&
        formateur == other.formateur &&
        prix == other.prix &&
        libelle == other.libelle &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, dateD.hashCode), dateF.hashCode),
                    formateur.hashCode),
                prix.hashCode),
            libelle.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FormationsRecord')
          ..add('dateD', dateD)
          ..add('dateF', dateF)
          ..add('formateur', formateur)
          ..add('prix', prix)
          ..add('libelle', libelle)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FormationsRecordBuilder
    implements Builder<FormationsRecord, FormationsRecordBuilder> {
  _$FormationsRecord? _$v;

  DateTime? _dateD;
  DateTime? get dateD => _$this._dateD;
  set dateD(DateTime? dateD) => _$this._dateD = dateD;

  DateTime? _dateF;
  DateTime? get dateF => _$this._dateF;
  set dateF(DateTime? dateF) => _$this._dateF = dateF;

  DocumentReference<Object?>? _formateur;
  DocumentReference<Object?>? get formateur => _$this._formateur;
  set formateur(DocumentReference<Object?>? formateur) =>
      _$this._formateur = formateur;

  double? _prix;
  double? get prix => _$this._prix;
  set prix(double? prix) => _$this._prix = prix;

  String? _libelle;
  String? get libelle => _$this._libelle;
  set libelle(String? libelle) => _$this._libelle = libelle;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FormationsRecordBuilder() {
    FormationsRecord._initializeBuilder(this);
  }

  FormationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateD = $v.dateD;
      _dateF = $v.dateF;
      _formateur = $v.formateur;
      _prix = $v.prix;
      _libelle = $v.libelle;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FormationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FormationsRecord;
  }

  @override
  void update(void Function(FormationsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FormationsRecord build() => _build();

  _$FormationsRecord _build() {
    final _$result = _$v ??
        new _$FormationsRecord._(
            dateD: dateD,
            dateF: dateF,
            formateur: formateur,
            prix: prix,
            libelle: libelle,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
