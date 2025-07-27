


import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/git_card_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/use_case/get_gift_cards_list.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/gift_cards/widgets/gift_cards_widgets_imports.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/widgets/gift_card_item_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'gift_cards.dart';
part 'gift_cards_controller.dart';