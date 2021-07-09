import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../sign_up/sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class StartWidget extends StatefulWidget {
  StartWidget({Key key}) : super(key: key);

  @override
  _StartWidgetState createState() => _StartWidgetState();
}

class _StartWidgetState extends State<StartWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF969696),
      body: Align(
        alignment: Alignment(0.05, 0),
        child: Stack(
          alignment: Alignment(-0.15000000000000002, -0.050000000000000044),
          children: [
            Align(
              alignment: Alignment(0, 0.1),
              child: Image.asset(
                'assets/images/blur-hospital_1203-7972.jpg.webp',
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment(-0.14, -0.08),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0x5EEEEEEE),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x64000000),
                    )
                  ],
                  border: Border.all(
                    color: Color(0x21000000),
                  ),
                ),
                child: Stack(
                  alignment: Alignment(-0.4, 0),
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 120),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment(0, 0.55),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                      child: Text(
                                        'Resmedical',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.title1.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF1C4180),
                                          fontSize: 40,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment(-0.05, 0.5),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 33, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Online HealthCare',
                                    style: FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Poppins',
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment(0.05, 0.85),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: SignUpWidget(),
                                    ),
                                  );
                                },
                                text: 'Get Started',
                                options: FFButtonOptions(
                                  width: 300,
                                  height: 55,
                                  color: Color(0xFF1C4180),
                                  textStyle: GoogleFonts.getFont(
                                    'Roboto',
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 18,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 2,
                                  ),
                                  borderRadius: 30,
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
            ),
            Align(
              alignment: Alignment(0, -0.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(1200),
                child: Image.asset(
                  'assets/images/png-clipart-medicine-staff-of-hermes-health-symbol-logo-health-text-medical-care-removebg-preview.png',
                  width: 290,
                  height: 290,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
