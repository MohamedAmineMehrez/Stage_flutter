// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competitions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompetitionsRecord> _$competitionsRecordSerializer =
    new _$CompetitionsRecordSerializer();

class _$CompetitionsRecordSerializer
    implements StructuredSerializer<CompetitionsRecord> {
  @override
  final Iterable<Type> types = const [CompetitionsRecord, _$CompetitionsRecord];
  @override
  final String wireName = 'CompetitionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CompetitionsRecord object,
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
    value = object.dateCom;
    if (value != null) {
      result
        ..add('DateCom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.equipe;
    if (value != null) {
      result
        ..add('Equipe')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.tabRef;
    if (value != null) {
      result
        ..add('tabRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.tabFormateurs;
    if (value != null) {
      result
        ..add('tabFormateurs')
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
  CompetitionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompetitionsRecordBuilder();

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
        case 'DateCom':
          result.dateCom = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Equipe':
          result.equipe = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'tabRef':
          result.tabRef.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'tabFormateurs':
          result.tabFormateurs.replace(serializers.deserialize(value,
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

class _$CompetitionsRecord extends CompetitionsRecord {
  @override
  final String? nom;
  @override
  final DateTime? dateCom;
  @override
  final DocumentReference<Object?>? equipe;
  @override
  final BuiltList<DocumentReference<Object?>>? tabRef;
  @override
  final BuiltList<String>? tabFormateurs;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompetitionsRecord(
          [void Function(CompetitionsRecordBuilder)? updates]) =>
      (new CompetitionsRecordBuilder()..update(updates))._build();

  _$CompetitionsRecord._(
      {this.nom,
      this.dateCom,
      this.equipe,
      this.tabRef,
      this.tabFormateurs,
      this.ffRef})
      : super._();

  @override
  CompetitionsRecord rebuild(
          void Function(CompetitionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompetitionsRecordBuilder toBuilder() =>
      new CompetitionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompetitionsRecord &&
        nom == other.nom &&
        dateCom == other.dateCom &&
        equipe == other.equipe &&
        tabRef == other.tabRef &&
        tabFormateurs == other.tabFormateurs &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, nom.hashCode), dateCom.hashCode),
                    equipe.hashCode),
                tabRef.hashCode),
            tabFormateurs.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompetitionsRecord')
          ..add('nom', nom)
          ..add('dateCom', dateCom)
          ..add('equipe', equipe)
          ..add('tabRef', tabRef)
          ..add('tabFormateurs', tabFormateurs)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompetitionsRecordBuilder
    implements Builder<CompetitionsRecord, CompetitionsRecordBuilder> {
  _$CompetitionsRecord? _$v;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  DateTime? _dateCom;
  DateTime? get dateCom => _$this._dateCom;
  set dateCom(DateTime? dateCom) => _$this._dateCom = dateCom;

  DocumentReference<Object?>? _equipe;
  DocumentReference<Object?>? get equipe => _$this._equipe;
  set equipe(DocumentReference<Object?>? equipe) => _$this._equipe = equipe;

  ListBuilder<DocumentReference<Object?>>? _tabRef;
  ListBuilder<DocumentReference<Object?>> get tabRef =>
      _$this._tabRef ??= new ListBuilder<DocumentReference<Object?>>();
  set tabRef(ListBuilder<DocumentReference<Object?>>? tabRef) =>
      _$this._tabRef = tabRef;

  ListBuilder<String>? _tabFormateurs;
  ListBuilder<String> get tabFormateurs =>
      _$this._tabFormateurs ??= new ListBuilder<String>();
  set tabFormateurs(ListBuilder<String>? tabFormateurs) =>
      _$this._tabFormateurs = tabFormateurs;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompetitionsRecordBuilder() {
    CompetitionsRecord._initializeBuilder(this);
  }

  CompetitionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _dateCom = $v.dateCom;
      _equipe = $v.equipe;
      _tabRef = $v.tabRef?.toBuilder();
      _tabFormateurs = $v.tabFormateurs?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompetitionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompetitionsRecord;
  }

  @override
  void update(void Function(CompetitionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompetitionsRecord build() => _build();

  _$CompetitionsRecord _build() {
    _$CompetitionsRecord _$result;
    try {
      _$result = _$v ??
          new _$CompetitionsRecord._(
              nom: nom,
              dateCom: dateCom,
              equipe: equipe,
              tabRef: _tabRef?.build(),
              tabFormateurs: _tabFormateurs?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tabRef';
        _tabRef?.build();
        _$failedField = 'tabFormateurs';
        _tabFormateurs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CompetitionsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
