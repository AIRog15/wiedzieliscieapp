import '/flutter_flow/flutter_flow_util.dart';
import 'rejestracja_widget.dart' show RejestracjaWidget;
import 'package:flutter/material.dart';

class RejestracjaModel extends FlutterFlowModel<RejestracjaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailValidator;
  // State field(s) for TextField widget.
  FocusNode? nicknameFocusNode;
  TextEditingController? nicknameController;
  String? Function(BuildContext, String?)? nicknameValidator;
  // State field(s) for TextField widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  String? Function(BuildContext, String?)? passwordValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    emailFocusNode?.dispose();
    emailController?.dispose();

    nicknameFocusNode?.dispose();
    nicknameController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();
  }
}
