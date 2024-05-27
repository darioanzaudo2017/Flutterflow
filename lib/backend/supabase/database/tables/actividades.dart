import '../database.dart';

class ActividadesTable extends SupabaseTable<ActividadesRow> {
  @override
  String get tableName => 'Actividades';

  @override
  ActividadesRow createRow(Map<String, dynamic> data) => ActividadesRow(data);
}

class ActividadesRow extends SupabaseDataRow {
  ActividadesRow(super.data);

  @override
  SupabaseTable get table => ActividadesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt1 => getField<DateTime>('created_at1')!;
  set createdAt1(DateTime value) => setField<DateTime>('created_at1', value);

  DateTime get fecha => getField<DateTime>('fecha')!;
  set fecha(DateTime value) => setField<DateTime>('fecha', value);

  int get idAct => getField<int>('id_act')!;
  set idAct(int value) => setField<int>('id_act', value);

  String? get observacion => getField<String>('observacion');
  set observacion(String? value) => setField<String>('observacion', value);

  String? get coordenada => getField<String>('coordenada');
  set coordenada(String? value) => setField<String>('coordenada', value);

  int get cantAdultos => getField<int>('cant_adultos')!;
  set cantAdultos(int value) => setField<int>('cant_adultos', value);

  int get cantNnya => getField<int>('cant_nnya')!;
  set cantNnya(int value) => setField<int>('cant_nnya', value);

  double? get lat => getField<double>('Lat');
  set lat(double? value) => setField<double>('Lat', value);

  double? get long => getField<double>('long');
  set long(double? value) => setField<double>('long', value);
}
