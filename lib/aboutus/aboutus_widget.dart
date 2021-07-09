import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../more/more_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class AboutusWidget extends StatefulWidget {
  AboutusWidget({Key key}) : super(key: key);

  @override
  _AboutusWidgetState createState() => _AboutusWidgetState();
}

class _AboutusWidgetState extends State<AboutusWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.05),
        child: AppBar(
          backgroundColor: Color(0x893474E0),
          automaticallyImplyLeading: true,
          leading: InkWell(
            onTap: () async {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
              size: 24,
            ),
          ),
          flexibleSpace: Padding(
            padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
            child: Text(
              'About us',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.title3.override(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 25,
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
      backgroundColor: Color(0x20B1B1B1),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, 0),
              child: Image.asset(
                'assets/images/WhatsApp Image 2021-07-08 at 10.02.55 PM.jpeg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                          child: Text(
                            ' ResMedical is a free and user-friendly search engine\\nwhere one can look for various hospitals and \\nenable patient to find the most suitable hospital\\nfor them.',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
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
                      Expanded(
                        child: Align(
                          alignment: Alignment(-0.4, 0.2),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              '  Resmedical, platform of healthcare solves \\nthe problem that face patients when they try to \\nreach doctorsuch as asking people about as\\ngood doctor and calling the clinic many times\\nto get an appointment',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
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
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Text(
                          '  Resmedical, platform of healthcare solves \\nthe problem that face patients when they try to \\nreach doctorsuch as asking people about as\\ngood doctor and calling the clinic many times\\nto get an appointment',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
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
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Text(
                          ' ResMedical is a free and user-friendly search engine\\nwhere one can look for various hospitals and \\nenable patient to find the most suitable hospital\\nfor them.',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
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
    );
  }
}
