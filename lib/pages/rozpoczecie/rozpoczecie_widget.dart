import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'rozpoczecie_model.dart';
export 'rozpoczecie_model.dart';

class RozpoczecieWidget extends StatefulWidget {
  const RozpoczecieWidget({super.key});

  @override
  State<RozpoczecieWidget> createState() => _RozpoczecieWidgetState();
}

class _RozpoczecieWidgetState extends State<RozpoczecieWidget> {
  late RozpoczecieModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RozpoczecieModel());
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
            alignment: const AlignmentDirectional(1.0, 0.0),
            children: [
              Align(
                alignment: const AlignmentDirectional(-0.04, -0.46),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.asset(
                    'assets/images/map.png',
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.94, 0.23),
                child: Text(
                  'Witaj! Kliknij ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 17.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.78, 0.23),
                child: Text(
                  'aby przejść do gry terenowej',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 17.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(-0.39, 0.24),
                child: Icon(
                  Icons.location_on,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
