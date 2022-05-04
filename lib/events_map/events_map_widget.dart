import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsMapWidget extends StatefulWidget {
  const EventsMapWidget({Key key}) : super(key: key);

  @override
  _EventsMapWidgetState createState() => _EventsMapWidgetState();
}

class _EventsMapWidgetState extends State<EventsMapWidget> {
  LatLng googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFEFEFEF),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        StreamBuilder<List<LocationRecord>>(
                          stream: queryLocationRecord(),
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
                            List<LocationRecord> googleMapLocationRecordList =
                                snapshot.data;
                            return FlutterFlowGoogleMap(
                              controller: googleMapsController,
                              onCameraIdle: (latLng) =>
                                  googleMapsCenter = latLng,
                              initialLocation: googleMapsCenter ??=
                                  LatLng(13.106061, -59.613158),
                              markers: (googleMapLocationRecordList ?? [])
                                  .map(
                                    (googleMapLocationRecord) =>
                                        FlutterFlowMarker(
                                      googleMapLocationRecord.reference.path,
                                      googleMapLocationRecord.geolocation,
                                    ),
                                  )
                                  .toList(),
                              markerColor: GoogleMarkerColor.violet,
                              mapType: MapType.normal,
                              style: GoogleMapStyle.standard,
                              initialZoom: 14,
                              allowInteraction: true,
                              allowZoom: true,
                              showZoomControls: true,
                              showLocation: true,
                              showCompass: false,
                              showMapToolbar: false,
                              showTraffic: false,
                              centerMapOnMarkerTap: true,
                            );
                          },
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(300, 200, 0, 0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 4,
                            borderWidth: 1,
                            buttonSize: 30,
                            fillColor: Color(0xCD9C9C9C),
                            icon: Icon(
                              Icons.location_on_sharp,
                              color: Color(0xFF1D262D),
                              size: 20,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(340, 200, 0, 15),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 4,
                            borderWidth: 1,
                            buttonSize: 30,
                            fillColor: Color(0xFF1D262D),
                            icon: Icon(
                              Icons.list,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 20,
                            ),
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'Events'),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
