import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'event_record.g.dart';

abstract class EventRecord implements Built<EventRecord, EventRecordBuilder> {
  static Serializer<EventRecord> get serializer => _$eventRecordSerializer;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'EventStatus')
  String get eventStatus;

  @nullable
  String get organizer;

  @nullable
  DateTime get startdate;

  @nullable
  DateTime get enddate;

  @nullable
  String get description;

  @nullable
  String get location;

  @nullable
  LatLng get geolocation;

  @nullable
  String get price;

  @nullable
  String get coverImage;

  @nullable
  BuiltList<DocumentReference> get guests;

  @nullable
  DocumentReference get category;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EventRecordBuilder builder) => builder
    ..name = ''
    ..eventStatus = ''
    ..organizer = ''
    ..description = ''
    ..location = ''
    ..price = ''
    ..coverImage = ''
    ..guests = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Event');

  static Stream<EventRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<EventRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EventRecord._();
  factory EventRecord([void Function(EventRecordBuilder) updates]) =
      _$EventRecord;

  static EventRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEventRecordData({
  String name,
  String eventStatus,
  String organizer,
  DateTime startdate,
  DateTime enddate,
  String description,
  String location,
  LatLng geolocation,
  String price,
  String coverImage,
  DocumentReference category,
}) =>
    serializers.toFirestore(
        EventRecord.serializer,
        EventRecord((e) => e
          ..name = name
          ..eventStatus = eventStatus
          ..organizer = organizer
          ..startdate = startdate
          ..enddate = enddate
          ..description = description
          ..location = location
          ..geolocation = geolocation
          ..price = price
          ..coverImage = coverImage
          ..guests = null
          ..category = category));
