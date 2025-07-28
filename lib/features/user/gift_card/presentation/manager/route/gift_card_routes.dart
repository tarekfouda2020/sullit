import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/gift_card_details/gift_card_details_imports.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/gift_cards/gift_cards_imports.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/loyalyt_points/loyalty_points_imports.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/my_gift_cards/my_gift_cards_imports.dart';

const List<AutoRoute> giftCardRoute = [
  AdaptiveRoute(page: GiftCards),
  AdaptiveRoute(page: MyGiftCards),
  AdaptiveRoute<bool>(page: GiftCardDetails),
  AdaptiveRoute(page: LoyaltyPoints),
];