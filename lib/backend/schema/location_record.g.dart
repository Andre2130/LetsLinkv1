// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationRecord> _$locationRecordSerializer =
    new _$LocationRecordSerializer();

class _$LocationRecordSerializer
    implements StructuredSerializer<LocationRecord> {
  @override
  final Iterable<Type> types = const [LocationRecord, _$LocationRecord];
  @override
  final String wireName = 'LocationRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, LocationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.event;
    if (value != null) {
      result
        ..add('event')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.geolocation;
    if (value != null) {
      result
        ..add('geolocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  LocationRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'event':
          result.event = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'geolocation':
          result.geolocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationRecord extends LocationRecord {
  @override
  final String event;
  @override
  final String name;
  @override
  final LatLng geolocation;
  @override
  final DocumentReference<Object> reference;

  factory _$LocationRecord([void Function(LocationRecordBuilder) updates]) =>
      (new LocationRecordBuilder()..update(updates)).build();

  _$LocationRecord._({this.event, this.name, this.geolocation, this.reference})
      : super._();

  @override
  LocationRecord rebuild(void Function(LocationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationRecordBuilder toBuilder() =>
      new LocationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationRecord &&
        event == other.event &&
        name == other.name &&
        geolocation == other.geolocation &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, event.hashCode), name.hashCode), geolocation.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationRecord')
          ..add('event', event)
          ..add('name', name)
          ..add('geolocation', geolocation)
          ..add('reference', reference))
        .toString();
  }
}

class LocationRecordBuilder
    implements Builder<LocationRecord, LocationRecordBuilder> {
  _$LocationRecord _$v;

  String _event;
  String get event => _$this._event;
  set event(String event) => _$this._event = event;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LatLng _geolocation;
  LatLng get geolocation => _$this._geolocation;
  set geolocation(LatLng geolocation) => _$this._geolocation = geolocation;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  LocationRecordBuilder() {
    LocationRecord._initializeBuilder(this);
  }

  LocationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _name = $v.name;
      _geolocation = $v.geolocation;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationRecord;
  }

  @override
  void update(void Function(LocationRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationRecord build() {
    final _$result = _$v ??
        new _$LocationRecord._(
            event: event,
            name: name,
            geolocation: geolocation,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
