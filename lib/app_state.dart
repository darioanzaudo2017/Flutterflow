import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<ActividadesStruct> _listaactividades = [];
  List<ActividadesStruct> get listaactividades => _listaactividades;
  set listaactividades(List<ActividadesStruct> value) {
    _listaactividades = value;
  }

  void addToListaactividades(ActividadesStruct value) {
    _listaactividades.add(value);
  }

  void removeFromListaactividades(ActividadesStruct value) {
    _listaactividades.remove(value);
  }

  void removeAtIndexFromListaactividades(int index) {
    _listaactividades.removeAt(index);
  }

  void updateListaactividadesAtIndex(
    int index,
    ActividadesStruct Function(ActividadesStruct) updateFn,
  ) {
    _listaactividades[index] = updateFn(_listaactividades[index]);
  }

  void insertAtIndexInListaactividades(int index, ActividadesStruct value) {
    _listaactividades.insert(index, value);
  }
}
