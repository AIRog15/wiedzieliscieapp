import '/flutter_flow/flutter_flow_util.dart';
import 'klikrozpocz_widget.dart' show KlikrozpoczWidget;
import 'package:flutter/material.dart';

class KlikrozpoczModel extends FlutterFlowModel<KlikrozpoczWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
