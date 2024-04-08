import '/flutter_flow/flutter_flow_util.dart';
import 'warszawa_widget.dart' show WarszawaWidget;
import 'package:flutter/material.dart';

class WarszawaModel extends FlutterFlowModel<WarszawaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
