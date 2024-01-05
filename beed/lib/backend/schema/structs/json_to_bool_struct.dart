// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JsonToBoolStruct extends FFFirebaseStruct {
  JsonToBoolStruct({
    String? end,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _end = end,
        super(firestoreUtilData);

  // "end" field.
  String? _end;
  String get end => _end ?? '';
  set end(String? val) => _end = val;
  bool hasEnd() => _end != null;

  static JsonToBoolStruct fromMap(Map<String, dynamic> data) =>
      JsonToBoolStruct(
        end: data['end'] as String?,
      );

  static JsonToBoolStruct? maybeFromMap(dynamic data) => data is Map
      ? JsonToBoolStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'end': _end,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'end': serializeParam(
          _end,
          ParamType.String,
        ),
      }.withoutNulls;

  static JsonToBoolStruct fromSerializableMap(Map<String, dynamic> data) =>
      JsonToBoolStruct(
        end: deserializeParam(
          data['end'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'JsonToBoolStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is JsonToBoolStruct && end == other.end;
  }

  @override
  int get hashCode => const ListEquality().hash([end]);
}

JsonToBoolStruct createJsonToBoolStruct({
  String? end,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    JsonToBoolStruct(
      end: end,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

JsonToBoolStruct? updateJsonToBoolStruct(
  JsonToBoolStruct? jsonToBool, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    jsonToBool
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addJsonToBoolStructData(
  Map<String, dynamic> firestoreData,
  JsonToBoolStruct? jsonToBool,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (jsonToBool == null) {
    return;
  }
  if (jsonToBool.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && jsonToBool.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final jsonToBoolData = getJsonToBoolFirestoreData(jsonToBool, forFieldValue);
  final nestedData = jsonToBoolData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = jsonToBool.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getJsonToBoolFirestoreData(
  JsonToBoolStruct? jsonToBool, [
  bool forFieldValue = false,
]) {
  if (jsonToBool == null) {
    return {};
  }
  final firestoreData = mapToFirestore(jsonToBool.toMap());

  // Add any Firestore field values
  jsonToBool.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getJsonToBoolListFirestoreData(
  List<JsonToBoolStruct>? jsonToBools,
) =>
    jsonToBools?.map((e) => getJsonToBoolFirestoreData(e, true)).toList() ?? [];
