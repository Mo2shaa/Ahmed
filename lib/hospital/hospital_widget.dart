import '../alexinterhospital/alexinterhospital_widget.dart';
import '../elekbalhospita/elekbalhospita_widget.dart';
import '../elmalkyhospital/elmalkyhospital_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../germanyhospital/germanyhospital_widget.dart';
import '../luranhospital/luranhospital_widget.dart';
import '../more/more_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class HospitalWidget extends StatefulWidget {
  HospitalWidget({Key key}) : super(key: key);

  @override
  _HospitalWidgetState createState() => _HospitalWidgetState();
}

class _HospitalWidgetState extends State<HospitalWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

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
          leading: IconButton(
            onPressed: () async {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 30,
            ),
            iconSize: 30,
          ),
          flexibleSpace: Padding(
            padding: EdgeInsets.fromLTRB(0, 55, 0, 0),
            child: Text(
              'Hospitals',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.title3.override(
                fontFamily: 'Poppins',
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
      body: Container(
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
                Align(
                  alignment: Alignment(-0.05, 0.15),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 40, 40),
                    child: FaIcon(
                      FontAwesomeIcons.hospitalAlt,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 60,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.05, 0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      'Hospitals',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.tertiaryColor,
                        fontSize: 25,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 140, 22),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color(0x4F000000),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: TextFormField(
                          controller: textController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '  Search hospitals here.....',
                            hintStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w100,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 195, 0),
                        child: Icon(
                          Icons.search,
                          color: Color(0x2D000000),
                          size: 19,
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: ElekbalhospitaWidget(),
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
                                          type: PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: ElekbalhospitaWidget(),
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
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0, 0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 90, 0),
                                    child: Text(
                                      'Elekbal Hospital',
                                      style: FlutterFlowTheme.title3.override(
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
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: LuranhospitalWidget(),
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
                                          type: PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: LuranhospitalWidget(),
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
                                    padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                                    child: Text(
                                      'Loran Hospital',
                                      style: FlutterFlowTheme.title3.override(
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
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: GermanyhospitalWidget(),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment(-0.95, -0.55),
                                  child: IconButton(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: GermanyhospitalWidget(),
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
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0, 0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 60, 0),
                                    child: Text(
                                      'Germany Hospital',
                                      style: FlutterFlowTheme.title3.override(
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
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: ElmalkyhospitalWidget(),
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
                                          type: PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: ElmalkyhospitalWidget(),
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
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0, 0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 75, 0),
                                    child: Text(
                                      'Elmalky Hospital',
                                      style: FlutterFlowTheme.title3.override(
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
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: AlexinterhospitalWidget(),
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
                                          type: PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: AlexinterhospitalWidget(),
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
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0, 0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Text(
                                      'Alex International Hospital',
                                      style: FlutterFlowTheme.title3.override(
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
      ),
    );
  }
}
