import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../video_view/video_view_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class ResultsWidget extends StatefulWidget {
  ResultsWidget({
    Key key,
    this.search,
  }) : super(key: key);

  final String search;

  @override
  _ResultsWidgetState createState() => _ResultsWidgetState();
}

class _ResultsWidgetState extends State<ResultsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xE0000000),
        automaticallyImplyLeading: true,
        title: Text(
          'Videos',
          style: FlutterFlowTheme.title2.override(
            fontFamily: 'Spirax',
            color: FlutterFlowTheme.tertiaryColor,
            fontSize: 24,
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
          decoration: BoxDecoration(),
          child: StreamBuilder<List<VideosRecord>>(
            stream: queryVideosRecord(
              queryBuilder: (videosRecord) =>
                  videosRecord.where('title', isEqualTo: widget.search),
              limit: 8,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }
              List<VideosRecord> columnVideosRecordList = snapshot.data;
              // Customize what your widget looks like with no query results.
              if (snapshot.data.isEmpty) {
                return Container(
                  height: 100,
                  child: Center(
                    child: Text('No results.'),
                  ),
                );
              }
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(columnVideosRecordList.length,
                      (columnIndex) {
                    final columnVideosRecord =
                        columnVideosRecordList[columnIndex];
                    return Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: VideoViewWidget(
                                  videoUrl: columnVideosRecord.videoUrl,
                                  title: columnVideosRecord.title,
                                ),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                child: Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(19),
                                      topRight: Radius.circular(19),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(19),
                                      topRight: Radius.circular(19),
                                    ),
                                    child: Image.network(
                                      columnVideosRecord.imageUrl,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: AutoSizeText(
                                  columnVideosRecord.title,
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Spirax',
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
