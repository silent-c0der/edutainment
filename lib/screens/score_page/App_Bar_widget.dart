import 'package:edutainment/screens/home/page.dart';
import 'package:edutainment/screens/score_page/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/theme_constants.dart';

class App_Bar extends StatelessWidget {
  final double height;
  final String title;
  final int domaine;

  App_Bar({this.title,  this.height,this.domaine});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: height - 380,
            child: Container(
              child: SvgPicture.asset('assets/Upper shape $domaine.svg'),
            ),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children:[
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                               size: 30.0,
                           ),
                            onPressed: () { //TODO : CHANGE THE ROUTE FOR ISLAM
                          Navigator.pushNamed(context, PageHome.getPageName());
                          },
                         ),
                         ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            title,
                            style: kSignUpTitleTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
