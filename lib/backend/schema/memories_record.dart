import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'memories_record.g.dart';

abstract class MemoriesRecord
    implements Built<MemoriesRecord, MemoriesRecordBuilder> {
  static Serializer<MemoriesRecord> get serializer =>
      _$memoriesRecordSerializer;

  @nullable
  DocumentReference get event;

  @nullable
  String get image;

  @nullable
  String get description;

  @nullable
  @BuiltValueField(wireName: 'time_posted')
  DateTime get timePosted;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MemoriesRecordBuilder builder) => builder
    ..image = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('memories');

  static Stream<MemoriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MemoriesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MemoriesRecord._();
  factory MemoriesRecord([void Function(MemoriesRecordBuilder) updates]) =
      _$MemoriesRecord;

  static MemoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMemoriesRecordData({
  DocumentReference event,
  String image,
  String description,
  DateTime timePosted,
  DocumentReference user,
}) =>
    serializers.toFirestore(
        MemoriesRecord.serializer,
        MemoriesRecord((m) => m
          ..event = event
          ..image = image
          ..description = description
          ..timePosted = timePosted
          ..user = user));
