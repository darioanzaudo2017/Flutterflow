import '../database.dart';

class TipoActividadTable extends SupabaseTable<TipoActividadRow> {
  @override
  String get tableName => 'Tipo_actividad';

  @override
  TipoActividadRow createRow(Map<String, dynamic> data) =>
      TipoActividadRow(data);
}

class TipoActividadRow extends SupabaseDataRow {
  TipoActividadRow(super.data);

  @override
  SupabaseTable get table => TipoActividadTable();

  int get idTipoAct => getField<int>('id_tipo_act')!;
  set idTipoAct(int value) => setField<int>('id_tipo_act', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get actividad => getField<String>('actividad')!;
  set actividad(String value) => setField<String>('actividad', value);

  String? get area => getField<String>('area');
  set area(String? value) => setField<String>('area', value);

  String? get programa => getField<String>('Programa');
  set programa(String? value) => setField<String>('Programa', value);
}
