import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/preview_cart_address_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_address.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class PreviewCartAddress
    implements UseCase<CartPreviewAddress?, PreviewCartAddressParams> {
  @override
  Future<CartPreviewAddress?> call(PreviewCartAddressParams params) async {
    var result = await getIt<CartRepository>().previewCartAddress(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
