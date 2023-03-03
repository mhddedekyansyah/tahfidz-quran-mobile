part of 'pages.dart';

class TahfidzHouse extends StatefulWidget {
  TahfidzHouse({Key? key}) : super(key: key);

  @override
  State<TahfidzHouse> createState() => _TahfidzHouseState();
}

class _TahfidzHouseState extends State<TahfidzHouse> {
  @override
  void initState() {
    super.initState();
    context.read<TahfidzHouseBloc>().add(GetTahfidzHouse());
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Info Rumah Tahfidz',
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
                      BlocBuilder<TahfidzHouseBloc, TahfidzHouseState>(
                          builder: (context, state) {
                        if (state is TahfidzHouseLoaded) {
                          return ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => ListTile(
                                    title:
                                        Text(state.tahfidzHouses[index].name),
                                    trailing:
                                        const Icon(Icons.arrow_forward_ios),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              DetailTahfidzHouse(
                                                  tahfidzHouse: state
                                                      .tahfidzHouses[index]),
                                        ),
                                      );
                                    },
                                  ),
                              separatorBuilder: (_, index) => const SizedBox(
                                    height: 10,
                                  ),
                              itemCount: state.tahfidzHouses.length);
                        }

                        if (state is TahfidzHouseLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        return const Center(
                          child: Text('something went wrong'),
                        );
                      })
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
