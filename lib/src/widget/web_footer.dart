import 'package:flutter/material.dart';
import 'package:hosting/src/constant/dimension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_image.dart';

class WebFooter extends StatefulWidget {
  @override
  _WebFooterState createState() => _WebFooterState();
}

class _WebFooterState extends State<WebFooter>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(builder: (var context, var constraints) {
      return isMedium(constraints) ? WebFooterMobile() : WebFooterDesktop();
    });
  }

  @override
  bool get wantKeepAlive => true;
}

class WebFooterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: setHeight(100.0),
      color: BLUE_ACCENT,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
              'Copyright © 2019-2020 Hypixel Server Hosting Ltd. All rights reserved.',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: GoogleFonts.barlow(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              )),
          WebImage('cc.png')
        ],
      ),
    );
  }
}

class WebFooterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: setHeight(150.0),
      color: BLUE_ACCENT,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
              'Copyright © 2019-2020 Hypixel Server Hosting Ltd.\nAll rights reserved.',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: GoogleFonts.barlow(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              )),
          WebImage('cc.png')
        ],
      ),
    );
  }
}
