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

class UpdateFormateurPageWidget extends StatefulWidget {
  const UpdateFormateurPageWidget({
    Key? key,
    this.formateur,
  }) : super(key: key);

  final DocumentReference? formateur;

  @override
  _UpdateFormateurPageWidgetState createState() =>
      _UpdateFormateurPageWidgetState();
}

class _UpdateFormateurPageWidgetState extends State<UpdateFormateurPageWidget> {
  List<String>? choiceChipsValues;
  TextEditingController? emailController;
  TextEditingController? nomController;
  TextEditingController? prenomController;
  TextEditingController? numeroController;
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
          'Modifer',
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
                child: StreamBuilder<FormateursRecord>(
                  stream: FormateursRecord.getDocument(widget.formateur!),
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
                    final nomFormateursRecord = snapshot.data!;
                    return TextFormField(
                      controller: nomController ??= TextEditingController(
                        text: nomFormateursRecord.nom,
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'nom',
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
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                child: StreamBuilder<FormateursRecord>(
                  stream: FormateursRecord.getDocument(widget.formateur!),
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
                    final prenomFormateursRecord = snapshot.data!;
                    return TextFormField(
                      controller: prenomController ??= TextEditingController(
                        text: prenomFormateursRecord.prenom,
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'prenom',
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
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
                child: StreamBuilder<FormateursRecord>(
                  stream: FormateursRecord.getDocument(widget.formateur!),
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
                    final emailFormateursRecord = snapshot.data!;
                    return TextFormField(
                      controller: emailController ??= TextEditingController(
                        text: emailFormateursRecord.email,
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintText: 'Adresse Emai',
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
                      textAlign: TextAlign.start,
                      maxLines: 3,
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
                child: StreamBuilder<FormateursRecord>(
                  stream: FormateursRecord.getDocument(widget.formateur!),
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
                    final numeroFormateursRecord = snapshot.data!;
                    return TextFormField(
                      controller: numeroController ??= TextEditingController(
                        text: numeroFormateursRecord.numTel?.toString(),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        hintText: 'Numero Telephone',
                        hintStyle: FlutterFlowTheme.of(context).bodyText1,
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
                      textAlign: TextAlign.start,
                      maxLines: 3,
                      keyboardType: TextInputType.number,
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 185, 0),
                child: Text(
                  'Languages',
                  style: FlutterFlowTheme.of(context).title3,
                ),
              ),
              StreamBuilder<List<LanguagesRecord>>(
                stream: queryLanguagesRecord(),
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
                  List<LanguagesRecord> choiceChipsLanguagesRecordList =
                      snapshot.data!;
                  return FlutterFlowChoiceChips(
                    initiallySelected:
                        choiceChipsValues != null ? choiceChipsValues : [],
                    options: choiceChipsLanguagesRecordList
                        .map((e) => e.libelle!)
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
                  child: FFButtonWidget(
                    onPressed: () async {
                      final formateursUpdateData = {
                        ...createFormateursRecordData(
                          nom: nomController?.text ?? '',
                          prenom: prenomController?.text ?? '',
                          numTel: int.parse(numeroController?.text ?? ''),
                          email: emailController?.text ?? '',
                        ),
                        'Tablanguages': choiceChipsValues,
                      };
                      await widget.formateur!.update(formateursUpdateData);
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
