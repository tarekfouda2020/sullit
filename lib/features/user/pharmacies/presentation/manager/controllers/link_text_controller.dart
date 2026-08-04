// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class LinkHighlightController extends TextEditingController {
//   final RegExp _urlRegex = RegExp(
//     r'https?://[^\s]+|www\.[^\s]+',
//     caseSensitive: false,
//   );
//
//   // store link positions
//   final List<({int start, int end, String url})> linkRanges = [];
//
//   @override
//   TextSpan buildTextSpan({
//     required BuildContext context,
//     TextStyle? style,
//     required bool withComposing,
//   }) {
//     final List<InlineSpan> spans = [];
//     final text = this.text;
//     int lastIndex = 0;
//     linkRanges.clear(); // reset on every rebuild
//
//     for (final match in _urlRegex.allMatches(text)) {
//       if (match.start > lastIndex) {
//         spans.add(TextSpan(
//           text: text.substring(lastIndex, match.start),
//           style: style,
//         ));
//       }
//
//       final url = match.group(0)!;
//       final fullUrl = url.startsWith('http') ? url : 'https://$url';
//
//       // store the range
//       linkRanges.add((start: match.start, end: match.end, url: fullUrl));
//
//       spans.add(TextSpan(
//         text: url,
//         style: style?.copyWith(
//           color: Colors.blue,
//           decoration: TextDecoration.underline,
//         ),
//         // ❌ No TapGestureRecognizer here
//       ));
//
//       lastIndex = match.end;
//     }
//
//     if (lastIndex < text.length) {
//       spans.add(TextSpan(
//         text: text.substring(lastIndex),
//         style: style,
//       ));
//     }
//
//     return TextSpan(children: spans);
//   }
//
//   String? getLinkAtOffset(int offset) {
//     for (final range in linkRanges) {
//       if (offset >= range.start && offset <= range.end) {
//         return range.url;
//       }
//     }
//     return null;
//   }
// }

// onTap: () {
// final offset = _controller.selection.baseOffset;
// if (offset < 0) return;
//
// final url = _controller.getLinkAtOffset(offset);
// if (url != null) {
// launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
// }
// },