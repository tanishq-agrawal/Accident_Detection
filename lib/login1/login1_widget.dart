import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login1_model.dart';
export 'login1_model.dart';

class Login1Widget extends StatefulWidget {
  const Login1Widget({super.key});

  @override
  _Login1WidgetState createState() => _Login1WidgetState();
}

class _Login1WidgetState extends State<Login1Widget> {
  late Login1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Login1Model());

    _model.emailTextController ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
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
                    opacity: 0.5,
                    child: Align(
                      alignment: const AlignmentDirectional(-0.08, -0.37),
                      child: Container(
                        width: 350.0,
                        height: 280.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF150707),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.72, -0.22),
                    child: Text(
                      'Password',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.71, -0.48),
                    child: Text(
                      'Email Address',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.12, -0.38),
                    child: Container(
                      width: 325.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: const Color(0xE2FFFFFF),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(-0.33, -0.46),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: SizedBox(
                            width: 275.0,
                            child: TextFormField(
                              controller: _model.emailTextController,
                              focusNode: _model.textFieldFocusNode1,
                              autofocus: true,
                              textCapitalization: TextCapitalization.none,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintText: 'Enter your Email',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFF150707),
                                    ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF090702),
                                  ),
                              textAlign: TextAlign.start,
                              validator: _model.emailTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.12, -0.11),
                    child: Container(
                      width: 325.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: const Color(0xE2FFFFFF),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(-0.33, -0.46),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: SizedBox(
                            width: 275.0,
                            child: TextFormField(
                              controller: _model.passwordTextController,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: true,
                              textCapitalization: TextCapitalization.none,
                              obscureText: !_model.passwordVisibility,
                              decoration: InputDecoration(
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintText: 'Enter your Password',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFF150707),
                                    ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => _model.passwordVisibility =
                                        !_model.passwordVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.passwordVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    size: 22.0,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF090702),
                                  ),
                              textAlign: TextAlign.start,
                              validator: _model.passwordTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.04, 0.29),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamedAuth(
                          'home',
                          context.mounted,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.scale,
                              alignment: Alignment.bottomCenter,
                            ),
                          },
                        );

                        GoRouter.of(context).prepareAuthEvent();

                        final user = await authManager.createAccountWithEmail(
                          context,
                          _model.emailTextController.text,
                          _model.passwordTextController.text,
                        );
                        if (user == null) {
                          return;
                        }
                      },
                      text: 'Login',
                      options: FFButtonOptions(
                        width: 175.0,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFFFBA704),
                        textStyle: FlutterFlowTheme.of(context).titleMedium,
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
                    alignment: const AlignmentDirectional(-0.36, 0.94),
                    child: Text(
                      'Don\'t have an Account?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 16.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.03, 0.38),
                    child: Text(
                      '_____',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 25.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.66, 0.02),
                    child: Text(
                      'Forgot Password?',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 12.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.61, 0.95),
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
                    alignment: const AlignmentDirectional(0.07, 0.63),
                    child: FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();
                        final user =
                            await authManager.signInWithGoogle(context);
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
                        textStyle:
                            FlutterFlowTheme.of(context).titleLarge.override(
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
                        textStyle:
                            FlutterFlowTheme.of(context).titleLarge.override(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
