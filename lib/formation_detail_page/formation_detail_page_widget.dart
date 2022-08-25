import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../update_formation_page/update_formation_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FormationDetailPageWidget extends StatefulWidget {
  const FormationDetailPageWidget({
    Key? key,
    this.test2,
    this.testeleve,
  }) : super(key: key);

  final DocumentReference? test2;
  final DocumentReference? testeleve;

  @override
  _FormationDetailPageWidgetState createState() =>
      _FormationDetailPageWidgetState();
}

class _FormationDetailPageWidgetState extends State<FormationDetailPageWidget> {
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
        title: StreamBuilder<FormationsRecord>(
          stream: FormationsRecord.getDocument(widget.test2!),
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
            final textFormationsRecord = snapshot.data!;
            return Text(
              'Details',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            );
          },
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: StreamBuilder<FormationsRecord>(
            stream: FormationsRecord.getDocument(widget.test2!),
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
              final columnFormationsRecord = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Libelle:',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                      child: StreamBuilder<FormationsRecord>(
                        stream: FormationsRecord.getDocument(widget.test2!),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          final textFormationsRecord = snapshot.data!;
                          return Text(
                            textFormationsRecord.libelle!,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 25,
                                    ),
                          );
                        },
                      ),
                    ),
                    Text(
                      'Date de Debut:',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                      child: Text(
                        dateTimeFormat(
                            'MMMMEEEEd', columnFormationsRecord.dateD!),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 25,
                            ),
                      ),
                    ),
                    Text(
                      'Date de Fin: ',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                      child: Text(
                        dateTimeFormat(
                            'MMMMEEEEd', columnFormationsRecord.dateF!),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 25,
                            ),
                      ),
                    ),
                    Text(
                      'Prix:',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                          child: Text(
                            columnFormationsRecord.prix!.toString(),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 25,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Text(
                            'DT',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 25,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Formateur:',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                          child: StreamBuilder<FormateursRecord>(
                            stream: FormateursRecord.getDocument(
                                columnFormationsRecord.formateur!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              final textFormateursRecord = snapshot.data!;
                              return Text(
                                textFormateursRecord.nom!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 25,
                                    ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: StreamBuilder<FormateursRecord>(
                            stream: FormateursRecord.getDocument(
                                columnFormationsRecord.formateur!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              final textFormateursRecord = snapshot.data!;
                              return Text(
                                textFormateursRecord.prenom!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 25,
                                    ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    FlutterFlowIconButton(
                      borderColor: Color(0xFF4B39EF),
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      fillColor: Color(0xFF4B39EF),
                      icon: Icon(
                        Icons.mode_edit,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UpdateFormationPageWidget(
                              test2: widget.test2,
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: FlutterFlowIconButton(
                        borderColor: Color(0xFF4B39EF),
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        fillColor: Color(0xFF4B39EF),
                        icon: Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () async {
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Supprimer'),
                                    content: Text(
                                        'Supprimer cette formation \nEst-ce que vous etes Sure?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Confirm'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            await widget.test2!.delete();
                            Navigator.pop(context);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
