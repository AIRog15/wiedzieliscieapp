import 'package:supabase_flutter/supabase_flutter.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'logowanie_model.dart';
export 'logowanie_model.dart';

final supabase = Supabase.instance.client;  // connect to database

class LogowanieWidget extends StatefulWidget {
  const LogowanieWidget({super.key});

  @override
  State<LogowanieWidget> createState() => _LogowanieWidgetState();
}

class _LogowanieWidgetState extends State<LogowanieWidget> {
  late LogowanieModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogowanieModel());

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    _model.emailController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();
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
                alignment: const AlignmentDirectional(-0.02, 0.72),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(51.5, 0.0, 51.5, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.emailController.text == "") {
                        // ania makes an error msg and cancels transition
                      } else if (_model.passwordController.text == "") {
                        // ania makes an error msg and cancels transition
                      } else {                                                              // if username and password are "correct" (for now it just checks if they are not empty)
                        final AuthResponse res = await supabase.auth.signInWithPassword(    // sign in with email and password only here
                          email: _model.emailController.text,
                          password: _model.passwordController.text,
                        );
                        final Session? session = res.session;
                        final User? user = res.user;
                        // transition only happens here
                      }
                      context.pushNamed(
                        'profil',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 4000),
                          ),
                        },
                      );
                    },
                    text: 'Zaloguj się',
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
                alignment: const AlignmentDirectional(0.0, 0.3),
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
              Align(
                alignment: const AlignmentDirectional(0.0, 0.11),
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
              Align(
                alignment: const AlignmentDirectional(2.57, -0.1),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(141.0, 0.0, 141.0, 0.0),
                  child: Text(
                    'Logowanie:',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
