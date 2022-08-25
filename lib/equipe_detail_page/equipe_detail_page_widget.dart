import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../update_equipe_page/update_equipe_page_widget.dart';
import '../update_formateur_page/update_formateur_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EquipeDetailPageWidget extends StatefulWidget {
  const EquipeDetailPageWidget({
    Key? key,
    this.test1,
  }) : super(key: key);

  final DocumentReference? test1;

  @override
  _EquipeDetailPageWidgetState createState() => _EquipeDetailPageWidgetState();
}

class _EquipeDetailPageWidgetState extends State<EquipeDetailPageWidget> {
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
        title: StreamBuilder<EquipesRecord>(
          stream: EquipesRecord.getDocument(widget.test1!),
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
            final textEquipesRecord = snapshot.data!;
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
          child: StreamBuilder<EquipesRecord>(
            stream: EquipesRecord.getDocument(widget.test1!),
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
              final columnEquipesRecord = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Nom:',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                      child: Text(
                        columnEquipesRecord.nom!,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 25,
                            ),
                      ),
                    ),
                    Text(
                      'Eleve:',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    StreamBuilder<EquipesRecord>(
                      stream: EquipesRecord.getDocument(
                          columnEquipesRecord.reference),
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
                        final listViewEquipesRecord = snapshot.data!;
                        return Builder(
                          builder: (context) {
                            final todolist =
                                listViewEquipesRecord.tabnom!.toList();
                            return InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        UpdateFormateurPageWidget(),
                                  ),
                                );
                              },
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: todolist.length,
                                itemBuilder: (context, todolistIndex) {
                                  final todolistItem = todolist[todolistIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        55, 0, 0, 0),
                                    child: Text(
                                      todolistItem,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 25,
                                          ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        );
                      },
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
                            builder: (context) => UpdateEquipePageWidget(
                              equipe: widget.test1,
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
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
                          await widget.test1!.delete();
                          Navigator.pop(context);
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
