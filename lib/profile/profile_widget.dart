import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF2C2C2C),
        body: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, -0.93),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image.asset(
                  'assets/images/Screenshot_2023-12-17_041609.png',
                  width: 268.0,
                  height: 106.0,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Opacity(
              opacity: 0.9,
              child: Align(
                alignment: const AlignmentDirectional(-0.03, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 90.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF150707),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.82, -0.64),
                        child: FlutterFlowIconButton(
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: const Icon(
                            Icons.person,
                            color: Color(0xFF827BEB),
                            size: 35.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.91, 0.67),
                        child: Text(
                          'Profile',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF827BEB),
                                    fontSize: 16.0,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.83, -0.64),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: const Icon(
                            Icons.home_outlined,
                            color: Color(0xFF676D75),
                            size: 35.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('home');
                          },
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.78, 0.64),
                        child: Text(
                          'Home',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF676D75),
                                    fontSize: 16.0,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.22, -0.64),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: const Icon(
                            Icons.call,
                            color: Color(0xFF676D75),
                            size: 35.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('CallSupport');
                          },
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.23, 0.64),
                        child: Text(
                          'Call Support',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF676D75),
                                    fontSize: 16.0,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.43, 0.64),
                        child: Text(
                          'History',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF676D75),
                                    fontSize: 16.0,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.36, -0.64),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: const Icon(
                            Icons.history_sharp,
                            color: Color(0xFF676D75),
                            size: 35.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('history');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.01, -0.61),
              child: Container(
                width: 265.0,
                height: 45.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFFBA704),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.05, -0.6),
              child: Text(
                'Profile',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
