import 'package:flutter/cupertino.dart';

class ResponsiveVersion extends StatelessWidget {
  final Widget mobileversion;
  final Widget webversion;

  const ResponsiveVersion({
    Key? key,
    required this.mobileversion,
    required this.webversion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return webversion;
        //web view
      } else {
        return mobileversion;
        //mobile view
      }
    });
  }
}
