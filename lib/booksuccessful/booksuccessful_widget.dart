import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../homescreen/homescreen_widget.dart';
import '../more/more_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class BooksuccessfulWidget extends StatefulWidget {
  BooksuccessfulWidget({Key key}) : super(key: key);

  @override
  _BooksuccessfulWidgetState createState() => _BooksuccessfulWidgetState();
}

class _BooksuccessfulWidgetState extends State<BooksuccessfulWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomescreenWidget(),
              ),
            );
          },
          icon: Icon(
            Icons.home_outlined,
            color: Colors.black,
            size: 30,
          ),
          iconSize: 30,
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
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Book Successfully..!',
                      style: FlutterFlowTheme.title2.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF810000),
                        fontWeight: FontWeight.w200,
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  print('IconButton pressed ...');
                },
                icon: Icon(
                  Icons.download_done_rounded,
                  color: Color(0xFF810000),
                  size: 30,
                ),
                iconSize: 30,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 300, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Thanks for using ResMedical',
                      style: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w200,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '--------------------',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
