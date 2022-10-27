import 'package:flutter/material.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';

class MultiChoiceSelection<T> extends StatelessWidget {
  final List<T> options;
  final List<T> selectedOptions;
  final void Function(T) onSelect;
  final void Function(T) onDeselect;
  final String label;
  const MultiChoiceSelection(
      {Key? key,
      required this.options,
      this.selectedOptions = const [],
      required this.onSelect,
      required this.onDeselect,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Text(label, style: const TextStyle(fontSize: 14, color: AppColor.formInputText)),
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
                          label: e.toString(),
                          onTap: () {
                            onDeselect(e);
                          },
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
                          label: e.toString(),
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

class SettingChoiceChip extends StatelessWidget {
  final String label;
  final bool selected;
  final void Function()? onTap;
  const SettingChoiceChip(
      {Key? key, required this.label, this.selected = false, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.subtitleColorPrimary),
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        child: Text(label),
      ),
    );
  }
}
