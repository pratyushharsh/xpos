import 'package:flutter/material.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';

import '../../entity/pos/report_config_entity.dart';

class MultiChoiceReportColumnConfigSelection extends StatelessWidget {
  final List<ReportColumnConfigEntity> options;
  final List<ReportColumnConfigEntity> selectedOptions;
  final void Function(ReportColumnConfigEntity) onSelect;
  final void Function(ReportColumnConfigEntity) onDeselect;
  final void Function(ReportColumnConfigEntity) onUpdateOption;
  final String label;
  const MultiChoiceReportColumnConfigSelection(
      {Key? key,
      required this.options,
      this.selectedOptions = const [],
      required this.onSelect,
      required this.onDeselect,
      required this.onUpdateOption,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Text(label,
              style:
                  const TextStyle(fontSize: 14, color: AppColor.formInputText)),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.subtitleColorPrimary),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: selectedOptions
                      .map(
                        (e) => SettingChoiceChip(
                          columnConfig: e,
                          onTap: () {
                            onDeselect(e);
                          },
                          onUpdateOption: onUpdateOption,
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: options
                      .map(
                        (e) => SettingChoiceChip(
                          columnConfig: e,
                          onUpdateOption: onUpdateOption,
                          onTap: () {
                            onSelect(e);
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SettingChoiceChip extends StatefulWidget {
  final ReportColumnConfigEntity columnConfig;
  final bool selected;
  final void Function()? onTap;
  final void Function(ReportColumnConfigEntity) onUpdateOption;
  const SettingChoiceChip(
      {Key? key,
      required this.columnConfig,
      this.selected = false,
      this.onTap,
      required this.onUpdateOption})
      : super(key: key);

  @override
  State<SettingChoiceChip> createState() => _SettingChoiceChipState();
}

class _SettingChoiceChipState extends State<SettingChoiceChip> {
  bool _open = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onDoubleTap: () {
        setState(() {
          _open = !_open;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.subtitleColorPrimary),
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.columnConfig.toString()),
            if (_open)
              SettingChoiceConfig(
                config: widget.columnConfig,
                onUpdateOption: widget.onUpdateOption,
              ),
          ],
        ),
      ),
    );
  }
}

class SettingChoiceConfig extends StatelessWidget {
  final ReportColumnConfigEntity config;
  final void Function(ReportColumnConfigEntity) onUpdateOption;
  const SettingChoiceConfig(
      {Key? key, required this.config, required this.onUpdateOption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 1, color: Colors.grey.shade500)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  onUpdateOption(config.copyWith(align: ColumnAlignment.left));
                },
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: config.align == ColumnAlignment.left
                        ? Border.all(color: Colors.grey.shade500)
                        : const Border(),
                  ),
                  child: const Icon(Icons.format_align_left),
                ),
              ),
              InkWell(
                onTap: () {
                  onUpdateOption(
                      config.copyWith(align: ColumnAlignment.center));
                },
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: config.align == ColumnAlignment.center
                        ? Border.all(color: Colors.grey.shade500)
                        : const Border(),
                  ),
                  child: const Icon(Icons.format_align_center),
                ),
              ),
              InkWell(
                onTap: () {
                  onUpdateOption(config.copyWith(align: ColumnAlignment.right));
                },
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: config.align == ColumnAlignment.right
                        ? Border.all(color: Colors.grey.shade500)
                        : const Border(),
                  ),
                  child: const Icon(Icons.format_align_right),
                ),
              ),
              InkWell(
                onTap: () {
                  onUpdateOption(
                      config.copyWith(align: ColumnAlignment.justify));
                },
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: config.align == ColumnAlignment.justify
                        ? Border.all(color: Colors.grey.shade500)
                        : const Border(),
                  ),
                  child: const Icon(Icons.format_align_justify),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: config.align == ColumnAlignment.right
                        ? Border.all(color: Colors.grey.shade500)
                        : const Border(),
                  ),
                  child: const Icon(Icons.format_bold),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: config.align == ColumnAlignment.right
                        ? Border.all(color: Colors.grey.shade500)
                        : const Border(),
                  ),
                  child: const Icon(Icons.format_italic),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: config.align == ColumnAlignment.right
                        ? Border.all(color: Colors.grey.shade500)
                        : const Border(),
                  ),
                  child: const Icon(Icons.format_underline),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
