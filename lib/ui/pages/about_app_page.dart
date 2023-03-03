part of 'pages.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  void initState() {
    super.initState();
    context.read<InfoBloc>().add(GetInfoEvent());
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColorPrimary,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('assets/icons/illustration_infaq.png'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.all(defaultRadius),
                padding: EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  color: backgroundColorPrimary,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.3),
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                width: width,
                height: 0.7 * height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Tentang Aplikasi',
                          style: secondaryStyle.copyWith(
                              fontWeight: bold, fontSize: 18),
                        ),
                        const Divider(
                          thickness: 1,
                        )
                      ],
                    ),
                    SizedBox(
                      height: defaultMargin * 2,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(defaultRadius),
                            border: Border.all()),
                        child: BlocBuilder<InfoBloc, InfoState>(
                            builder: (context, state) {
                          if (state is InfoLoaded) {
                            return Text(
                              state.info.info,
                              textAlign: TextAlign.center,
                              style: secondaryStyle,
                            );
                          }

                          if (state is InfoLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          return const Text('something went wrong');
                        }),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
