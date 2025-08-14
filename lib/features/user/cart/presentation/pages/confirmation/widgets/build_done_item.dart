part of 'confirmation_w_imports.dart';
class BuildDone extends StatelessWidget {
  const BuildDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(2.5).r,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.done,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
