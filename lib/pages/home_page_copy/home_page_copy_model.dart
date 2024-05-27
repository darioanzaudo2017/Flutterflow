import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_copy_widget.dart' show HomePageCopyWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageCopyModel extends FlutterFlowModel<HomePageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Buscar)] action in IconButton widget.
  ApiCallResponse? apiResult4s3;
  // Stores action output result for [Bottom Sheet - Editar_actividad] action in IconButton widget.
  bool? edito;
  // Stores action output result for [Backend Call - API (Buscar)] action in IconButton widget.
  ApiCallResponse? apiResult4s3edit;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ActividadesStruct>();
  // Stores action output result for [Bottom Sheet - Editar_actividad] action in IconButton widget.
  bool? editar1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks.
  Future apibuscar(BuildContext context) async {
    ApiCallResponse? apiResultj5k;

    apiResultj5k = await BuscarCall.call(
      buscar: textController.text,
    );
    if ((apiResultj5k.succeeded ?? true)) {
      FFAppState().update(() {
        FFAppState().listaactividades = ((apiResultj5k?.jsonBody ?? '')
                .toList()
                .map<ActividadesStruct?>(ActividadesStruct.maybeFromMap)
                .toList() as Iterable<ActividadesStruct?>)
            .withoutNulls
            .toList()
            .cast<ActividadesStruct>();
      });
    }
  }
}
