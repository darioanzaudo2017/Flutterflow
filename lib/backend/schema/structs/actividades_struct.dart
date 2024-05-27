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
    int? cantNnya,
    String? fecha,
  })  : _observacion = observacion,
        _actividad = actividad,
        _id = id,
        _cantAdultos = cantAdultos,
        _cantNnya = cantNnya,
        _fecha = fecha;

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

  // "cant_nnya" field.
  int? _cantNnya;
  int get cantNnya => _cantNnya ?? 0;
  set cantNnya(int? val) => _cantNnya = val;
  void incrementCantNnya(int amount) => _cantNnya = cantNnya + amount;
  bool hasCantNnya() => _cantNnya != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;
  bool hasFecha() => _fecha != null;

  static ActividadesStruct fromMap(Map<String, dynamic> data) =>
      ActividadesStruct(
        observacion: data['observacion'] as String?,
        actividad: data['actividad'] as String?,
        id: castToType<int>(data['id']),
        cantAdultos: castToType<int>(data['cant_adultos']),
        cantNnya: castToType<int>(data['cant_nnya']),
        fecha: data['fecha'] as String?,
      );

  static ActividadesStruct? maybeFromMap(dynamic data) => data is Map
      ? ActividadesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'observacion': _observacion,
        'actividad': _actividad,
        'id': _id,
        'cant_adultos': _cantAdultos,
        'cant_nnya': _cantNnya,
        'fecha': _fecha,
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
        'cant_nnya': serializeParam(
          _cantNnya,
          ParamType.int,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
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
        cantNnya: deserializeParam(
          data['cant_nnya'],
          ParamType.int,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
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
        cantNnya == other.cantNnya &&
        fecha == other.fecha;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([observacion, actividad, id, cantAdultos, cantNnya, fecha]);
}

ActividadesStruct createActividadesStruct({
  String? observacion,
  String? actividad,
  int? id,
  int? cantAdultos,
  int? cantNnya,
  String? fecha,
}) =>
    ActividadesStruct(
      observacion: observacion,
      actividad: actividad,
      id: id,
      cantAdultos: cantAdultos,
      cantNnya: cantNnya,
      fecha: fecha,
    );
