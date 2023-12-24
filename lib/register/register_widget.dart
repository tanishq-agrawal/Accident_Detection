import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'register_model.dart';
export 'register_model.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  late RegisterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();
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
              opacity: 0.5,
              child: Align(
                alignment: const AlignmentDirectional(-0.03, 0.27),
                child: Container(
                  width: 350.0,
                  height: 500.0,
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
              alignment: const AlignmentDirectional(-0.08, -0.12),
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
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: SizedBox(
                      width: 275.0,
                      child: TextFormField(
                        controller: _model.textController1,
                        focusNode: _model.textFieldFocusNode1,
                        autofocus: true,
                        textCapitalization: TextCapitalization.none,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          hintText: 'Enter you Last Name',
                          hintStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF150707),
                                  ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF090702),
                            ),
                        textAlign: TextAlign.start,
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.03, -0.6),
              child: Text(
                'Set up Your Account',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 20.0,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.65, 0.52),
              child: Text(
                'Confirm Your Password',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.73, -0.46),
              child: Text(
                'First Name',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.08, -0.38),
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
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: SizedBox(
                      width: 275.0,
                      child: TextFormField(
                        controller: _model.textController2,
                        focusNode: _model.textFieldFocusNode2,
                        autofocus: true,
                        textCapitalization: TextCapitalization.none,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          hintText: 'Enter you First Name',
                          hintStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF150707),
                                  ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF090702),
                            ),
                        textAlign: TextAlign.start,
                        validator: _model.textController2Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.73, -0.22),
              child: Text(
                'Last Name',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.08, 0.13),
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
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: SizedBox(
                      width: 275.0,
                      child: TextFormField(
                        controller: _model.textController3,
                        focusNode: _model.textFieldFocusNode3,
                        autofocus: true,
                        textCapitalization: TextCapitalization.none,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          hintText: 'Enter you Device ID',
                          hintStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF150707),
                                  ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF090702),
                            ),
                        textAlign: TextAlign.start,
                        validator: _model.textController3Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.71, 0.03),
              child: Text(
                'Device ID',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.08, 0.63),
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
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: SizedBox(
                      width: 275.0,
                      child: TextFormField(
                        controller: _model.textController4,
                        focusNode: _model.textFieldFocusNode4,
                        autofocus: true,
                        textCapitalization: TextCapitalization.none,
                        obscureText: !_model.passwordVisibility1,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          hintText: 'Confirm Your Password',
                          hintStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF150707),
                                  ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => _model.passwordVisibility1 =
                                  !_model.passwordVisibility1,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              _model.passwordVisibility1
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              size: 22.0,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF090702),
                            ),
                        textAlign: TextAlign.start,
                        validator: _model.textController4Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.69, 0.28),
              child: Text(
                'Password',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.08, 0.39),
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
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: SizedBox(
                      width: 275.0,
                      child: TextFormField(
                        controller: _model.textController5,
                        focusNode: _model.textFieldFocusNode5,
                        autofocus: true,
                        textCapitalization: TextCapitalization.none,
                        obscureText: !_model.passwordVisibility2,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          hintText: 'Enter Your Password',
                          hintStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF150707),
                                  ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => _model.passwordVisibility2 =
                                  !_model.passwordVisibility2,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              _model.passwordVisibility2
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              size: 22.0,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF090702),
                            ),
                        textAlign: TextAlign.start,
                        validator: _model.textController5Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.11, 0.88),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'AccDetails',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.scale,
                        alignment: Alignment.bottomCenter,
                      ),
                    },
                  );
                },
                text: 'Next ',
                icon: Icon(
                  Icons.navigate_next,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: 175.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
          ],
        ),
      ),
    );
  }
}
