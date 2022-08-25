import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'formations_record.g.dart';

abstract class FormationsRecord
    implements Built<FormationsRecord, FormationsRecordBuilder> {
  static Serializer<FormationsRecord> get serializer =>
      _$formationsRecordSerializer;

  @BuiltValueField(wireName: 'DateD')
  DateTime? get dateD;

  @BuiltValueField(wireName: 'DateF')
  DateTime? get dateF;

  @BuiltValueField(wireName: 'Formateur')
  DocumentReference? get formateur;

  double? get prix;

  String? get libelle;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FormationsRecordBuilder builder) => builder
    ..prix = 0.0
    ..libelle = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Formations');

  static Stream<FormationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FormationsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FormationsRecord._();
  factory FormationsRecord([void Function(FormationsRecordBuilder) updates]) =
      _$FormationsRecord;

  static FormationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFormationsRecordData({
  DateTime? dateD,
  DateTime? dateF,
  DocumentReference? formateur,
  double? prix,
  String? libelle,
}) {
  final firestoreData = serializers.toFirestore(
    FormationsRecord.serializer,
    FormationsRecord(
      (f) => f
        ..dateD = dateD
        ..dateF = dateF
        ..formateur = formateur
        ..prix = prix
        ..libelle = libelle,
    ),
  );

  return firestoreData;
}
