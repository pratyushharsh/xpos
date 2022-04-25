import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/module/home/clients_view.dart';
import 'package:receipt_generator/src/module/home/dashboard_view.dart';
import 'package:receipt_generator/src/module/home/items_view.dart';
import 'package:receipt_generator/src/module/home/receipt_view.dart';
import 'package:receipt_generator/src/module/home/settings_view.dart';
import 'package:receipt_generator/src/module/load_customer_contact/bloc/load_customer_contact_bloc.dart';

import '../../widgets/clipper/wave_clipper.dart';

typedef _LetIndexPage = void Function(int value);

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomeScreen());
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final List<Widget> _tabs = const [
    DashboardView(),
    ClientsView(),
    ReceiptView(),
    ItemsView(),
    SettingsView()
  ];

  void changeIndex(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          AppColor.background,
          Colors.white,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.background,
          body: Stack(
            fit: StackFit.expand,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 100),
                // transitionBuilder:
                //     (Widget child, Animation<double> animation) =>
                //         ScaleTransition(
                //   scale: animation,
                //   child: child,
                // ),
                child: _tabs[selectedIndex],
              ),
              Positioned(
                bottom: 0,
                child: MyBottomAppBar(
                  letIndexChange: changeIndex,
                  selectedIndex: selectedIndex,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBottomAppBar extends StatefulWidget {
  final _LetIndexPage letIndexChange;
  final int selectedIndex;
  const MyBottomAppBar(
      {Key? key, required this.letIndexChange, required this.selectedIndex})
      : super(key: key);

  @override
  State<MyBottomAppBar> createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  bool _open = false;

  Widget _buildSwitcher() {
    if (_open) {
      return SaleOptions(onClose: _onCloseOptions);
    }
    return Container();
  }

  void _onCloseOptions() {
    setState(() {
      _open = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.stacked_bar_chart_rounded,
                      color: widget.selectedIndex == 0
                          ? AppColor.primary
                          : AppColor.iconColor,
                    ),
                    onPressed: () {
                      widget.letIndexChange(0);
                      setState(() {
                        _open = false;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.people_outline,
                      color: widget.selectedIndex == 1
                          ? AppColor.primary
                          : AppColor.iconColor,
                    ),
                    onPressed: () {
                      widget.letIndexChange(1);
                      setState(() {
                        _open = false;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.receipt_long_rounded,
                      color: widget.selectedIndex == 2
                          ? AppColor.primary
                          : AppColor.iconColor,
                    ),
                    onPressed: () {
                      // widget.letIndexChange(2);
                      setState(() {
                        _open = !_open;
                      });
                    },
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.boxes,
                      color: widget.selectedIndex == 3
                          ? AppColor.primary
                          : AppColor.iconColor,
                      size: 18,
                    ),
                    onPressed: () {
                      widget.letIndexChange(3);
                      setState(() {
                        _open = false;
                      });
                    },
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.ellipsisH,
                      color: widget.selectedIndex == 4
                          ? AppColor.primary
                          : AppColor.iconColor,
                      size: 18,
                    ),
                    onPressed: () {
                      widget.letIndexChange(4);
                      setState(() {
                        _open = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 2,
          left: 0,
          right: 0,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 150),
            transitionBuilder: (Widget child, Animation<double> animation) =>
                ScaleTransition(
              alignment: Alignment.bottomCenter,
              scale: animation,
              child: child,
            ),
            child: _buildSwitcher(),
          ),
        ),
      ],
    );
  }
}

class SaleOptions extends StatelessWidget {
  final VoidCallback? onClose;
  const SaleOptions({Key? key, required this.onClose}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        height: 200,
        color: AppColor.color6,
        width: MediaQuery.of(context).size.width - 24,
        child: Column(
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      SaleOptionButton(
                        icon: const Icon(
                          Icons.receipt_long_rounded,
                          color: AppColor.primary,
                        ),
                        label: "Sale Receipt",
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(RouteConfig.createReceiptScreen);
                        },
                      ),
                      const SizedBox(width: 10,),
                      SaleOptionButton(
                        icon: const Icon(
                          Icons.receipt,
                          color: AppColor.primary,
                        ),
                        label: "Sale Invoice",
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(RouteConfig.createReceiptScreen);
                        },
                      ),
                    ],
                  )
                ],
              ),
            )),
            IconButton(
              icon: const Icon(
                Icons.close,
                color: AppColor.color8,
              ),
              onPressed: onClose,
            ),
          ],
        ),
      ),
    );
  }
}

class SaleOptionButton extends StatelessWidget {
  final Widget icon;
  final String label;
  final VoidCallback? onPressed;

  const SaleOptionButton(
      {Key? key,
      required this.icon,
      required this.label,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Column(
        children: [
          icon,
          Text(
            label,
            style: const TextStyle(color: AppColor.primary),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        primary: AppColor.color8,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      ),
    );
  }
}

class LoadCustomerFromPhoneButton extends StatelessWidget {
  const LoadCustomerFromPhoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (ctx) => LoadCustomerContactBloc(db: RepositoryProvider.of(ctx)),
      child: BlocBuilder<LoadCustomerContactBloc, LoadCustomerContactState>(
        builder: (context, state) {
          if (state.status == LoadCustomerContactStatus.permissionDenied) {
            return const ElevatedButton(
                onPressed: null, child: Text("Load Customer From Phone"));
          } else if (state.status == LoadCustomerContactStatus.loading) {
            return const ElevatedButton(
                onPressed: null, child: CircularProgressIndicator());
          }
          return ElevatedButton(
              onPressed: () {
                BlocProvider.of<LoadCustomerContactBloc>(context)
                    .add(LoadCustomerContactFromPhone());
              },
              child: const Text("Load Customer From Phone"));
        },
      ),
    );
  }
}
