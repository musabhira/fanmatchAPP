import '/flutter_flow/flutter_flow_util.dart';
import 'description_page_widget.dart' show DescriptionPageWidget;
import 'package:flutter/material.dart';

class DescriptionPageModel extends FlutterFlowModel<DescriptionPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
