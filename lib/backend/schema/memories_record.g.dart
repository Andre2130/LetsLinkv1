// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MemoriesRecord> _$memoriesRecordSerializer =
    new _$MemoriesRecordSerializer();

class _$MemoriesRecordSerializer
    implements StructuredSerializer<MemoriesRecord> {
  @override
  final Iterable<Type> types = const [MemoriesRecord, _$MemoriesRecord];
  @override
  final String wireName = 'MemoriesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MemoriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.event;
    if (value != null) {
      result
        ..add('event')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timePosted;
    if (value != null) {
      result
        ..add('time_posted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
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
  MemoriesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MemoriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'event':
          result.event = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time_posted':
          result.timePosted = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
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

class _$MemoriesRecord extends MemoriesRecord {
  @override
  final DocumentReference<Object> event;
  @override
  final String image;
  @override
  final String description;
  @override
  final DateTime timePosted;
  @override
  final DocumentReference<Object> user;
  @override
  final DocumentReference<Object> reference;

  factory _$MemoriesRecord([void Function(MemoriesRecordBuilder) updates]) =>
      (new MemoriesRecordBuilder()..update(updates)).build();

  _$MemoriesRecord._(
      {this.event,
      this.image,
      this.description,
      this.timePosted,
      this.user,
      this.reference})
      : super._();

  @override
  MemoriesRecord rebuild(void Function(MemoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemoriesRecordBuilder toBuilder() =>
      new MemoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemoriesRecord &&
        event == other.event &&
        image == other.image &&
        description == other.description &&
        timePosted == other.timePosted &&
        user == other.user &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, event.hashCode), image.hashCode),
                    description.hashCode),
                timePosted.hashCode),
            user.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MemoriesRecord')
          ..add('event', event)
          ..add('image', image)
          ..add('description', description)
          ..add('timePosted', timePosted)
          ..add('user', user)
          ..add('reference', reference))
        .toString();
  }
}

class MemoriesRecordBuilder
    implements Builder<MemoriesRecord, MemoriesRecordBuilder> {
  _$MemoriesRecord _$v;

  DocumentReference<Object> _event;
  DocumentReference<Object> get event => _$this._event;
  set event(DocumentReference<Object> event) => _$this._event = event;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DateTime _timePosted;
  DateTime get timePosted => _$this._timePosted;
  set timePosted(DateTime timePosted) => _$this._timePosted = timePosted;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MemoriesRecordBuilder() {
    MemoriesRecord._initializeBuilder(this);
  }

  MemoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _image = $v.image;
      _description = $v.description;
      _timePosted = $v.timePosted;
      _user = $v.user;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MemoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MemoriesRecord;
  }

  @override
  void update(void Function(MemoriesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MemoriesRecord build() {
    final _$result = _$v ??
        new _$MemoriesRecord._(
            event: event,
            image: image,
            description: description,
            timePosted: timePosted,
            user: user,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
