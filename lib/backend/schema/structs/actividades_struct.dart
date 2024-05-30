// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActividadesStruct extends BaseStruct {
  ActividadesStruct({
    String? observacion,
    String? actividad,
    int? id,
    int? cantAdultos,
    String? fecha,
    int? cantNNyA13a18,
    int? cantNNyA6a12,
    int? cantNnya0a5,
  })  : _observacion = observacion,
        _actividad = actividad,
        _id = id,
        _cantAdultos = cantAdultos,
        _fecha = fecha,
        _cantNNyA13a18 = cantNNyA13a18,
        _cantNNyA6a12 = cantNNyA6a12,
        _cantNnya0a5 = cantNnya0a5;

  // "observacion" field.
  String? _observacion;
  String get observacion => _observacion ?? '';
  set observacion(String? val) => _observacion = val;
  bool hasObservacion() => _observacion != null;

  // "actividad" field.
  String? _actividad;
  String get actividad => _actividad ?? '';
  set actividad(String? val) => _actividad = val;
  bool hasActividad() => _actividad != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "cant_adultos" field.
  int? _cantAdultos;
  int get cantAdultos => _cantAdultos ?? 0;
  set cantAdultos(int? val) => _cantAdultos = val;
  void incrementCantAdultos(int amount) => _cantAdultos = cantAdultos + amount;
  bool hasCantAdultos() => _cantAdultos != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;
  bool hasFecha() => _fecha != null;

  // "cant_NNyA_13a18" field.
  int? _cantNNyA13a18;
  int get cantNNyA13a18 => _cantNNyA13a18 ?? 0;
  set cantNNyA13a18(int? val) => _cantNNyA13a18 = val;
  void incrementCantNNyA13a18(int amount) =>
      _cantNNyA13a18 = cantNNyA13a18 + amount;
  bool hasCantNNyA13a18() => _cantNNyA13a18 != null;

  // "cant_NNyA_6a12" field.
  int? _cantNNyA6a12;
  int get cantNNyA6a12 => _cantNNyA6a12 ?? 0;
  set cantNNyA6a12(int? val) => _cantNNyA6a12 = val;
  void incrementCantNNyA6a12(int amount) =>
      _cantNNyA6a12 = cantNNyA6a12 + amount;
  bool hasCantNNyA6a12() => _cantNNyA6a12 != null;

  // "cant_nnya_0a5" field.
  int? _cantNnya0a5;
  int get cantNnya0a5 => _cantNnya0a5 ?? 0;
  set cantNnya0a5(int? val) => _cantNnya0a5 = val;
  void incrementCantNnya0a5(int amount) => _cantNnya0a5 = cantNnya0a5 + amount;
  bool hasCantNnya0a5() => _cantNnya0a5 != null;

  static ActividadesStruct fromMap(Map<String, dynamic> data) =>
      ActividadesStruct(
        observacion: data['observacion'] as String?,
        actividad: data['actividad'] as String?,
        id: castToType<int>(data['id']),
        cantAdultos: castToType<int>(data['cant_adultos']),
        fecha: data['fecha'] as String?,
        cantNNyA13a18: castToType<int>(data['cant_NNyA_13a18']),
        cantNNyA6a12: castToType<int>(data['cant_NNyA_6a12']),
        cantNnya0a5: castToType<int>(data['cant_nnya_0a5']),
      );

  static ActividadesStruct? maybeFromMap(dynamic data) => data is Map
      ? ActividadesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'observacion': _observacion,
        'actividad': _actividad,
        'id': _id,
        'cant_adultos': _cantAdultos,
        'fecha': _fecha,
        'cant_NNyA_13a18': _cantNNyA13a18,
        'cant_NNyA_6a12': _cantNNyA6a12,
        'cant_nnya_0a5': _cantNnya0a5,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'observacion': serializeParam(
          _observacion,
          ParamType.String,
        ),
        'actividad': serializeParam(
          _actividad,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'cant_adultos': serializeParam(
          _cantAdultos,
          ParamType.int,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'cant_NNyA_13a18': serializeParam(
          _cantNNyA13a18,
          ParamType.int,
        ),
        'cant_NNyA_6a12': serializeParam(
          _cantNNyA6a12,
          ParamType.int,
        ),
        'cant_nnya_0a5': serializeParam(
          _cantNnya0a5,
          ParamType.int,
        ),
      }.withoutNulls;

  static ActividadesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ActividadesStruct(
        observacion: deserializeParam(
          data['observacion'],
          ParamType.String,
          false,
        ),
        actividad: deserializeParam(
          data['actividad'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        cantAdultos: deserializeParam(
          data['cant_adultos'],
          ParamType.int,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
        cantNNyA13a18: deserializeParam(
          data['cant_NNyA_13a18'],
          ParamType.int,
          false,
        ),
        cantNNyA6a12: deserializeParam(
          data['cant_NNyA_6a12'],
          ParamType.int,
          false,
        ),
        cantNnya0a5: deserializeParam(
          data['cant_nnya_0a5'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ActividadesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ActividadesStruct &&
        observacion == other.observacion &&
        actividad == other.actividad &&
        id == other.id &&
        cantAdultos == other.cantAdultos &&
        fecha == other.fecha &&
        cantNNyA13a18 == other.cantNNyA13a18 &&
        cantNNyA6a12 == other.cantNNyA6a12 &&
        cantNnya0a5 == other.cantNnya0a5;
  }

  @override
  int get hashCode => const ListEquality().hash([
        observacion,
        actividad,
        id,
        cantAdultos,
        fecha,
        cantNNyA13a18,
        cantNNyA6a12,
        cantNnya0a5
      ]);
}

ActividadesStruct createActividadesStruct({
  String? observacion,
  String? actividad,
  int? id,
  int? cantAdultos,
  String? fecha,
  int? cantNNyA13a18,
  int? cantNNyA6a12,
  int? cantNnya0a5,
}) =>
    ActividadesStruct(
      observacion: observacion,
      actividad: actividad,
      id: id,
      cantAdultos: cantAdultos,
      fecha: fecha,
      cantNNyA13a18: cantNNyA13a18,
      cantNNyA6a12: cantNNyA6a12,
      cantNnya0a5: cantNnya0a5,
    );
