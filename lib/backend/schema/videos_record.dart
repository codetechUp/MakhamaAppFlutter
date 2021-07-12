import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'videos_record.g.dart';

abstract class VideosRecord
    implements Built<VideosRecord, VideosRecordBuilder> {
  static Serializer<VideosRecord> get serializer => _$videosRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'id_video')
  String get idVideo;

  @nullable
  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @nullable
  @BuiltValueField(wireName: 'video_url')
  String get videoUrl;

  @nullable
  String get title;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(VideosRecordBuilder builder) => builder
    ..idVideo = ''
    ..imageUrl = ''
    ..videoUrl = ''
    ..title = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  VideosRecord._();
  factory VideosRecord([void Function(VideosRecordBuilder) updates]) =
      _$VideosRecord;

  static VideosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createVideosRecordData({
  String idVideo,
  String imageUrl,
  String videoUrl,
  String title,
}) =>
    serializers.toFirestore(
        VideosRecord.serializer,
        VideosRecord((v) => v
          ..idVideo = idVideo
          ..imageUrl = imageUrl
          ..videoUrl = videoUrl
          ..title = title));
