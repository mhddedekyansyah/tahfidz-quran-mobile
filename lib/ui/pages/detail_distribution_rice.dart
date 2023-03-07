part of 'pages.dart';

class DetailDistribution extends StatelessWidget {
  DetailDistribution({Key? key, required this.distribution}) : super(key: key);

  DistributionModel distribution;

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
                          'Detail Penyaluran Beras',
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
                                distribution.tahfidzHouse.name,
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
                                distribution.tahfidzHouse.address,
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
                                distribution.tahfidzHouse.contact,
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
                                'Total Beras :',
                                style:
                                    secondaryStyle.copyWith(fontWeight: bold),
                              ),
                              Text(
                                '${distribution.totalRice}.kg',
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
                                'Batch ke : ',
                                style:
                                    secondaryStyle.copyWith(fontWeight: bold),
                              ),
                              Text(
                                distribution.batch.batch.toString(),
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
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bukti Dokumentasi :',
                                  style:
                                      secondaryStyle.copyWith(fontWeight: bold),
                                ),
                                SizedBox(
                                  height: defaultMargin,
                                ),
                                Expanded(
                                    child: Image.network(
                                  '${ApiConstant.publicUrl}${distribution.imageUrl.replaceAll('%', '')}',
                                  width: width,
                                  height: height * .2,
                                ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
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
