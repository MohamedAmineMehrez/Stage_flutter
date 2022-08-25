import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'session_s_record.g.dart';

abstract class SessionSRecord
    implements Built<SessionSRecord, SessionSRecordBuilder> {
  static Serializer<SessionSRecord> get serializer =>
      _$sessionSRecordSerializer;

  @BuiltValueField(wireName: 'DateD')
  DateTime? get dateD;

  @BuiltValueField(wireName: 'DateF')
  DateTime? get dateF;

  @BuiltValueField(wireName: 'Formateur')
  DocumentReference? get formateur;

  double? get prix;

  String? get libelle;

  String? get affiche;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SessionSRecordBuilder builder) => builder
    ..prix = 0.0
    ..libelle = ''
    ..affiche = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SessionS');

  static Stream<SessionSRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SessionSRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SessionSRecord._();
  factory SessionSRecord([void Function(SessionSRecordBuilder) updates]) =
      _$SessionSRecord;

  static SessionSRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSessionSRecordData({
  DateTime? dateD,
  DateTime? dateF,
  DocumentReference? formateur,
  double? prix,
  String? libelle,
  String? affiche,
}) {
  final firestoreData = serializers.toFirestore(
    SessionSRecord.serializer,
    SessionSRecord(
      (s) => s
        ..dateD = dateD
        ..dateF = dateF
        ..formateur = formateur
        ..prix = prix
        ..libelle = libelle
        ..affiche = affiche,
    ),
  );

  return firestoreData;
}
