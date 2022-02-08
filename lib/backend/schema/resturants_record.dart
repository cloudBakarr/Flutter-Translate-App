import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'resturants_record.g.dart';

abstract class ResturantsRecord
    implements Built<ResturantsRecord, ResturantsRecordBuilder> {
  static Serializer<ResturantsRecord> get serializer =>
      _$resturantsRecordSerializer;

  @nullable
  LatLng get location;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  DocumentReference get user;

  @nullable
  String get description;

  @nullable
  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @nullable
  @BuiltValueField(wireName: 'resturant_name')
  String get resturantName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ResturantsRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..imageUrl = ''
    ..resturantName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resturants');

  static Stream<ResturantsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ResturantsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ResturantsRecord._();
  factory ResturantsRecord([void Function(ResturantsRecordBuilder) updates]) =
      _$ResturantsRecord;

  static ResturantsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createResturantsRecordData({
  LatLng location,
  String name,
  DateTime createdAt,
  DocumentReference user,
  String description,
  String imageUrl,
  String resturantName,
}) =>
    serializers.toFirestore(
        ResturantsRecord.serializer,
        ResturantsRecord((r) => r
          ..location = location
          ..name = name
          ..createdAt = createdAt
          ..user = user
          ..description = description
          ..imageUrl = imageUrl
          ..resturantName = resturantName));
