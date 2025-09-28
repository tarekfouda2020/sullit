import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/helper_methods.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';

class CustomHtmlWidget extends StatelessWidget {
  final String data;
  const CustomHtmlWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Html(
      data: getIt<Utilities>().cleanHtml(data),
      onLinkTap: (url, _, __) {
        HelperMethods.instance.launchURL(
          url: url!,
        );
      },
      style: {
        "body": Style(
          color: Colors.black,
          margin: Margins.zero,
          fontSize: FontSize(
            12,
          ),
          lineHeight: const LineHeight(2),
          fontWeight: FontWeight.w400,
        ),
        "p": Style(
          margin: Margins.zero,
          padding: HtmlPaddings.zero,
        ),
        "br": Style(
          fontSize: FontSize(0), // hides <br>
        ),
        "hr": Style(display: Display.none),
        "ul": Style(
          margin: Margins.zero,
          padding: HtmlPaddings.zero,
        ),
        // "ol": Style(
        //   margin: Margins.zero,
        //   padding: HtmlPaddings.zero,
        // ),
        // "li": Style(
        //   margin: Margins.zero,
        //   padding: HtmlPaddings.zero,
        // ),

      },
    );
  }
}
