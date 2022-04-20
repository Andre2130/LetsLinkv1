import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'location_record.g.dart';

abstract class LocationRecord
    implements Built<LocationRecord, LocationRecordBuilder> {
  static Serializer<LocationRecord> get serializer =>
      _$locationRecordSerializer;

  @nullable
  String get event;

  @nullable
  String get name;

  @nullable
  LatLng get geolocation;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LocationRecordBuilder builder) => builder
    ..event = ''
    ..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('location');

  static Stream<LocationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LocationRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  LocationRecord._();
  factory LocationRecord([void Function(LocationRecordBuilder) updates]) =
      _$LocationRecord;

  static LocationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLocationRecordData({
  String event,
  String name,
  LatLng geolocation,
}) =>
    serializers.toFirestore(
        LocationRecord.serializer,
        LocationRecord((l) => l
          ..event = event
          ..name = name
          ..geolocation = geolocation));
