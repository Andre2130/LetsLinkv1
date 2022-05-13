import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../event_details/event_details_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0x004B39EF),
        automaticallyImplyLeading: false,
        leading: AuthUserStreamWidget(
          child: InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NavBarPage(initialPage: 'Profile'),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                currentUserPhoto,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Text(
          'Let\'s Link',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'PoetsenOne',
                color: Color(0xFFFF9900),
                fontSize: 28,
                fontWeight: FontWeight.normal,
                useGoogleFonts: false,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.notifications_outlined,
              color: FlutterFlowTheme.of(context).primaryBtnText,
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF1D262D),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 200, 0),
                child: Text(
                  'Top Categories',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 18,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: StreamBuilder<List<CategoriesRecord>>(
                  stream: queryCategoriesRecord(),
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
                    List<CategoriesRecord> eventsListCategoriesRecordList =
                        snapshot.data;
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children:
                            List.generate(eventsListCategoriesRecordList.length,
                                (eventsListIndex) {
                          final eventsListCategoriesRecord =
                              eventsListCategoriesRecordList[eventsListIndex];
                          return Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'Events'),
                                  ),
                                );
                              },
                              child: Container(
                                width: 130,
                                height: 170,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      eventsListCategoriesRecord.coverImage,
                                    ).image,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Color(0x64000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 4, 8, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0xFF1E2429),
                                            elevation: 2,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 8, 8),
                                              child: Icon(
                                                Icons.favorite_border,
                                                color: Colors.white,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 250,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF090F13),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(0),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  eventsListCategoriesRecord
                                                      .name,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 200, 0),
                child: Text(
                  'Nearby Events',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 18,
                      ),
                ),
              ),
              Expanded(
                child: StreamBuilder<List<EventRecord>>(
                  stream: queryEventRecord(),
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
                    List<EventRecord> listViewEventRecordList = snapshot.data;
                    if (listViewEventRecordList.isEmpty) {
                      return Center(
                        child: Image.asset(
                          'assets/images/emptyCollection.png',
                          width: MediaQuery.of(context).size.width * 0.86,
                        ),
                      );
                    }
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewEventRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewEventRecord =
                            listViewEventRecordList[listViewIndex];
                        return Container(
                          height: 320,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: StreamBuilder<List<EventRecord>>(
                            stream: queryEventRecord(
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
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<EventRecord> cardEventRecordList =
                                  snapshot.data;
                              // Return an empty Container when the document does not exist.
                              if (snapshot.data.isEmpty) {
                                return Container();
                              }
                              final cardEventRecord =
                                  cardEventRecordList.isNotEmpty
                                      ? cardEventRecordList.first
                                      : null;
                              return Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFF1D262D),
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 320,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              EventDetailsWidget(
                                            eventName: listViewEventRecord.name,
                                            address:
                                                listViewEventRecord.location,
                                            coverImage: valueOrDefault<String>(
                                              listViewEventRecord.coverImage,
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/lets-link-v1-w372xz/assets/94uag5545fl7/background_login.jpeg',
                                            ),
                                            geoLoacation:
                                                listViewEventRecord.geolocation,
                                            eventStatus:
                                                listViewEventRecord.eventStatus,
                                            organizer:
                                                listViewEventRecord.organizer,
                                            eventDescription:
                                                listViewEventRecord.description,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    listViewEventRecord
                                                        .coverImage,
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/lets-link-v1-w372xz/assets/94uag5545fl7/background_login.jpeg',
                                                  ),
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(1, -1),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 12, 0),
                                                  child: Container(
                                                    width: 30,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Container(
                                                      width: 100,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFEEEEEE),
                                                      ),
                                                      child: Text(
                                                        dateTimeFormat(
                                                            'Md',
                                                            listViewEventRecord
                                                                .startdate),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 10,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 0, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 6, 0, 4),
                                                        child: Text(
                                                          listViewEventRecord
                                                              .name,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 3, 0, 6),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          6,
                                                                          0),
                                                              child: Text(
                                                                dateTimeFormat(
                                                                    'MMMMEEEEd',
                                                                    listViewEventRecord
                                                                        .startdate),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  AutoSizeText(
                                                                listViewEventRecord
                                                                    .organizer,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor,
                                                size: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
