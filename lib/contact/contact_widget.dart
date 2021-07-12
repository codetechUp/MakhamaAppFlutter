import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactWidget extends StatefulWidget {
  ContactWidget({Key key}) : super(key: key);

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xE0000000),
        automaticallyImplyLeading: true,
        title: Text(
          'Contact',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Spirax',
            color: FlutterFlowTheme.tertiaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF14181B),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Text(
                    'About Makhama',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E2428),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.call,
                        color: FlutterFlowTheme.tertiaryColor,
                        size: 35,
                      ),
                      Text(
                        '77 551 62 54',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Nova Flat',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: FlutterFlowTheme.tertiaryColor,
                        size: 35,
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E2428),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.youtube,
                            color: FlutterFlowTheme.tertiaryColor,
                            size: 35,
                          )
                        ],
                      ),
                      Text(
                        'Makhama TV',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Nova Flat',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: FlutterFlowTheme.tertiaryColor,
                        size: 35,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    'About Creator',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E2428),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        color: FlutterFlowTheme.tertiaryColor,
                        size: 35,
                      ),
                      Text(
                        'CodageTech',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Nova Flat',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: FlutterFlowTheme.tertiaryColor,
                        size: 35,
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E2428),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.youtube,
                        color: FlutterFlowTheme.tertiaryColor,
                        size: 35,
                      ),
                      Text(
                        'CodageTech',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Nova Flat',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: FlutterFlowTheme.tertiaryColor,
                        size: 35,
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E2428),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.linkedinIn,
                        color: FlutterFlowTheme.tertiaryColor,
                        size: 35,
                      ),
                      Text(
                        'My LinkedIn',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Nova Flat',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: FlutterFlowTheme.tertiaryColor,
                        size: 35,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
