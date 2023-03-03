part of 'pages.dart';

class DetailTahfidzHouse extends StatelessWidget {
  DetailTahfidzHouse({Key? key, required this.tahfidzHouse}) : super(key: key);

  TahfidzHouseModel tahfidzHouse;

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
                          'Detail Rumah Tahfidz',
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nama Rumah Tahfidz :',
                                style:
                                    secondaryStyle.copyWith(fontWeight: bold),
                              ),
                              Text(
                                tahfidzHouse.name,
                                style: secondaryStyle.copyWith(
                                  fontWeight: regular,
                                  fontSize: 12,
                                  color: secondary.withOpacity(.8),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alamat :',
                                style:
                                    secondaryStyle.copyWith(fontWeight: bold),
                              ),
                              Text(
                                tahfidzHouse.address,
                                style: secondaryStyle.copyWith(
                                  fontWeight: regular,
                                  fontSize: 12,
                                  color: secondary.withOpacity(.8),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kontak :',
                                style:
                                    secondaryStyle.copyWith(fontWeight: bold),
                              ),
                              Text(
                                tahfidzHouse.contact,
                                style: secondaryStyle.copyWith(
                                  fontWeight: regular,
                                  fontSize: 12,
                                  color: secondary.withOpacity(.8),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Santri :',
                                style:
                                    secondaryStyle.copyWith(fontWeight: bold),
                              ),
                              Text(
                                tahfidzHouse.totalSantri.toString(),
                                style: secondaryStyle.copyWith(
                                  fontWeight: regular,
                                  fontSize: 12,
                                  color: secondary.withOpacity(.8),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Santri Yatim :',
                                style:
                                    secondaryStyle.copyWith(fontWeight: bold),
                              ),
                              Text(
                                tahfidzHouse.totalSantriYatim.toString(),
                                style: secondaryStyle.copyWith(
                                  fontWeight: regular,
                                  fontSize: 12,
                                  color: secondary.withOpacity(.8),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Santri Dhuafa :',
                                style:
                                    secondaryStyle.copyWith(fontWeight: bold),
                              ),
                              Text(
                                tahfidzHouse.totalSantriDhuafa.toString(),
                                style: secondaryStyle.copyWith(
                                  fontWeight: regular,
                                  fontSize: 12,
                                  color: secondary.withOpacity(.8),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          MapsLauncher.launchQuery(tahfidzHouse.address),
                      style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Colors.blue[400],
                          minimumSize: const Size.fromHeight(45),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text(
                        'Tunjukan Jalan',
                        style: primaryStyle,
                      ),
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
