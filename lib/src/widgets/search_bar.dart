import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';

import '../module/home/clients_view.dart';

class SearchBar extends StatefulWidget {
  final String label;
  final ValueChanged<String>? onChanged;
  const SearchBar({Key? key, required this.label, this.onChanged})
      : super(key: key);

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
                  children: sortOptions
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Divider(
                                  height: 0,
                                )
                              ],
                            ),
                          ))
                      .toList(),
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
              prefixIcon: Icon(
                Icons.search,
                color: AppColor.primary,
              ),
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
        FilterButton(
          child: Container(
            padding: const EdgeInsets.all(7),
            child: const Icon(Icons.sync_alt_outlined),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          filterWidget: const ProductSearchFilterWidget(),
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

class FilterButton extends StatefulWidget {

  final Widget? child;
  final Widget? filterWidget;

  const FilterButton({Key? key, this.child, this.filterWidget}) : super(key: key);

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  late bool _mouseIsConnected;
  OverlayEntry? _entry;

  @override
  void initState() {
    super.initState();
    _mouseIsConnected = RendererBinding.instance.mouseTracker.mouseIsConnected;

    // Listen to see when a mouse is added.
    RendererBinding.instance.mouseTracker.addListener(_handleMouseTrackerChange);
  }

  @override
  void dispose() {
    RendererBinding.instance.mouseTracker.removeListener(_handleMouseTrackerChange);
    _removeEntry();
    super.dispose();
  }

  // Forces a rebuild if a mouse has been added or removed.
  void _handleMouseTrackerChange() {
    if (!mounted) {
      return;
    }
    final bool mouseIsConnected = RendererBinding.instance.mouseTracker.mouseIsConnected;
    if (mouseIsConnected != _mouseIsConnected) {
      setState(() {
        _mouseIsConnected = mouseIsConnected;
      });
    }
  }

  void _createNewEntry() {
    if (_entry != null) {
      _removeEntry();
      return;
    }

    print('_createNewEntry');
    final OverlayState overlayState = Overlay.of(
      context,
      debugRequiredFor: widget,
    )!;

    Size screenSize = MediaQuery.of(context).size;
    final RenderBox box = context.findRenderObject()! as RenderBox;
    final Offset position = box.localToGlobal(Offset.zero);

    Widget overlay = Material(
      child: widget.filterWidget,
    );

    _entry = OverlayEntry(
      builder: (context) => Positioned(
        right: screenSize.width - position.dx - box.size.width,
        top: position.dy + box.size.height,
        child: overlay,
      ),
    );
    overlayState.insert(_entry!);
  }

  void _removeEntry() {
    if (_entry!= null) {
      _entry!.remove();
      _entry = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    assert(Overlay.of(context, debugRequiredFor: widget) != null);
    return GestureDetector(
      onTap: () {
        if (_mouseIsConnected) {
          _createNewEntry();
        }
      },
      child: widget.child,
    );
  }
}

class ProductSearchFilterWidget extends StatelessWidget {
  const ProductSearchFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {

                  },
                ),
                Text("Men")
              ]
            ),
            Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {

                    },
                  ),
                  Text("Women")
                ]
            )
          ],
        ),
      ),
    );
  }
}
