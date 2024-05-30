import '../database.dart';

class ResumenActividadesTable extends SupabaseTable<ResumenActividadesRow> {
  @override
  String get tableName => 'resumen_actividades';

  @override
  ResumenActividadesRow createRow(Map<String, dynamic> data) =>
      ResumenActividadesRow(data);
}

class ResumenActividadesRow extends SupabaseDataRow {
  ResumenActividadesRow(super.data);

  @override
  SupabaseTable get table => ResumenActividadesTable();

  String? get actividad => getField<String>('actividad');
  set actividad(String? value) => setField<String>('actividad', value);

  int? get totalAdultos => getField<int>('total_adultos');
  set totalAdultos(int? value) => setField<int>('total_adultos', value);

  int? get totalNnya0a5 => getField<int>('total_nnya_0a5');
  set totalNnya0a5(int? value) => setField<int>('total_nnya_0a5', value);

  int? get totalNnya6a12 => getField<int>('total_nnya6a12');
  set totalNnya6a12(int? value) => setField<int>('total_nnya6a12', value);

  int? get totalNnya13a18 => getField<int>('total_nnya_13a18');
  set totalNnya13a18(int? value) => setField<int>('total_nnya_13a18', value);

  int? get cantidadActividades => getField<int>('cantidad_actividades');
  set cantidadActividades(int? value) =>
      setField<int>('cantidad_actividades', value);
}
