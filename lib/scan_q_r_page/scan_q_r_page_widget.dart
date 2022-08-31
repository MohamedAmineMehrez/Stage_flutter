import '../auth/auth_util.dart';
import '../competitions_page/competitions_page_widget.dart';
import '../eleves_page/eleves_page_widget.dart';
import '../equipes_page/equipes_page_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../formateurs_page/formateurs_page_widget.dart';
import '../formations_page/formations_page_widget.dart';
import '../languages_page/languages_page_widget.dart';
import '../login_page/login_page_widget.dart';
import '../parametres_page/parametres_page_widget.dart';
import '../sessions_page/sessions_page_widget.dart';
import '../sessions_s_page/sessions_s_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ScanQRPageWidget extends StatefulWidget {
  const ScanQRPageWidget({Key? key}) : super(key: key);

  @override
  _ScanQRPageWidgetState createState() => _ScanQRPageWidgetState();
}

class _ScanQRPageWidgetState extends State<ScanQRPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var barcodeValue = '';

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
          icon: Icon(
            Icons.dehaze,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Text(
          'QR Code Scanner',
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Bienvenu ',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/793/600',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ElevesPageWidget(),
                          ),
                        );
                      },
                      text: 'éléves',
                      icon: Icon(
                        Icons.people,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 500,
                        height: 65,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FormationsPageWidget(),
                          ),
                        );
                      },
                      text: 'Formations',
                      icon: Icon(
                        Icons.format_list_numbered_outlined,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 500,
                        height: 65,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FormateursPageWidget(),
                          ),
                        );
                      },
                      text: 'Formateurs',
                      icon: FaIcon(
                        FontAwesomeIcons.chalkboardTeacher,
                      ),
                      options: FFButtonOptions(
                        width: 500,
                        height: 65,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EquipesPageWidget(),
                          ),
                        );
                      },
                      text: 'Equipes',
                      icon: FaIcon(
                        FontAwesomeIcons.theaterMasks,
                      ),
                      options: FFButtonOptions(
                        width: 500,
                        height: 65,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CompetitionsPageWidget(),
                          ),
                        );
                      },
                      text: 'Compétition',
                      icon: Icon(
                        Icons.compare,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 500,
                        height: 65,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SessionsPageWidget(),
                          ),
                        );
                      },
                      text: 'Sessions',
                      icon: FaIcon(
                        FontAwesomeIcons.doorClosed,
                      ),
                      options: FFButtonOptions(
                        width: 500,
                        height: 65,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SessionsSPageWidget(),
                          ),
                        );
                      },
                      text: 'Sessions Spécial',
                      icon: Icon(
                        Icons.folder_special,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 500,
                        height: 65,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LanguagesPageWidget(),
                          ),
                        );
                      },
                      text: 'Languages',
                      icon: Icon(
                        Icons.menu_book_rounded,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 500,
                        height: 65,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScanQRPageWidget(),
                          ),
                        );
                      },
                      text: 'Scan QR Code',
                      icon: Icon(
                        Icons.qr_code_scanner_rounded,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 500,
                        height: 65,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ParametresPageWidget(),
                          ),
                        );
                      },
                      text: 'Paramétres',
                      icon: Icon(
                        Icons.settings,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 500,
                        height: 65,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await signOut();
                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPageWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      text: 'Déconnexion',
                      icon: Icon(
                        Icons.logout,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 500,
                        height: 65,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(85, 250, 0, 0),
                child: Text(
                  valueOrDefault<String>(
                    barcodeValue,
                    'Not Scanned yet',
                  ),
                  style: FlutterFlowTheme.of(context).subtitle1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    barcodeValue = await FlutterBarcodeScanner.scanBarcode(
                      '#C62828', // scanning line color
                      'Cancel', // cancel button text
                      true, // whether to show the flash icon
                      ScanMode.QR,
                    );

                    setState(() {});
                  },
                  text: 'Scan QR Code',
                  options: FFButtonOptions(
                    width: 200,
                    height: 80,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
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
