import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AddSessionPageWidget extends StatefulWidget {
  const AddSessionPageWidget({Key? key}) : super(key: key);

  @override
  _AddSessionPageWidgetState createState() => _AddSessionPageWidgetState();
}

class _AddSessionPageWidgetState extends State<AddSessionPageWidget> {
  DateTime? datePicked1;
  DateTime? datePicked2;
  String? dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Créer une Session',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                    child: Text(
                      'Date de Debut:',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 60,
                    icon: FaIcon(
                      FontAwesomeIcons.solidCalendarAlt,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30,
                    ),
                    onPressed: () async {
                      await DatePicker.showDatePicker(
                        context,
                        showTitleActions: true,
                        onConfirm: (date) {
                          setState(() => datePicked1 = date);
                        },
                        currentTime: getCurrentTimestamp,
                        minTime: DateTime(0, 0, 0),
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                    child: Text(
                      'Date du Fin:',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 60,
                    icon: FaIcon(
                      FontAwesomeIcons.solidCalendarAlt,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30,
                    ),
                    onPressed: () async {
                      await DatePicker.showDatePicker(
                        context,
                        showTitleActions: true,
                        onConfirm: (date) {
                          setState(() => datePicked2 = date);
                        },
                        currentTime: datePicked1!,
                        minTime: datePicked1!,
                      );
                    },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 185, 0),
                child: Text(
                  'Formation :',
                  style: FlutterFlowTheme.of(context).title3,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 150, 0),
                child: FutureBuilder<List<FormationsRecord>>(
                  future: queryFormationsRecordOnce(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<FormationsRecord> dropDownFormationsRecordList =
                        snapshot.data!;
                    return FlutterFlowDropDown(
                      options: dropDownFormationsRecordList
                          .map((e) => e.libelle!)
                          .toList()
                          .toList(),
                      onChanged: (val) => setState(() => dropDownValue = val),
                      width: 180,
                      height: 50,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                      hintText: 'Selectionner ',
                      fillColor: Colors.white,
                      elevation: 2,
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                      borderRadius: 0,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      hidesUnderline: true,
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: StreamBuilder<List<FormationsRecord>>(
                    stream: queryFormationsRecord(
                      queryBuilder: (formationsRecord) => formationsRecord
                          .where('libelle', isEqualTo: dropDownValue),
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }
                      List<FormationsRecord> buttonFormationsRecordList =
                          snapshot.data!;
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final buttonFormationsRecord =
                          buttonFormationsRecordList.isNotEmpty
                              ? buttonFormationsRecordList.first
                              : null;
                      return FFButtonWidget(
                        onPressed: () async {
                          final sessionsCreateData = createSessionsRecordData(
                            dateD: datePicked1,
                            formation: buttonFormationsRecord!.reference,
                          );
                          await SessionsRecord.collection
                              .doc()
                              .set(sessionsCreateData);
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Formateur Ajouter'),
                                content: Text('ajout avec success'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                          Navigator.pop(context);
                        },
                        text: 'Sauvgarder',
                        options: FFButtonOptions(
                          width: 340,
                          height: 60,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                        ),
                      );
                    },
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
