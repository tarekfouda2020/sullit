// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:pull_to_refresh/pull_to_refresh.dart';
//
// class CustomRefresher extends StatelessWidget {
//   final RefreshController controller;
//   final Widget child;
//   final VoidCallback? onRefresh;
//   final VoidCallback? onLoading;
//   final bool enablePullUp;
//   final bool enablePullDown;
//
//   const CustomRefresher({
//     super.key,
//     required this.controller,
//     required this.child,
//     this.onRefresh,
//     this.onLoading,
//     this.enablePullUp = true,
//     this.enablePullDown = true,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SmartRefresher(
//       controller: controller,
//       onRefresh: onRefresh,
//       onLoading: onLoading,
//       enablePullUp: enablePullUp,
//       enablePullDown: enablePullDown,
//       header: CustomHeader(
//         builder: (context, mode) {
//           return Container(
//             alignment: Alignment.center,
//             padding: const EdgeInsets.only(bottom: kToolbarHeight - 45),
//             child: const CupertinoActivityIndicator(
//               color: Colors.black,
//             ),
//           );
//         },
//       ),
//       footer: CustomFooter(
//         builder: (context, mode) {
//           if (mode != LoadStatus.loading) {
//             return const SizedBox();
//           }
//           return Container(
//             alignment: Alignment.center,
//             padding: const EdgeInsets.symmetric(vertical: 20),
//             child: const CupertinoActivityIndicator(
//               color: Colors.black,
//             ),
//           );
//         },
//       ),
//       child: child,
//     );
//   }
// }
