
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends ChangeNotifier
{
  void launchPhone()
  {
    Uri uri = Uri.parse('tel: +91 63581 74932');
    launchUrl(uri);
  }
  void launchMail()
  {
    Uri uri = Uri.parse('mailto: nareshrabari205@gmail.com');
    launchUrl(uri);
  }

  void launchLinkdin()
  {
    Uri uri = Uri.parse('https://www.linkedin.com/in/naresh-rabari-395b482a9/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }

  void launchInsta()
  {
    Uri uri = Uri.parse('https://www.instagram.com/naresh_desai_27/?hl=en');
    launchUrl(uri);
  }

  void launchtelegram()
  {
    Uri uri = Uri.parse('https://telegram.org/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
}