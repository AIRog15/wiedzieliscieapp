import '/flutter_flow/flutter_flow_util.dart';
import 'logowanie_widget.dart' show LogowanieWidget;
import 'package:flutter/material.dart';

class LogowanieModel extends FlutterFlowModel<LogowanieWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  String? Function(BuildContext, String?)? passwordValidator;
  // State field(s) for TextField widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    passwordFocusNode?.dispose();
    passwordController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();
  }
}
