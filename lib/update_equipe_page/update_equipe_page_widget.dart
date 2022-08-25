import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateEquipePageWidget extends StatefulWidget {
  const UpdateEquipePageWidget({
    Key? key,
    this.equipe,
  }) : super(key: key);

  final DocumentReference? equipe;

  @override
  _UpdateEquipePageWidgetState createState() => _UpdateEquipePageWidgetState();
}

class _UpdateEquipePageWidgetState extends State<UpdateEquipePageWidget> {
  List<String>? choiceChipsValues;
  TextEditingController? nomController;
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
          'Modifier Equipe',
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 16),
                child: StreamBuilder<EquipesRecord>(
                  stream: EquipesRecord.getDocument(widget.equipe!),
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
                    final nomEquipesRecord = snapshot.data!;
                    return TextFormField(
                      controller: nomController ??= TextEditingController(
                        text: nomEquipesRecord.nom,
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'nom d\'Equipe',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 200, 0),
                child: Text(
                  'Eleves:',
                  style: FlutterFlowTheme.of(context).title3,
                ),
              ),
              StreamBuilder<List<EleveRecord>>(
                stream: queryEleveRecord(),
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
                  List<EleveRecord> choiceChipsEleveRecordList = snapshot.data!;
                  return FlutterFlowChoiceChips(
                    initiallySelected:
                        choiceChipsValues != null ? choiceChipsValues : [],
                    options: choiceChipsEleveRecordList
                        .map((e) => e.nom!)
                        .toList()
                        .map((label) => ChipData(label))
                        .toList(),
                    onChanged: (val) => setState(() => choiceChipsValues = val),
                    selectedChipStyle: ChipStyle(
                      backgroundColor: Color(0xFF323B45),
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      iconColor: Colors.white,
                      iconSize: 18,
                      elevation: 4,
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF323B45),
                              ),
                      iconColor: Color(0xFF323B45),
                      iconSize: 18,
                      elevation: 4,
                    ),
                    chipSpacing: 20,
                    multiselect: true,
                    initialized: choiceChipsValues != null,
                    alignment: WrapAlignment.start,
                  );
                },
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: StreamBuilder<List<EleveRecord>>(
                    stream: queryEleveRecord(
                      queryBuilder: (eleveRecord) =>
                          eleveRecord.where('nom', whereIn: choiceChipsValues),
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
                      List<EleveRecord> buttonEleveRecordList = snapshot.data!;
                      return FFButtonWidget(
                        onPressed: () async {
                          final equipesUpdateData = {
                            ...createEquipesRecordData(
                              nom: nomController?.text ?? '',
                            ),
                            'tabref': buttonEleveRecordList
                                .map((e) => e.reference)
                                .toList(),
                            'tabnom': choiceChipsValues,
                          };
                          await widget.equipe!.update(equipesUpdateData);
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
