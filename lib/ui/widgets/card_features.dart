part of 'widgets.dart';

class CardFeatures extends StatelessWidget {
  final String title;
  final VoidCallback navigate;
  const CardFeatures({Key? key, required this.title, required this.navigate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigate,
      child: Container(
        child: Row(
          children: [
            Image.asset(
              'assets/icons/ic_info.jpg',
              width: 70,
              height: 70,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: secondaryStyle.copyWith(color: secondary.withOpacity(.8)),
            )
          ],
        ),
      ),
    );
  }
}
