import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sessions_record.g.dart';

abstract class SessionsRecord
    implements Built<SessionsRecord, SessionsRecordBuilder> {
  static Serializer<SessionsRecord> get serializer =>
      _$sessionsRecordSerializer;

  DocumentReference? get formation;

  @BuiltValueField(wireName: 'DateD')
  DateTime? get dateD;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SessionsRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Sessions');

  static Stream<SessionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SessionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SessionsRecord._();
  factory SessionsRecord([void Function(SessionsRecordBuilder) updates]) =
      _$SessionsRecord;

  static SessionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSessionsRecordData({
  DocumentReference? formation,
  DateTime? dateD,
}) {
  final firestoreData = serializers.toFirestore(
    SessionsRecord.serializer,
    SessionsRecord(
      (s) => s
        ..formation = formation
        ..dateD = dateD,
    ),
  );

  return firestoreData;
}
