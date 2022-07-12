// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventRecord> _$eventRecordSerializer = new _$EventRecordSerializer();

class _$EventRecordSerializer implements StructuredSerializer<EventRecord> {
  @override
  final Iterable<Type> types = const [EventRecord, _$EventRecord];
  @override
  final String wireName = 'EventRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, EventRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventStatus;
    if (value != null) {
      result
        ..add('EventStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.organizer;
    if (value != null) {
      result
        ..add('organizer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startdate;
    if (value != null) {
      result
        ..add('startdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.enddate;
    if (value != null) {
      result
        ..add('enddate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
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
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.guests;
    if (value != null) {
      result
        ..add('guests')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  EventRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'EventStatus':
          result.eventStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organizer':
          result.organizer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startdate':
          result.startdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'enddate':
          result.enddate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'geolocation':
          result.geolocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'coverImage':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'guests':
          result.guests.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'category':
          result.category = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$EventRecord extends EventRecord {
  @override
  final String name;
  @override
  final String eventStatus;
  @override
  final String organizer;
  @override
  final DateTime startdate;
  @override
  final DateTime enddate;
  @override
  final String description;
  @override
  final String location;
  @override
  final LatLng geolocation;
  @override
  final String price;
  @override
  final String coverImage;
  @override
  final BuiltList<DocumentReference<Object>> guests;
  @override
  final DocumentReference<Object> category;
  @override
  final DocumentReference<Object> reference;

  factory _$EventRecord([void Function(EventRecordBuilder) updates]) =>
      (new EventRecordBuilder()..update(updates)).build();

  _$EventRecord._(
      {this.name,
      this.eventStatus,
      this.organizer,
      this.startdate,
      this.enddate,
      this.description,
      this.location,
      this.geolocation,
      this.price,
      this.coverImage,
      this.guests,
      this.category,
      this.reference})
      : super._();

  @override
  EventRecord rebuild(void Function(EventRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventRecordBuilder toBuilder() => new EventRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventRecord &&
        name == other.name &&
        eventStatus == other.eventStatus &&
        organizer == other.organizer &&
        startdate == other.startdate &&
        enddate == other.enddate &&
        description == other.description &&
        location == other.location &&
        geolocation == other.geolocation &&
        price == other.price &&
        coverImage == other.coverImage &&
        guests == other.guests &&
        category == other.category &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, name.hashCode),
                                                    eventStatus.hashCode),
                                                organizer.hashCode),
                                            startdate.hashCode),
                                        enddate.hashCode),
                                    description.hashCode),
                                location.hashCode),
                            geolocation.hashCode),
                        price.hashCode),
                    coverImage.hashCode),
                guests.hashCode),
            category.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventRecord')
          ..add('name', name)
          ..add('eventStatus', eventStatus)
          ..add('organizer', organizer)
          ..add('startdate', startdate)
          ..add('enddate', enddate)
          ..add('description', description)
          ..add('location', location)
          ..add('geolocation', geolocation)
          ..add('price', price)
          ..add('coverImage', coverImage)
          ..add('guests', guests)
          ..add('category', category)
          ..add('reference', reference))
        .toString();
  }
}

class EventRecordBuilder implements Builder<EventRecord, EventRecordBuilder> {
  _$EventRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _eventStatus;
  String get eventStatus => _$this._eventStatus;
  set eventStatus(String eventStatus) => _$this._eventStatus = eventStatus;

  String _organizer;
  String get organizer => _$this._organizer;
  set organizer(String organizer) => _$this._organizer = organizer;

  DateTime _startdate;
  DateTime get startdate => _$this._startdate;
  set startdate(DateTime startdate) => _$this._startdate = startdate;

  DateTime _enddate;
  DateTime get enddate => _$this._enddate;
  set enddate(DateTime enddate) => _$this._enddate = enddate;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  LatLng _geolocation;
  LatLng get geolocation => _$this._geolocation;
  set geolocation(LatLng geolocation) => _$this._geolocation = geolocation;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  String _coverImage;
  String get coverImage => _$this._coverImage;
  set coverImage(String coverImage) => _$this._coverImage = coverImage;

  ListBuilder<DocumentReference<Object>> _guests;
  ListBuilder<DocumentReference<Object>> get guests =>
      _$this._guests ??= new ListBuilder<DocumentReference<Object>>();
  set guests(ListBuilder<DocumentReference<Object>> guests) =>
      _$this._guests = guests;

  DocumentReference<Object> _category;
  DocumentReference<Object> get category => _$this._category;
  set category(DocumentReference<Object> category) =>
      _$this._category = category;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  EventRecordBuilder() {
    EventRecord._initializeBuilder(this);
  }

  EventRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _eventStatus = $v.eventStatus;
      _organizer = $v.organizer;
      _startdate = $v.startdate;
      _enddate = $v.enddate;
      _description = $v.description;
      _location = $v.location;
      _geolocation = $v.geolocation;
      _price = $v.price;
      _coverImage = $v.coverImage;
      _guests = $v.guests?.toBuilder();
      _category = $v.category;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventRecord;
  }

  @override
  void update(void Function(EventRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventRecord build() {
    _$EventRecord _$result;
    try {
      _$result = _$v ??
          new _$EventRecord._(
              name: name,
              eventStatus: eventStatus,
              organizer: organizer,
              startdate: startdate,
              enddate: enddate,
              description: description,
              location: location,
              geolocation: geolocation,
              price: price,
              coverImage: coverImage,
              guests: _guests?.build(),
              category: category,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'guests';
        _guests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EventRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
