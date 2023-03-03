part of 'pages.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                margin: EdgeInsets.all(defaultMargin),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Datang,',
                          style: secondaryStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Di Aplikasi Layanan Informasi Penyaluran Infaq Beras Mumtaz',
                          style: secondaryStyle.copyWith(
                            fontWeight: regular,
                            fontSize: 12,
                            color: secondary.withOpacity(.8),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Menu Utama',
                          style: secondaryStyle.copyWith(
                              fontWeight: bold, fontSize: 18),
                        ),
                        Text(
                          'Fitur yang tersedia',
                          style: secondaryStyle.copyWith(
                            fontWeight: regular,
                            fontSize: 12,
                            color: secondary.withOpacity(.8),
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                        )
                      ],
                    ),
                    SizedBox(
                      height: defaultMargin * 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CardFeatures(
                          title: 'Info Rumah Tahfidz',
                          navigate: () =>
                              Navigator.pushNamed(context, '/tahfidz-house'),
                        ),
                        CardFeatures(
                          title: 'Info Penyaluran Beras',
                          navigate: () =>
                              Navigator.pushNamed(context, '/distribution'),
                        ),
                        CardFeatures(
                          title: 'Tentang Aplikasi',
                          navigate: () =>
                              Navigator.pushNamed(context, '/about'),
                        ),
                      ],
                    ),
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
