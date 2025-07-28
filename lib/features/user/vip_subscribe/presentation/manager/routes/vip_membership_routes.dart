

import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/presentation/pages/membership_subscribe/membership_subscribe_imports.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/presentation/pages/vip_memberships/vip_memberships_imports.dart';

const List<AutoRoute> vipMembershipRoute = [
  AdaptiveRoute(page: MembershipSubscribe),
  AdaptiveRoute(page: VipMemberShips),
];