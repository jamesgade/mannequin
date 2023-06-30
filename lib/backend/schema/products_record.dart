import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  bool hasThumbnail() => _thumbnail != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "purchaseType" field.
  String? _purchaseType;
  String get purchaseType => _purchaseType ?? '';
  bool hasPurchaseType() => _purchaseType != null;

  // "linkToBuy" field.
  String? _linkToBuy;
  String get linkToBuy => _linkToBuy ?? '';
  bool hasLinkToBuy() => _linkToBuy != null;

  // "subcategory" field.
  String? _subcategory;
  String get subcategory => _subcategory ?? '';
  bool hasSubcategory() => _subcategory != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  // "favouritedUsers" field.
  List<String>? _favouritedUsers;
  List<String> get favouritedUsers => _favouritedUsers ?? const [];
  bool hasFavouritedUsers() => _favouritedUsers != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _thumbnail = snapshotData['thumbnail'] as String?;
    _images = getDataList(snapshotData['images']);
    _gender = snapshotData['gender'] as String?;
    _category = snapshotData['category'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _purchaseType = snapshotData['purchaseType'] as String?;
    _linkToBuy = snapshotData['linkToBuy'] as String?;
    _subcategory = snapshotData['subcategory'] as String?;
    _size = snapshotData['size'] as String?;
    _favouritedUsers = getDataList(snapshotData['favouritedUsers']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  String? description,
  DateTime? createdAt,
  DateTime? modifiedAt,
  String? thumbnail,
  String? gender,
  String? category,
  DocumentReference? userRef,
  String? purchaseType,
  String? linkToBuy,
  String? subcategory,
  String? size,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'thumbnail': thumbnail,
      'gender': gender,
      'category': category,
      'userRef': userRef,
      'purchaseType': purchaseType,
      'linkToBuy': linkToBuy,
      'subcategory': subcategory,
      'size': size,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.thumbnail == e2?.thumbnail &&
        listEquality.equals(e1?.images, e2?.images) &&
        e1?.gender == e2?.gender &&
        e1?.category == e2?.category &&
        e1?.userRef == e2?.userRef &&
        e1?.purchaseType == e2?.purchaseType &&
        e1?.linkToBuy == e2?.linkToBuy &&
        e1?.subcategory == e2?.subcategory &&
        e1?.size == e2?.size &&
        listEquality.equals(e1?.favouritedUsers, e2?.favouritedUsers);
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.createdAt,
        e?.modifiedAt,
        e?.thumbnail,
        e?.images,
        e?.gender,
        e?.category,
        e?.userRef,
        e?.purchaseType,
        e?.linkToBuy,
        e?.subcategory,
        e?.size,
        e?.favouritedUsers
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
