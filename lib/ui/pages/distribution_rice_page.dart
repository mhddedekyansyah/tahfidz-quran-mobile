part of 'pages.dart';

class Distribution extends StatefulWidget {
  Distribution({Key? key}) : super(key: key);

  @override
  State<Distribution> createState() => _DistributionState();
}

class _DistributionState extends State<Distribution> {
  @override
  void initState() {
    context.read<DistributionBloc>().add(GetDistribution());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColorPrimary,
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<DistributionBloc>().add(GetDistribution());
        },
        child: SafeArea(
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
                              'Info Penyaluran Beras',
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
                        BlocBuilder<DistributionBloc, DistributionState>(
                            builder: (context, state) {
                          if (state is DistributionLoaded) {
                            return ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) => ListTile(
                                      title: Text(state.distributions[index]
                                          .tahfidzHouse.name),
                                      trailing:
                                          const Icon(Icons.arrow_forward_ios),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                DetailDistribution(
                                                    distribution: state
                                                        .distributions[index]),
                                          ),
                                        );
                                      },
                                    ),
                                separatorBuilder: (_, index) => const SizedBox(
                                      height: 10,
                                    ),
                                itemCount: state.distributions.length);
                          }

                          if (state is DistributionLoading) {
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
      ),
    );
  }
}
