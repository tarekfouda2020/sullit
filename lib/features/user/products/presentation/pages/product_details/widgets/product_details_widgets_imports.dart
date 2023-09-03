import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/GridFixedHeightDelegate.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart/widgets/cart_widgets_imports.dart';

import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/features/user/category/domain/models/color_domain_model.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/category_details/widgets/category_details_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_details_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_queries.dart';
import 'package:flutter_tdd/features/user/products/domain/models/queries.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/add_to_cart_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_product_item.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_product_item_shimmer.dart';
import 'package:flutter_tdd/res.dart';
import '../product_details_imports.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';

part 'build_product_info.dart';

part 'build_seller_info.dart';

part 'product_details_swiper.dart';

part 'build_product_buttons.dart';

part 'build_share_item.dart';

part 'build_top_selling_products.dart';

part 'build_top_selling_item.dart';

part 'build_related_products.dart';

part 'build_products_description.dart';

part 'build_product_queries.dart';

part 'build_other_questions.dart';
part 'build_product_attributes.dart';
part 'build_attribute_items.dart';

part 'build_product_qty.dart';
part 'build_product_specifications.dart';


part 'build_product_share.dart';
part 'build_review_item.dart';
part 'build_product_reviews.dart';

part 'build_question_item.dart';
part 'build_loading_details.dart';
part 'build_loading_attributes.dart';
part 'build_loading_info.dart';
part 'build_details_view.dart';
part 'build_own_questions.dart';
part 'build_attribute_list.dart';