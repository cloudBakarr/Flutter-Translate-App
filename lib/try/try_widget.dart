import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:translator/translator.dart';

class TryWidget extends StatefulWidget {
  const TryWidget({Key key}) : super(key: key);

  @override
  _TryWidgetState createState() => _TryWidgetState();
}

class _TryWidgetState extends State<TryWidget> {
  TextEditingController textController;
  String input , output;
  GoogleTranslator translator = new GoogleTranslator();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  void translat(){
    input = textController.text;
    translator.translate(input , to: 'ja').then((out){
      setState(() {
        output = out.toString();
      });
    });
  }




  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    input = "";
    output = "";
  }

  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF0F161C),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.dark400,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-0.9, 0.1),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            buttonSize: 46,
                            icon: Icon(
                              Icons.close_rounded,
                              color: FlutterFlowTheme.customColor1,
                              size: 20,
                            ),
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 240),
                                  reverseDuration: Duration(milliseconds: 240),
                                  child: NavBarPage(initialPage: 'Home'),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: Image.asset(
                                'assets/images/88212707_2587005338077550_5775007477103853568_o.jpg',
                                fit: BoxFit.contain,
                              ),
                              allowRotation: false,
                              tag: 'imageTag',
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'imageTag',
                        transitionOnUserGestures: true,
                        child: Image.asset(
                          'assets/images/88212707_2587005338077550_5775007477103853568_o.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Text(
                    'Try It Out!',
                    style: FlutterFlowTheme.title1.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.customColor1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
                  child: Text(
                    'Enter English text to translate to Japanese:',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText2,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, -0.2),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: TextFormField(
                        controller: textController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Text Here...',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF4F8CB2),
                              width: 2,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF4F8CB2),
                              width: 2,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(-0.05, -0.95),
                    child: FFButtonWidget(
                      onPressed: () {
                        translat();
                      },
                      text: 'Translate',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0xFF4F8CB2),
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.65, 0.05),
                          child: Text(
                            'Original:\n $input',
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.65, 0.05),
                          child: Text(
                            'Translation:\n $output',
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(-0.75, -0.97),
              child: Text(
                'CloudBk',
                style: FlutterFlowTheme.title1.override(
                  fontFamily: 'Raleway',
                  color: Color(0xFF98CBEB),
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
