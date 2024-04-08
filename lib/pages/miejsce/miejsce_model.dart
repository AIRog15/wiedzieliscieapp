import '/flutter_flow/flutter_flow_util.dart';
import 'miejsce_widget.dart' show MiejsceWidget;
import 'package:flutter/material.dart';

class MiejsceModel extends FlutterFlowModel<MiejsceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
