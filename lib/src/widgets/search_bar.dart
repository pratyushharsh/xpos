import 'package:flutter/material.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';

import '../module/home/clients_view.dart';

class SearchBar extends StatefulWidget {
  final String label;
  final ValueChanged<String>? onChanged;
  const SearchBar({Key? key, required this.label, this.onChanged}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late GlobalKey actionKey;

  OverlayEntry? sortOverlay;
  double? height, width, dx, dy;
  bool? sortDropdownOpened;

  findDropdownData() {
    RenderBox? renderBox =
        actionKey.currentContext?.findRenderObject() as RenderBox?;
    height = renderBox?.size.height;
    width = renderBox?.size.width;
    Offset? offset = renderBox?.localToGlobal(Offset.zero);
    dx = offset?.dx;
    dy = offset?.dy;
  }


  OverlayEntry _createFloatingOverlay(BuildContext ctx) {
    return OverlayEntry(builder: (context) {
      return Positioned(
        left: MediaQuery.of(ctx).size.width * 0.6 - 50,
        width: MediaQuery.of(ctx).size.width * 0.4,
        top: dy! + height! + 30,
        child: Material(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 800,
                color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: sortOptions.map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e, style: TextStyle(fontWeight: FontWeight.bold),),
                        Divider(height: 0,)
                      ],
                    ),
                  )).toList(),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    sortDropdownOpened = false;
    actionKey = LabeledGlobalKey(widget.label);
  }

  @override
  void dispose() {
    if (sortOverlay != null && sortOverlay!.mounted) {
      sortOverlay?.remove();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorColor: AppColor.primary,
            decoration: const InputDecoration(
              isDense: true,
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search, color: AppColor.primary,),
              prefixIconConstraints:
                  BoxConstraints(minHeight: 40, minWidth: 40),
              contentPadding: EdgeInsets.all(4),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.primary, width: 2)),
              focusColor: AppColor.primary,
              hoverColor: AppColor.primary,
            ),
            onChanged: widget.onChanged,
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        InkWell(
          key: actionKey,
          onTap:
              () {
            setState(() {
              if (sortDropdownOpened!) {
                sortOverlay?.remove();
              } else {
                findDropdownData();
                sortOverlay = _createFloatingOverlay(context);
                Overlay.of(context)?.insert(sortOverlay!);
              }
              sortDropdownOpened = !sortDropdownOpened!;
            });
          }
          ,
          child: Container(
            padding: const EdgeInsets.all(7),
            child: const Icon(Icons.sync_alt_outlined),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(4)),
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Container(
          padding: const EdgeInsets.all(7),
          child: const Icon(Icons.filter_alt_outlined),
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(4)),
        ),
      ],
    );
  }
}
