import '../aboutus/aboutus_widget.dart';
import '../contactus/contactus_widget.dart';
import '../emergencycall/emergencycall_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../hospital/hospital_widget.dart';
import '../intensiverooms/intensiverooms_widget.dart';
import '../more/more_widget.dart';
import '../pharmacy/pharmacy_widget.dart';
import '../speciality/speciality_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class HomescreenWidget extends StatefulWidget {
  HomescreenWidget({Key key}) : super(key: key);

  @override
  _HomescreenWidgetState createState() => _HomescreenWidgetState();
}

class _HomescreenWidgetState extends State<HomescreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.06),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.tertiaryColor,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text(
              'Home',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.title3.override(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
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
          elevation: 4,
        ),
      ),
      backgroundColor: Color(0x9D747474),
      body: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFF93BBFF),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 22, 0, 0),
                      child: Text(
                        'Welcome to',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment(0.05, 0),
                      child: Text(
                        'Resmedical',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 30,
                        ),
                      ),
                    )
                  ],
                ),
                Image.asset(
                  'assets/images/png-clipart-medicine-staff-of-hermes-health-symbol-logo-health-text-medical-care-removebg-preview.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment(-0.55, -0.05),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: MediaQuery.of(context).size.height * 0.06,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                                borderRadius: BorderRadius.circular(15),
                                shape: BoxShape.rectangle,
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: HospitalWidget(),
                                    ),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment(-0.95, 0),
                                      child: IconButton(
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 300),
                                              reverseDuration:
                                                  Duration(milliseconds: 300),
                                              child: HospitalWidget(),
                                            ),
                                          );
                                        },
                                        icon: FaIcon(
                                          FontAwesomeIcons.hospital,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                        iconSize: 30,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.95, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  HospitalWidget(),
                                            ),
                                          );
                                        },
                                        child: Icon(
                                          Icons.navigate_next,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 0),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 160, 0),
                                        child: Text(
                                          'Hospitals',
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment(-0.55, -0.05),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: MediaQuery.of(context).size.height * 0.06,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                                borderRadius: BorderRadius.circular(15),
                                shape: BoxShape.rectangle,
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: SpecialityWidget(),
                                    ),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment(-0.95, 0),
                                      child: IconButton(
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                        icon: FaIcon(
                                          FontAwesomeIcons.file,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                        iconSize: 30,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.95, 0.1),
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 0),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 140, 0),
                                        child: Text(
                                          'Specialties',
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment(-0.55, -0.05),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: MediaQuery.of(context).size.height * 0.06,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                                borderRadius: BorderRadius.circular(15),
                                shape: BoxShape.rectangle,
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: IntensiveroomsWidget(),
                                    ),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment(-0.95, -0.55),
                                      child: IconButton(
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                        icon: Icon(
                                          Icons.king_bed_rounded,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                        iconSize: 30,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.95, 0),
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 0),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 110, 0),
                                        child: Text(
                                          'Intensive care',
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment(-0.55, -0.05),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: MediaQuery.of(context).size.height * 0.06,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                                borderRadius: BorderRadius.circular(15),
                                shape: BoxShape.rectangle,
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: PharmacyWidget(),
                                    ),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment(-0.95, 0),
                                      child: IconButton(
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                        icon: Icon(
                                          Icons.medical_services_rounded,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                        iconSize: 30,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.95, 0),
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 0),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 130, 0),
                                        child: Text(
                                          'Pharmacies',
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment(-0.55, -0.05),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: MediaQuery.of(context).size.height * 0.06,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                                borderRadius: BorderRadius.circular(15),
                                shape: BoxShape.rectangle,
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: ContactusWidget(),
                                    ),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment(-0.95, 0),
                                      child: IconButton(
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                        icon: Icon(
                                          Icons.message,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                        iconSize: 30,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.95, 0),
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 0),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 140, 0),
                                        child: Text(
                                          'Contact us',
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment(-0.55, -0.05),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: MediaQuery.of(context).size.height * 0.06,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                                borderRadius: BorderRadius.circular(15),
                                shape: BoxShape.rectangle,
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: EmergencycallWidget(),
                                    ),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment(-0.95, 0),
                                      child: IconButton(
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                        icon: Icon(
                                          Icons.add_ic_call,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                        iconSize: 30,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.95, 0),
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 0),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 95, 0),
                                        child: Text(
                                          'Emergency call',
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment(-0.55, -0.05),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: MediaQuery.of(context).size.height * 0.06,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                                borderRadius: BorderRadius.circular(15),
                                shape: BoxShape.rectangle,
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: AboutusWidget(),
                                    ),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment(-0.95, 0),
                                      child: IconButton(
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                        icon: FaIcon(
                                          FontAwesomeIcons.solidQuestionCircle,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                        iconSize: 30,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.95, 0),
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 0),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 160, 0),
                                        child: Text(
                                          'About us',
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
