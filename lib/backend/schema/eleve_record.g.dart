// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eleve_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EleveRecord> _$eleveRecordSerializer = new _$EleveRecordSerializer();

class _$EleveRecordSerializer implements StructuredSerializer<EleveRecord> {
  @override
  final Iterable<Type> types = const [EleveRecord, _$EleveRecord];
  @override
  final String wireName = 'EleveRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EleveRecord object,
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
    value = object.etatpay;
    if (value != null) {
      result
        ..add('etatpay')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.datenaissance;
    if (value != null) {
      result
        ..add('Datenaissance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.formations;
    if (value != null) {
      result
        ..add('formations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.tabLibelle;
    if (value != null) {
      result
        ..add('tabLibelle')
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
  EleveRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EleveRecordBuilder();

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
        case 'etatpay':
          result.etatpay = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Datenaissance':
          result.datenaissance = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'formations':
          result.formations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'tabLibelle':
          result.tabLibelle.replace(serializers.deserialize(value,
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

class _$EleveRecord extends EleveRecord {
  @override
  final String? nom;
  @override
  final String? prenom;
  @override
  final bool? etatpay;
  @override
  final String? photo;
  @override
  final DateTime? datenaissance;
  @override
  final BuiltList<DocumentReference<Object?>>? formations;
  @override
  final BuiltList<String>? tabLibelle;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EleveRecord([void Function(EleveRecordBuilder)? updates]) =>
      (new EleveRecordBuilder()..update(updates))._build();

  _$EleveRecord._(
      {this.nom,
      this.prenom,
      this.etatpay,
      this.photo,
      this.datenaissance,
      this.formations,
      this.tabLibelle,
      this.ffRef})
      : super._();

  @override
  EleveRecord rebuild(void Function(EleveRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EleveRecordBuilder toBuilder() => new EleveRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EleveRecord &&
        nom == other.nom &&
        prenom == other.prenom &&
        etatpay == other.etatpay &&
        photo == other.photo &&
        datenaissance == other.datenaissance &&
        formations == other.formations &&
        tabLibelle == other.tabLibelle &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, nom.hashCode), prenom.hashCode),
                            etatpay.hashCode),
                        photo.hashCode),
                    datenaissance.hashCode),
                formations.hashCode),
            tabLibelle.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EleveRecord')
          ..add('nom', nom)
          ..add('prenom', prenom)
          ..add('etatpay', etatpay)
          ..add('photo', photo)
          ..add('datenaissance', datenaissance)
          ..add('formations', formations)
          ..add('tabLibelle', tabLibelle)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EleveRecordBuilder implements Builder<EleveRecord, EleveRecordBuilder> {
  _$EleveRecord? _$v;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _prenom;
  String? get prenom => _$this._prenom;
  set prenom(String? prenom) => _$this._prenom = prenom;

  bool? _etatpay;
  bool? get etatpay => _$this._etatpay;
  set etatpay(bool? etatpay) => _$this._etatpay = etatpay;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  DateTime? _datenaissance;
  DateTime? get datenaissance => _$this._datenaissance;
  set datenaissance(DateTime? datenaissance) =>
      _$this._datenaissance = datenaissance;

  ListBuilder<DocumentReference<Object?>>? _formations;
  ListBuilder<DocumentReference<Object?>> get formations =>
      _$this._formations ??= new ListBuilder<DocumentReference<Object?>>();
  set formations(ListBuilder<DocumentReference<Object?>>? formations) =>
      _$this._formations = formations;

  ListBuilder<String>? _tabLibelle;
  ListBuilder<String> get tabLibelle =>
      _$this._tabLibelle ??= new ListBuilder<String>();
  set tabLibelle(ListBuilder<String>? tabLibelle) =>
      _$this._tabLibelle = tabLibelle;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EleveRecordBuilder() {
    EleveRecord._initializeBuilder(this);
  }

  EleveRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _prenom = $v.prenom;
      _etatpay = $v.etatpay;
      _photo = $v.photo;
      _datenaissance = $v.datenaissance;
      _formations = $v.formations?.toBuilder();
      _tabLibelle = $v.tabLibelle?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EleveRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EleveRecord;
  }

  @override
  void update(void Function(EleveRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EleveRecord build() => _build();

  _$EleveRecord _build() {
    _$EleveRecord _$result;
    try {
      _$result = _$v ??
          new _$EleveRecord._(
              nom: nom,
              prenom: prenom,
              etatpay: etatpay,
              photo: photo,
              datenaissance: datenaissance,
              formations: _formations?.build(),
              tabLibelle: _tabLibelle?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'formations';
        _formations?.build();
        _$failedField = 'tabLibelle';
        _tabLibelle?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EleveRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
