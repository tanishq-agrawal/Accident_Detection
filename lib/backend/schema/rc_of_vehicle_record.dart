import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RcOfVehicleRecord extends FirestoreRecord {
  RcOfVehicleRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image = snapshotData['Image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Rc_of_Vehicle');

  static Stream<RcOfVehicleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RcOfVehicleRecord.fromSnapshot(s));

  static Future<RcOfVehicleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RcOfVehicleRecord.fromSnapshot(s));

  static RcOfVehicleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RcOfVehicleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RcOfVehicleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RcOfVehicleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RcOfVehicleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RcOfVehicleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRcOfVehicleRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class RcOfVehicleRecordDocumentEquality implements Equality<RcOfVehicleRecord> {
  const RcOfVehicleRecordDocumentEquality();

  @override
  bool equals(RcOfVehicleRecord? e1, RcOfVehicleRecord? e2) {
    return e1?.image == e2?.image;
  }

  @override
  int hash(RcOfVehicleRecord? e) => const ListEquality().hash([e?.image]);

  @override
  bool isValidKey(Object? o) => o is RcOfVehicleRecord;
}
