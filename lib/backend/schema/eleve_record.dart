import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'eleve_record.g.dart';

abstract class EleveRecord implements Built<EleveRecord, EleveRecordBuilder> {
  static Serializer<EleveRecord> get serializer => _$eleveRecordSerializer;

  String? get nom;

  String? get prenom;

  bool? get etatpay;

  String? get photo;

  @BuiltValueField(wireName: 'Datenaissance')
  DateTime? get datenaissance;

  BuiltList<DocumentReference>? get formations;

  BuiltList<String>? get tabLibelle;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EleveRecordBuilder builder) => builder
    ..nom = ''
    ..prenom = ''
    ..etatpay = false
    ..photo = ''
    ..formations = ListBuilder()
    ..tabLibelle = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Eleve');

  static Stream<EleveRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EleveRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EleveRecord._();
  factory EleveRecord([void Function(EleveRecordBuilder) updates]) =
      _$EleveRecord;

  static EleveRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEleveRecordData({
  String? nom,
  String? prenom,
  bool? etatpay,
  String? photo,
  DateTime? datenaissance,
}) {
  final firestoreData = serializers.toFirestore(
    EleveRecord.serializer,
    EleveRecord(
      (e) => e
        ..nom = nom
        ..prenom = prenom
        ..etatpay = etatpay
        ..photo = photo
        ..datenaissance = datenaissance
        ..formations = null
        ..tabLibelle = null,
    ),
  );

  return firestoreData;
}
