import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../hello/hello_widget.dart';
import '../login/login_widget.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountWidget extends StatefulWidget {
  const CreateAccountWidget({Key key}) : super(key: key);

  @override
  _CreateAccountWidgetState createState() => _CreateAccountWidgetState();
}

class _CreateAccountWidgetState extends State<CreateAccountWidget> {
  TextEditingController confirmPasswordController;
  bool confirmPasswordVisibility;
  TextEditingController emailAddressController;
  TextEditingController passwordController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordController = TextEditingController();
    confirmPasswordVisibility = false;
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.tertiaryColor,
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: Image.asset(
              'assets/images/2012.Twist_White_Dark-390w-844h@3xiphone.jpeg',
            ).image,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 70),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.75, 0.4),
                        child: Text(
                          'CloudBk',
                          style: FlutterFlowTheme.title1.override(
                            fontFamily: 'Raleway',
                            color: Color(0xFF4F8CB2),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Get Started',
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.customColor1,
                        fontSize: 36,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                        child: Text(
                          'The future of transportation is at your finger tips.',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.customColor1,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: emailAddressController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            labelStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Enter your email here...',
                            hintStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF2B343A),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: !passwordVisibility,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Enter your email here...',
                            hintStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(16, 24, 24, 24),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => passwordVisibility = !passwordVisibility,
                              ),
                              child: Icon(
                                passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFF95A1AC),
                                size: 22,
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF2B343A),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: confirmPasswordController,
                          obscureText: !confirmPasswordVisibility,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            labelStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Use the same passwrod as above...',
                            hintStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(16, 24, 24, 24),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => confirmPasswordVisibility =
                                    !confirmPasswordVisibility,
                              ),
                              child: Icon(
                                confirmPasswordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFF95A1AC),
                                size: 22,
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF2B343A),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Already have an account?',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 200),
                                  reverseDuration: Duration(milliseconds: 200),
                                  child: LoginWidget(),
                                ),
                              );
                            },
                            text: 'Login',
                            options: FFButtonOptions(
                              width: 80,
                              height: 30,
                              color: Color(0x00FFFFFF),
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.customColor1,
                                fontWeight: FontWeight.bold,
                              ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 0,
                            ),
                          ),
                        ],
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          if (passwordController.text !=
                              confirmPasswordController.text) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Passwords don\'t match!',
                                ),
                              ),
                            );
                            return;
                          }

                          final user = await createAccountWithEmail(
                            context,
                            emailAddressController.text,
                            passwordController.text,
                          );
                          if (user == null) {
                            return;
                          }

                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                              reverseDuration: Duration(milliseconds: 0),
                              child: HelloWidget(),
                            ),
                          );
                        },
                        text: 'Create',
                        options: FFButtonOptions(
                          width: 130,
                          height: 50,
                          color: FlutterFlowTheme.primaryColor,
                          textStyle: FlutterFlowTheme.subtitle1.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 50,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              AutoSizeText(
                                'Use a Social Platform to Login',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.getFont(
                                  'Lexend Deca',
                                  color: Color(0xB2FFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 8, 0),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.customColor1,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: InkWell(
                                          onTap: () async {
                                            final user =
                                                await signInWithGoogle(context);
                                            if (user == null) {
                                              return;
                                            }
                                            await Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    NavBarPage(
                                                        initialPage: 'Home'),
                                              ),
                                              (r) => false,
                                            );
                                          },
                                          child: Image.asset(
                                            'assets/images/Book.png',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 8, 0),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: Color(0xFF090F13),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: InkWell(
                                          onTap: () async {
                                            final user =
                                                await signInWithApple(context);
                                            if (user == null) {
                                              return;
                                            }
                                            await Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    NavBarPage(
                                                        initialPage: 'Home'),
                                              ),
                                              (r) => false,
                                            );
                                          },
                                          child: Image.asset(
                                            'assets/images/apple.png',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFF090F13),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Image.asset(
                                        'assets/images/Book_Copy_2.png',
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
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
          ),
        ),
      ),
    );
  }
}
