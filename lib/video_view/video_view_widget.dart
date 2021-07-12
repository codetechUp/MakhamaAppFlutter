import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoViewWidget extends StatefulWidget {
  VideoViewWidget({
    Key key,
    this.videoUrl,
    this.title,
  }) : super(key: key);

  final String videoUrl;
  final String title;

  @override
  _VideoViewWidgetState createState() => _VideoViewWidgetState();
}

class _VideoViewWidgetState extends State<VideoViewWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0x1E14181B),
        automaticallyImplyLeading: true,
        title: Text(
          widget.title,
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Spirax',
            color: FlutterFlowTheme.tertiaryColor,
            fontSize: 21,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF14181B),
      body: SafeArea(
        child: Align(
          alignment: Alignment(0, -0.35),
          child: FlutterFlowYoutubePlayer(
            url: widget.videoUrl,
            height: 300,
            autoPlay: false,
            looping: false,
            mute: false,
            showControls: false,
            showFullScreen: true,
          ),
        ),
      ),
    );
  }
}
