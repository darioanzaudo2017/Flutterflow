import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_actividad_widget.dart' show EditarActividadWidget;
import 'package:flutter/material.dart';

class EditarActividadModel extends FlutterFlowModel<EditarActividadWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField0a5 widget.
  FocusNode? textField0a5FocusNode;
  TextEditingController? textField0a5TextController;
  String? Function(BuildContext, String?)? textField0a5TextControllerValidator;
  // State field(s) for TextFieldn6a12 widget.
  FocusNode? textFieldn6a12FocusNode;
  TextEditingController? textFieldn6a12TextController;
  String? Function(BuildContext, String?)?
      textFieldn6a12TextControllerValidator;
  // State field(s) for TextField13a18 widget.
  FocusNode? textField13a18FocusNode;
  TextEditingController? textField13a18TextController;
  String? Function(BuildContext, String?)?
      textField13a18TextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textField0a5FocusNode?.dispose();
    textField0a5TextController?.dispose();

    textFieldn6a12FocusNode?.dispose();
    textFieldn6a12TextController?.dispose();

    textField13a18FocusNode?.dispose();
    textField13a18TextController?.dispose();
  }
}
