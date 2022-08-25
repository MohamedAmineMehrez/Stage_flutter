import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'formateurs_record.g.dart';

abstract class FormateursRecord
    implements Built<FormateursRecord, FormateursRecordBuilder> {
  static Serializer<FormateursRecord> get serializer =>
      _$formateursRecordSerializer;

  String? get nom;

  String? get prenom;

  int? get numTel;

  @BuiltValueField(wireName: 'Email')
  String? get email;

  @BuiltValueField(wireName: 'Tablanguages')
  BuiltList<String>? get tablanguages;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FormateursRecordBuilder builder) => builder
    ..nom = ''
    ..prenom = ''
    ..numTel = 0
    ..email = ''
    ..tablanguages = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Formateurs');

  static Stream<FormateursRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FormateursRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FormateursRecord._();
  factory FormateursRecord([void Function(FormateursRecordBuilder) updates]) =
      _$FormateursRecord;

  static FormateursRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFormateursRecordData({
  String? nom,
  String? prenom,
  int? numTel,
  String? email,
}) {
  final firestoreData = serializers.toFirestore(
    FormateursRecord.serializer,
    FormateursRecord(
      (f) => f
        ..nom = nom
        ..prenom = prenom
        ..numTel = numTel
        ..email = email
        ..tablanguages = null,
    ),
  );

  return firestoreData;
}
