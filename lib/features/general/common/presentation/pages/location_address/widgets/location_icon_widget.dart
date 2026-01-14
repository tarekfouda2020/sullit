part of 'LocationWidgetsImports.dart';


class LocationIconWidget extends StatelessWidget {
  const LocationIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor:
      context.colors.primary.withOpacity(.1),
      child: Icon(
        Icons.location_on,
        color: context.colors.primary,
        size: 20,
      ),
    );
  }
}
