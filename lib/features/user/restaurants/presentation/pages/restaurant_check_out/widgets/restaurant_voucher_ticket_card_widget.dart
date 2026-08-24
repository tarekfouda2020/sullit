part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantVoucherTicketCardWidget extends StatelessWidget {
  final int index;
  final bool isLast;
  const RestaurantVoucherTicketCardWidget(
      {super.key, required this.index, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          start: index == 0 ? 14 : 0, end: isLast ? 24 : 0),
      child: CustomPaint(
        painter: _RestaurantTicketPainter(context: context),
        child: Container(
          height: 60,
          padding: const EdgeInsetsDirectional.fromSTEB(20, 6, 60, 3),
          decoration: BoxDecoration(
              borderRadius: Dimens.borderRadius30PX, color: Colors.transparent),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DirhamPrice(
                amount: "20",
                currencyStyle:
                    AppTextStyle.s18_w400(color: context.colors.black),
                textStyle: AppTextStyle.s16_w600(color: context.colors.black),
              ),

              Gaps.hGap11,
              const RestaurantVerticalDottedLineWidget(
                height: 55,
                dotHigh: 10,
              ),
              Gaps.hGap11,
              // Right side (text)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.vGap8,
                  Text(
                    'Monthly Cash credit',
                    style: AppTextStyle.s16_w400(color: context.colors.black),
                  ),
                  Gaps.vGap6,
                  Text(
                    'Expires on 10 Oct',
                    style: AppTextStyle.s14_w300(color: context.colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RestaurantTicketPainter extends CustomPainter {
  final BuildContext context;

  _RestaurantTicketPainter({required this.context});
  @override
  void paint(Canvas canvas, Size size) {
    final bgPaint = Paint()
      ..color = context.colors.customBackground
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = context.colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    const cornerRadius = 16.0;
    const cutRadius = 10.0;

    final path = Path();

    // Start top-left corner
    path.moveTo(cornerRadius, 0);

    // Top edge
    path.lineTo(size.width - cornerRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, cornerRadius);

    // Right edge until top of cut
    path.lineTo(size.width, size.height / 2 - cutRadius);
    // Right inward cut
    path.arcToPoint(
      Offset(size.width, size.height / 2 + cutRadius),
      radius: const Radius.circular(cutRadius),
      clockwise: false,
    );

    // Continue down right edge
    path.lineTo(size.width, size.height - cornerRadius);
    path.quadraticBezierTo(
        size.width, size.height, size.width - cornerRadius, size.height);

    // Bottom edge
    path.lineTo(cornerRadius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - cornerRadius);

    // Left edge up until bottom of cut
    path.lineTo(0, size.height / 2 + cutRadius);
    // Left inward cut
    path.arcToPoint(
      Offset(0, size.height / 2 - cutRadius),
      radius: const Radius.circular(cutRadius),
      clockwise: false,
    );

    // Continue up left edge
    path.lineTo(0, cornerRadius);
    path.quadraticBezierTo(0, 0, cornerRadius, 0);

    path.close();

    // Fill background
    canvas.drawPath(path, bgPaint);
    // Draw border
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
