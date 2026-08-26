part of 'imports.dart';

class CounterItemWidget extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData icon;

  const CounterItemWidget({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 26,
        height: 26,
        decoration: BoxDecoration(color: context.colors.primary, shape: BoxShape.circle),
        child: Icon(icon, size: 18, color: context.colors.white),
      ),
    );
  }
}
