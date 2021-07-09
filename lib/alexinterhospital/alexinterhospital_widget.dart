import '../dr4alexchiropractor/dr4alexchiropractor_widget.dart';
import '../dr4alexinternist/dr4alexinternist_widget.dart';
import '../dr4alexsurgeon/dr4alexsurgeon_widget.dart';
import '../dr4alixdentist/dr4alixdentist_widget.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../more/more_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AlexinterhospitalWidget extends StatefulWidget {
  AlexinterhospitalWidget({Key key}) : super(key: key);

  @override
  _AlexinterhospitalWidgetState createState() =>
      _AlexinterhospitalWidgetState();
}

class _AlexinterhospitalWidgetState extends State<AlexinterhospitalWidget> {
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_sharp,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: Text(
          ' Alex Inter Hospital',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.topToBottom,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: MoreWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.location_history_sharp,
                color: Colors.black,
                size: 30,
              ),
            ),
          )
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 1.5,
                height: MediaQuery.of(context).size.height * 1.5,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              height: 500,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                                    child: PageView(
                                      controller: pageViewController,
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 20, 0, 0),
                                          child: Image.asset(
                                            'assets/images/212885261_1224762611286213_5365892573358921005_n.jpg',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/images/159871059_1144872935941848_4004890146077950603_n.jpg',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                        Image.asset(
                                          'assets/images/141419509_1114594062303069_1322220093722515263_n.jpg',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fitWidth,
                                        )
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0, 1),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: SmoothPageIndicator(
                                        controller: pageViewController,
                                        count: 3,
                                        axisDirection: Axis.horizontal,
                                        onDotClicked: (i) {
                                          pageViewController.animateToPage(
                                            i,
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        effect: ExpandingDotsEffect(
                                          expansionFactor: 2,
                                          spacing: 8,
                                          radius: 16,
                                          dotWidth: 16,
                                          dotHeight: 16,
                                          dotColor: Color(0xFF9E9E9E),
                                          activeDotColor: Color(0xFF3F51B5),
                                          paintStyle: PaintingStyle.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.7,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 20, 0, 0),
                                              child: Text(
                                                'Alexandria International Hospital',
                                                style: FlutterFlowTheme.title3
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF0E2F67),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 15, 0, 0),
                                              child: Text(
                                                '  Adress: 20, Mostafa Kamel St، Smoha Sq.\\n  Alexandria Governorate',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 15, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '  Rating :',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Icon(
                                                Icons.star_purple500_sharp,
                                                color: Color(0xFF081E44),
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star_outlined,
                                                color: Color(0xFF081E44),
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star_outlined,
                                                color: Color(0xFF081E44),
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star_half_sharp,
                                                color: Color(0xFF081E44),
                                                size: 20,
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 15, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '  Hours : open  24 hours',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 15, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 15, 0, 0),
                                                child: Text(
                                                  '  phone :  03 5821262',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 15, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '  Location',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                              Icon(
                                                Icons.location_on,
                                                color: Color(0xFFC90000),
                                                size: 24,
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: FlutterFlowGoogleMap(
                                            initialLocation:
                                                LatLng(31.22723, 29.98089),
                                            markerColor: GoogleMarkerColor.red,
                                            mapType: MapType.terrain,
                                            style: GoogleMapStyle.standard,
                                            initialZoom: 15,
                                            allowInteraction: true,
                                            allowZoom: true,
                                            showZoomControls: true,
                                            showLocation: true,
                                            showCompass: true,
                                            showMapToolbar: true,
                                            showTraffic: true,
                                            centerMapOnMarkerTap: true,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 30, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 10, 0, 0),
                                                child: Text(
                                                  'Department',
                                                  style: FlutterFlowTheme.title1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0E2F67),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.bottomToTop,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: Dr4alixdentistWidget(),
                                        ),
                                      );
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment(0, 0),
                                          child: Text(
                                            'Dentist',
                                            style: FlutterFlowTheme.title2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0E2F67),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.bottomToTop,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: Dr4alexsurgeonWidget(),
                                        ),
                                      );
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment(0, 0),
                                          child: Text(
                                            'surgeon',
                                            style: FlutterFlowTheme.title2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0E2F67),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.bottomToTop,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: Dr4alexinternistWidget(),
                                        ),
                                      );
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment(0, 0),
                                          child: Text(
                                            'Internist',
                                            style: FlutterFlowTheme.title2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0E2F67),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.bottomToTop,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: Dr4alexchiropractorWidget(),
                                        ),
                                      );
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment(0, 0),
                                          child: Text(
                                            'Chiropractor',
                                            style: FlutterFlowTheme.title2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
