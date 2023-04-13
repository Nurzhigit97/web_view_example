import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_view_example/ui/widgets/web_view_page.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  final url = Uri.parse('http://www.sanarip.org');
  Future openWeb()async{
   return await canLaunchUrl(url)?await launchUrl(url):
   throw 'Could not launch $url';
  }
  @override
  Widget build(BuildContext context) {
    return
      kIsWeb
          ?  Scaffold(body: Center(child: ElevatedButton(
        onPressed:openWeb,
        child: const Text('Open in Browser'),
      ),))
        :
      const Scaffold(
      body: WebViewExample(),
    );
  }
}
