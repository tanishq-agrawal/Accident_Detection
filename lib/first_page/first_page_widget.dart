import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'first_page_model.dart';
export 'first_page_model.dart';

class FirstPageWidget extends StatefulWidget {
  const FirstPageWidget({super.key});

  @override
  _FirstPageWidgetState createState() => _FirstPageWidgetState();
}

class _FirstPageWidgetState extends State<FirstPageWidget> {
  late FirstPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FirstPageModel());
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
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Screenshot_2023-12-13_130425.png',
                width: 395.0,
                height: 936.0,
                fit: BoxFit.fill,
              ),
            ),
            Opacity(
              opacity: 0.7,
              child: Align(
                alignment: const AlignmentDirectional(0.0, 1.03),
                child: Container(
                  width: 413.0,
                  height: 417.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF150707),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -0.6),
              child: Text(
                'WELCOME \nTO \nSAFEGUARD 360 ',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: const Color(0xFFE4E4E4),
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.07, 0.25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  'assets/images/Screenshot_2023-12-13_125929.png',
                  width: 300.0,
                  height: 117.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.07, 0.79),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Sign in with Apple',
                icon: const FaIcon(
                  FontAwesomeIcons.apple,
                ),
                options: FFButtonOptions(
                  width: 275.0,
                  height: 40.0,
                  padding: const EdgeInsets.all(15.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xE2FFFFFF),
                  textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Outfit',
                        color: const Color(0xFF090702),
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.07, 0.47),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('login1');
                },
                text: 'Login',
                icon: const Icon(
                  Icons.login,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: 275.0,
                  height: 40.0,
                  padding: const EdgeInsets.all(15.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xE2FFFFFF),
                  textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Outfit',
                        color: const Color(0xFF090702),
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Color(0xFF150707),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.07, 0.63),
              child: FFButtonWidget(
                onPressed: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  final user = await authManager.signInWithGoogle(context);
                  if (user == null) {
                    return;
                  }

                  context.goNamedAuth('login1', context.mounted);
                },
                text: 'Sign in with Google',
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                ),
                options: FFButtonOptions(
                  width: 275.0,
                  height: 40.0,
                  padding: const EdgeInsets.all(15.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xE2FFFFFF),
                  textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Outfit',
                        color: const Color(0xFF090702),
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Color(0xFF150707),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.57, 0.96),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('Register');
                },
                child: Text(
                  'Sign Up',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFFFBA704),
                        fontSize: 17.0,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.41, 0.96),
              child: Text(
                'Don\'t have an Account?',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 16.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
