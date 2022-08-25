import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../competitions_page/competitions_page_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AddEquipeToCompetitionPageWidget extends StatefulWidget {
  const AddEquipeToCompetitionPageWidget({
    Key? key,
    this.ref,
  }) : super(key: key);

  final DocumentReference? ref;

  @override
  _AddEquipeToCompetitionPageWidgetState createState() =>
      _AddEquipeToCompetitionPageWidgetState();
}

class _AddEquipeToCompetitionPageWidgetState
    extends State<AddEquipeToCompetitionPageWidget> {
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
          'Créer une Compétition',
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
              Text(
                'Choisir L\'equipe de cette Competition :',
                style: FlutterFlowTheme.of(context).title1,
              ),
              StreamBuilder<List<EquipesRecord>>(
                stream: queryEquipesRecord(),
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
                  List<EquipesRecord> dropDownEquipesRecordList =
                      snapshot.data!;
                  return FlutterFlowDropDown(
                    options: dropDownEquipesRecordList
                        .map((e) => e.nom!)
                        .toList()
                        .toList(),
                    onChanged: (val) => setState(() => dropDownValue = val),
                    width: 180,
                    height: 50,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                    hintText: 'Please select...',
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
              Align(
                alignment: AlignmentDirectional(0, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: StreamBuilder<List<EquipesRecord>>(
                    stream: queryEquipesRecord(
                      queryBuilder: (equipesRecord) =>
                          equipesRecord.where('nom', isEqualTo: dropDownValue),
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
                      List<EquipesRecord> buttonEquipesRecordList =
                          snapshot.data!;
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final buttonEquipesRecord =
                          buttonEquipesRecordList.isNotEmpty
                              ? buttonEquipesRecordList.first
                              : null;
                      return FFButtonWidget(
                        onPressed: () async {
                          final competitionsUpdateData =
                              createCompetitionsRecordData(
                            equipe: buttonEquipesRecord!.reference,
                          );
                          await widget.ref!.update(competitionsUpdateData);
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CompetitionsPageWidget(),
                            ),
                          );
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
