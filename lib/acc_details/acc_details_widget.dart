import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'acc_details_model.dart';
export 'acc_details_model.dart';

class AccDetailsWidget extends StatefulWidget {
  const AccDetailsWidget({super.key});

  @override
  _AccDetailsWidgetState createState() => _AccDetailsWidgetState();
}

class _AccDetailsWidgetState extends State<AccDetailsWidget> {
  late AccDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccDetailsModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
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
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF090702),
                                  ),
                          hintText: 'Enter you Address',
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
              alignment: const AlignmentDirectional(0.38, 0.52),
              child: Text(
                'Blood Type',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.73, -0.46),
              child: Text(
                'Vehicle Number',
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
                          hintText: 'Enter you Vehicle Number',
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
                'Address',
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
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.71, 0.03),
              child: Text(
                'Date of Birth',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.69, 0.28),
              child: Text(
                'Upload RC of Vehicle',
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
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.11, 0.88),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('home');
                },
                text: 'Complete',
                options: FFButtonOptions(
                  width: 175.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFF38FB04),
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
              alignment: const AlignmentDirectional(0.74, 0.13),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.date_range_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  final datePickedDate = await showDatePicker(
                    context: context,
                    initialDate:
                        DateTime.fromMicrosecondsSinceEpoch(1702924200000000),
                    firstDate: (DateTime.fromMicrosecondsSinceEpoch(
                            -1991971800000000) ??
                        DateTime(1900)),
                    lastDate: DateTime(2050),
                    builder: (context, child) {
                      return wrapInMaterialDatePickerTheme(
                        context,
                        child!,
                        headerBackgroundColor:
                            FlutterFlowTheme.of(context).primary,
                        headerForegroundColor:
                            FlutterFlowTheme.of(context).info,
                        headerTextStyle:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Outfit',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.w600,
                                ),
                        pickerBackgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        pickerForegroundColor:
                            FlutterFlowTheme.of(context).primaryText,
                        selectedDateTimeBackgroundColor:
                            FlutterFlowTheme.of(context).primary,
                        selectedDateTimeForegroundColor:
                            FlutterFlowTheme.of(context).info,
                        actionButtonForegroundColor:
                            FlutterFlowTheme.of(context).primaryText,
                        iconSize: 30.0,
                      );
                    },
                  );

                  if (datePickedDate != null) {
                    safeSetState(() {
                      _model.datePicked = DateTime(
                        datePickedDate.year,
                        datePickedDate.month,
                        datePickedDate.day,
                      );
                    });
                  }
                },
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.33, 0.12),
              child: Text(
                valueOrDefault<String>(
                  dateTimeFormat('d/M/y', _model.datePicked),
                  'date',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: const Color(0xFF090702),
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.74, 0.37),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.cloud_upload_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.62, 0.62),
              child: FlutterFlowDropDown<String>(
                controller: _model.dropDownValueController1 ??=
                    FormFieldController<String>(null),
                options: const ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'],
                onChanged: (val) => setState(() => _model.dropDownValue1 = val),
                width: 144.0,
                height: 45.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: const Color(0xFF090702),
                    ),
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: const Color(0xE2FFFFFF),
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2.0,
                borderRadius: 30.0,
                margin: const EdgeInsets.all(10.0),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.68, 0.52),
              child: Text(
                'Sex',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.73, 0.62),
              child: FlutterFlowDropDown<String>(
                controller: _model.dropDownValueController2 ??=
                    FormFieldController<String>(null),
                options: const ['Male', 'Female', 'Other'],
                onChanged: (val) => setState(() => _model.dropDownValue2 = val),
                width: 144.0,
                height: 45.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: const Color(0xFF090702),
                    ),
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: const Color(0xE2FFFFFF),
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2.0,
                borderRadius: 30.0,
                margin: const EdgeInsets.all(10.0),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
