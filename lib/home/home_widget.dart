import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
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
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
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
                                    color: Color(0xFF676D75),
                                    size: 35.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('profile');
                                  },
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.91, 0.67),
                                child: Text(
                                  'Profile',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFF676D75),
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
                                    color: Color(0xFF827BEB),
                                    size: 35.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.78, 0.64),
                                child: Text(
                                  'Home',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFF827BEB),
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
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
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
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
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
                      alignment: const AlignmentDirectional(-0.96, -0.58),
                      child: Container(
                        width: 394.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(1.12, 0.01),
                      child: Container(
                        width: 288.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.15, 0.7),
                      child: Container(
                        width: 325.0,
                        height: 120.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -0.32),
                      child: Container(
                        width: 288.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.34),
                      child: Container(
                        width: 288.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.85, -0.54),
                child: Text(
                  'User Name',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.87, -0.59),
                child: Text(
                  'Welcome Back,',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.black,
                        fontSize: 14.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.07, 0.25),
                child: FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 52.0,
                  icon: Icon(
                    Icons.contact_emergency,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 45.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.93, -0.3),
                child: Text(
                  'Vehicle \nTracking',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.05, -0.23),
                child: Text(
                  'Press the button\n to get the real time\n loaction of your vehicle ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF676D75),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.71, -0.03),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 52.0,
                  icon: Icon(
                    Icons.sos_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 40.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('liveTracking');
                  },
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.04, 0.0),
                child: Text(
                  'Having an\nEmergency?',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.84, 0.08),
                child: Text(
                  'Press the button \n  help will arrive soon.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF676D75),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.94, 0.31),
                child: Text(
                  'Emergency\nContacts',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.09, 0.36),
                child: Text(
                  'Press the button to \nadd or remove the\n emergency contacts.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF676D75),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.03, -0.36),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 52.0,
                  icon: Icon(
                    Icons.location_on,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 40.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('liveTracking');
                  },
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.52, 0.65),
                child: Text(
                  'Click on the \nbutton to get\nphoto',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.64, 0.63),
                child: FFButtonWidget(
                  onPressed: () async {
                    await launchURL(
                        'https://drive.google.com/drive/folders/1jf8uJkFrouSF2JDa4HAWs3mSodYp7I5Z');
                  },
                  text: 'Go',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFFBA704),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
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
