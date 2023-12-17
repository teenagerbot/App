import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "post_text" field.
  String? _postText;
  String get postText => _postText ?? '';
  bool hasPostText() => _postText != null;

  // "image_post" field.
  String? _imagePost;
  String get imagePost => _imagePost ?? '';
  bool hasImagePost() => _imagePost != null;

  // "time_post" field.
  DateTime? _timePost;
  DateTime? get timePost => _timePost;
  bool hasTimePost() => _timePost != null;

  void _initializeFields() {
    _postText = snapshotData['post_text'] as String?;
    _imagePost = snapshotData['image_post'] as String?;
    _timePost = snapshotData['time_post'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? postText,
  String? imagePost,
  DateTime? timePost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post_text': postText,
      'image_post': imagePost,
      'time_post': timePost,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    return e1?.postText == e2?.postText &&
        e1?.imagePost == e2?.imagePost &&
        e1?.timePost == e2?.timePost;
  }

  @override
  int hash(PostsRecord? e) =>
      const ListEquality().hash([e?.postText, e?.imagePost, e?.timePost]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
