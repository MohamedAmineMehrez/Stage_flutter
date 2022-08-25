// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formateurs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FormateursRecord> _$formateursRecordSerializer =
    new _$FormateursRecordSerializer();

class _$FormateursRecordSerializer
    implements StructuredSerializer<FormateursRecord> {
  @override
  final Iterable<Type> types = const [FormateursRecord, _$FormateursRecord];
  @override
  final String wireName = 'FormateursRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FormateursRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nom;
    if (value != null) {
      result
        ..add('nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prenom;
    if (value != null) {
      result
        ..add('prenom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numTel;
    if (value != null) {
      result
        ..add('numTel')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('Email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tablanguages;
    if (value != null) {
      result
        ..add('Tablanguages')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  FormateursRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FormateursRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prenom':
          result.prenom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numTel':
          result.numTel = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Tablanguages':
          result.tablanguages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$FormateursRecord extends FormateursRecord {
  @override
  final String? nom;
  @override
  final String? prenom;
  @override
  final int? numTel;
  @override
  final String? email;
  @override
  final BuiltList<String>? tablanguages;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FormateursRecord(
          [void Function(FormateursRecordBuilder)? updates]) =>
      (new FormateursRecordBuilder()..update(updates))._build();

  _$FormateursRecord._(
      {this.nom,
      this.prenom,
      this.numTel,
      this.email,
      this.tablanguages,
      this.ffRef})
      : super._();

  @override
  FormateursRecord rebuild(void Function(FormateursRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FormateursRecordBuilder toBuilder() =>
      new FormateursRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FormateursRecord &&
        nom == other.nom &&
        prenom == other.prenom &&
        numTel == other.numTel &&
        email == other.email &&
        tablanguages == other.tablanguages &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, nom.hashCode), prenom.hashCode),
                    numTel.hashCode),
                email.hashCode),
            tablanguages.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FormateursRecord')
          ..add('nom', nom)
          ..add('prenom', prenom)
          ..add('numTel', numTel)
          ..add('email', email)
          ..add('tablanguages', tablanguages)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FormateursRecordBuilder
    implements Builder<FormateursRecord, FormateursRecordBuilder> {
  _$FormateursRecord? _$v;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _prenom;
  String? get prenom => _$this._prenom;
  set prenom(String? prenom) => _$this._prenom = prenom;

  int? _numTel;
  int? get numTel => _$this._numTel;
  set numTel(int? numTel) => _$this._numTel = numTel;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ListBuilder<String>? _tablanguages;
  ListBuilder<String> get tablanguages =>
      _$this._tablanguages ??= new ListBuilder<String>();
  set tablanguages(ListBuilder<String>? tablanguages) =>
      _$this._tablanguages = tablanguages;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FormateursRecordBuilder() {
    FormateursRecord._initializeBuilder(this);
  }

  FormateursRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _prenom = $v.prenom;
      _numTel = $v.numTel;
      _email = $v.email;
      _tablanguages = $v.tablanguages?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FormateursRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FormateursRecord;
  }

  @override
  void update(void Function(FormateursRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FormateursRecord build() => _build();

  _$FormateursRecord _build() {
    _$FormateursRecord _$result;
    try {
      _$result = _$v ??
          new _$FormateursRecord._(
              nom: nom,
              prenom: prenom,
              numTel: numTel,
              email: email,
              tablanguages: _tablanguages?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tablanguages';
        _tablanguages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FormateursRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
