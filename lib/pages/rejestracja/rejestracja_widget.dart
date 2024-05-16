import 'package:supabase_flutter/supabase_flutter.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'rejestracja_model.dart';
export 'rejestracja_model.dart';

final supabase = Supabase.instance.client;  // connect to database

class RejestracjaWidget extends StatefulWidget {
  const RejestracjaWidget({super.key});

  @override
  State<RejestracjaWidget> createState() => _RejestracjaWidgetState();
}

class _RejestracjaWidgetState extends State<RejestracjaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  late RejestracjaModel _model;

  // all the input stuff
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RejestracjaModel());

    _model.emailController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.nicknameController ??= TextEditingController();
    _model.nicknameFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).accent4,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/ezgif.com-optimize_(1).gif',
                    height: 290.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.85),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(51.5, 0.0, 51.5, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.nicknameController.text == "") {
                        // ania makes an error msg and cancels transition
                      } else if (_model.emailController.text == "") {
                        // ania makes an error msg and cancels transition
                      } else if (_model.passwordController.text == "") {
                        // ania makes an error msg and cancels transition
                      } else {
                        final AuthResponse res = await supabase.auth.signUp(    // sign up with email, password, and display name
                          email: _model.emailController.text,
                          password: _model.passwordController.text,
                          data: {'display_name': _model.nicknameController.text},
                        );
                        final Session? session = res.session;
                        final User? user = res.user;
                      }
                      context.pushNamed(
                        'rozpoczecie',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 2000),
                          ),
                        },
                      );
                    },
                    text: 'Zarejestruj się\n',
                    options: FFButtonOptions(
                      width: 290.0,
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF0A0303),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -0.12),
                child: Container(
                  width: 393.0,
                  height: 100.0,
                  decoration: const BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Rejestracja:',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ),
              Align(                                                                        // email stuff
                alignment: const AlignmentDirectional(0.0, 0.3),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(51.5, 0.0, 51.5, 0.0),
                  child: SizedBox(
                    width: 290.0,
                    child: TextFormField(
                      controller: _model.emailController,
                      focusNode: _model.emailFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'adres email',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF0A0303),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 40.0,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF0A0303),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF0A0303),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            51.5, 0.0, 51.5, 0.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.start,
                      minLines: null,
                      validator:
                          _model.emailValidator.asValidator(context),
                    ),
                  ),
                ),
              ),
              Align(                                                                        // nickname stuff
                alignment: const AlignmentDirectional(0.0, 0.11),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(51.5, 0.0, 51.5, 0.0),
                  child: SizedBox(
                    width: 290.0,
                    child: TextFormField(
                      controller: _model.nicknameController,
                      focusNode: _model.nicknameFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'nazwa użytkownika',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF0A0303),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 40.0,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF0A0303),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF0A0303),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            51.5, 0.0, 51.5, 0.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.start,
                      minLines: null,
                      validator:
                          _model.nicknameValidator.asValidator(context),
                    ),
                  ),
                ),
              ),
              Align(                                                                        // password stuff
                alignment: const AlignmentDirectional(0.0, 0.5),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(51.5, 0.0, 51.5, 0.0),
                  child: SizedBox(
                    width: 290.0,
                    child: TextFormField(
                      controller: _model.passwordController,
                      focusNode: _model.passwordFocusNode,
                      autofocus: true,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'hasło',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF0A0303),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 40.0,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF0A0303),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF0A0303),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            51.5, 0.0, 51.5, 0.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.start,
                      minLines: null,
                      validator:
                          _model.passwordValidator.asValidator(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
