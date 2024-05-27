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

  int? get totalNnya => getField<int>('total_nnya');
  set totalNnya(int? value) => setField<int>('total_nnya', value);

  int? get cantidadActividades => getField<int>('cantidad_actividades');
  set cantidadActividades(int? value) =>
      setField<int>('cantidad_actividades', value);
}
