import '../database.dart';

class VistaActividadesTipoActTable
    extends SupabaseTable<VistaActividadesTipoActRow> {
  @override
  String get tableName => 'vista_actividades_tipo_act';

  @override
  VistaActividadesTipoActRow createRow(Map<String, dynamic> data) =>
      VistaActividadesTipoActRow(data);
}

class VistaActividadesTipoActRow extends SupabaseDataRow {
  VistaActividadesTipoActRow(super.data);

  @override
  SupabaseTable get table => VistaActividadesTipoActTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt1 => getField<DateTime>('created_at1');
  set createdAt1(DateTime? value) => setField<DateTime>('created_at1', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  int? get idAct => getField<int>('id_act');
  set idAct(int? value) => setField<int>('id_act', value);

  String? get observacion => getField<String>('observacion');
  set observacion(String? value) => setField<String>('observacion', value);

  String? get coordenada => getField<String>('coordenada');
  set coordenada(String? value) => setField<String>('coordenada', value);

  int? get cantAdultos => getField<int>('cant_adultos');
  set cantAdultos(int? value) => setField<int>('cant_adultos', value);

  int? get cantNnya0a5 => getField<int>('cant_nnya_0a5');
  set cantNnya0a5(int? value) => setField<int>('cant_nnya_0a5', value);

  double? get lat => getField<double>('Lat');
  set lat(double? value) => setField<double>('Lat', value);

  double? get long => getField<double>('long');
  set long(double? value) => setField<double>('long', value);

  int? get cantNNyA6a12 => getField<int>('cant_NNyA_6a12');
  set cantNNyA6a12(int? value) => setField<int>('cant_NNyA_6a12', value);

  int? get cantNNyA13a18 => getField<int>('cant_NNyA_13a18');
  set cantNNyA13a18(int? value) => setField<int>('cant_NNyA_13a18', value);

  String? get modalidad => getField<String>('Modalidad');
  set modalidad(String? value) => setField<String>('Modalidad', value);

  int? get idTipoAct => getField<int>('id_tipo_act');
  set idTipoAct(int? value) => setField<int>('id_tipo_act', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get actividad => getField<String>('actividad');
  set actividad(String? value) => setField<String>('actividad', value);

  String? get area => getField<String>('area');
  set area(String? value) => setField<String>('area', value);

  String? get programa => getField<String>('Programa');
  set programa(String? value) => setField<String>('Programa', value);
}
