import '/flutter_flow/flutter_flow_util.dart';
import 'rozpoczecie_widget.dart' show RozpoczecieWidget;
import 'package:flutter/material.dart';

class RozpoczecieModel extends FlutterFlowModel<RozpoczecieWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
