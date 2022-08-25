// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EquipesRecord> _$equipesRecordSerializer =
    new _$EquipesRecordSerializer();

class _$EquipesRecordSerializer implements StructuredSerializer<EquipesRecord> {
  @override
  final Iterable<Type> types = const [EquipesRecord, _$EquipesRecord];
  @override
  final String wireName = 'EquipesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EquipesRecord object,
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
    value = object.tabref;
    if (value != null) {
      result
        ..add('tabref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.tabnom;
    if (value != null) {
      result
        ..add('tabnom')
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
  EquipesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EquipesRecordBuilder();

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
        case 'tabref':
          result.tabref.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'tabnom':
          result.tabnom.replace(serializers.deserialize(value,
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

class _$EquipesRecord extends EquipesRecord {
  @override
  final String? nom;
  @override
  final BuiltList<DocumentReference<Object?>>? tabref;
  @override
  final BuiltList<String>? tabnom;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EquipesRecord([void Function(EquipesRecordBuilder)? updates]) =>
      (new EquipesRecordBuilder()..update(updates))._build();

  _$EquipesRecord._({this.nom, this.tabref, this.tabnom, this.ffRef})
      : super._();

  @override
  EquipesRecord rebuild(void Function(EquipesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EquipesRecordBuilder toBuilder() => new EquipesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EquipesRecord &&
        nom == other.nom &&
        tabref == other.tabref &&
        tabnom == other.tabnom &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, nom.hashCode), tabref.hashCode), tabnom.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EquipesRecord')
          ..add('nom', nom)
          ..add('tabref', tabref)
          ..add('tabnom', tabnom)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EquipesRecordBuilder
    implements Builder<EquipesRecord, EquipesRecordBuilder> {
  _$EquipesRecord? _$v;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  ListBuilder<DocumentReference<Object?>>? _tabref;
  ListBuilder<DocumentReference<Object?>> get tabref =>
      _$this._tabref ??= new ListBuilder<DocumentReference<Object?>>();
  set tabref(ListBuilder<DocumentReference<Object?>>? tabref) =>
      _$this._tabref = tabref;

  ListBuilder<String>? _tabnom;
  ListBuilder<String> get tabnom =>
      _$this._tabnom ??= new ListBuilder<String>();
  set tabnom(ListBuilder<String>? tabnom) => _$this._tabnom = tabnom;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EquipesRecordBuilder() {
    EquipesRecord._initializeBuilder(this);
  }

  EquipesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _tabref = $v.tabref?.toBuilder();
      _tabnom = $v.tabnom?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EquipesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EquipesRecord;
  }

  @override
  void update(void Function(EquipesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EquipesRecord build() => _build();

  _$EquipesRecord _build() {
    _$EquipesRecord _$result;
    try {
      _$result = _$v ??
          new _$EquipesRecord._(
              nom: nom,
              tabref: _tabref?.build(),
              tabnom: _tabnom?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tabref';
        _tabref?.build();
        _$failedField = 'tabnom';
        _tabnom?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EquipesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
