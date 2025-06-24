import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/gift_card_details/gift_card_details_imports.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/gift_cards/gift_cards_imports.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/loyalyt_points/loyalty_points_imports.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/membership_subscribe/membership_subscribe_imports.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/my_gift_cards/my_gift_cards_imports.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/vip_memberships/vip_memberships_imports.dart';

const List<AutoRoute> giftCardRoute = [
  AdaptiveRoute(page: MembershipSubscribe),
  AdaptiveRoute(page: GiftCards),
  AdaptiveRoute(page: MyGiftCards),
  AdaptiveRoute(page: GiftCardDetails),
  AdaptiveRoute(page: VipMemberShips),
  AdaptiveRoute(page: LoyaltyPoints),
];