import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'competitions_record.g.dart';

abstract class CompetitionsRecord
    implements Built<CompetitionsRecord, CompetitionsRecordBuilder> {
  static Serializer<CompetitionsRecord> get serializer =>
      _$competitionsRecordSerializer;

  String? get nom;

  @BuiltValueField(wireName: 'DateCom')
  DateTime? get dateCom;

  @BuiltValueField(wireName: 'Equipe')
  DocumentReference? get equipe;

  BuiltList<DocumentReference>? get tabRef;

  BuiltList<String>? get tabFormateurs;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompetitionsRecordBuilder builder) => builder
    ..nom = ''
    ..tabRef = ListBuilder()
    ..tabFormateurs = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Competitions');

  static Stream<CompetitionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompetitionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompetitionsRecord._();
  factory CompetitionsRecord(
          [void Function(CompetitionsRecordBuilder) updates]) =
      _$CompetitionsRecord;

  static CompetitionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompetitionsRecordData({
  String? nom,
  DateTime? dateCom,
  DocumentReference? equipe,
}) {
  final firestoreData = serializers.toFirestore(
    CompetitionsRecord.serializer,
    CompetitionsRecord(
      (c) => c
        ..nom = nom
        ..dateCom = dateCom
        ..equipe = equipe
        ..tabRef = null
        ..tabFormateurs = null,
    ),
  );

  return firestoreData;
}
