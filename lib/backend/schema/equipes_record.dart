import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'equipes_record.g.dart';

abstract class EquipesRecord
    implements Built<EquipesRecord, EquipesRecordBuilder> {
  static Serializer<EquipesRecord> get serializer => _$equipesRecordSerializer;

  String? get nom;

  BuiltList<DocumentReference>? get tabref;

  BuiltList<String>? get tabnom;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EquipesRecordBuilder builder) => builder
    ..nom = ''
    ..tabref = ListBuilder()
    ..tabnom = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Equipes');

  static Stream<EquipesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EquipesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EquipesRecord._();
  factory EquipesRecord([void Function(EquipesRecordBuilder) updates]) =
      _$EquipesRecord;

  static EquipesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEquipesRecordData({
  String? nom,
}) {
  final firestoreData = serializers.toFirestore(
    EquipesRecord.serializer,
    EquipesRecord(
      (e) => e
        ..nom = nom
        ..tabref = null
        ..tabnom = null,
    ),
  );

  return firestoreData;
}
