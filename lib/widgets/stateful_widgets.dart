import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String placeholder;
  const AppTextField({super.key, this.label = '', this.placeholder = ''});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label.isNotEmpty ? label : null,
        hintText: placeholder.isNotEmpty ? placeholder : null,
        border: const OutlineInputBorder(),
      ),
    );
  }
}

class AppCheckbox extends StatefulWidget {
  final String label;
  const AppCheckbox({super.key, this.label = 'Option'});

  @override
  State<AppCheckbox> createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.label),
      value: _checked,
      onChanged: (v) => setState(() => _checked = v ?? false),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}

class AppSwitch extends StatefulWidget {
  final String label;
  const AppSwitch({super.key, this.label = 'Toggle'});

  @override
  State<AppSwitch> createState() => _AppSwitchState();
}

class _AppSwitchState extends State<AppSwitch> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(widget.label),
      value: _value,
      onChanged: (v) => setState(() => _value = v),
    );
  }
}

class AppDropdown extends StatefulWidget {
  final String label;
  final List<String> options;
  const AppDropdown({super.key, this.label = 'Select', this.options = const []});

  @override
  State<AppDropdown> createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  String? _selected;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: widget.label,
        border: const OutlineInputBorder(),
      ),
      value: _selected,
      items: widget.options.map((o) => DropdownMenuItem(value: o, child: Text(o))).toList(),
      onChanged: (v) => setState(() => _selected = v),
    );
  }
}

class AppRadioGroup extends StatefulWidget {
  final String label;
  final List<String> options;
  const AppRadioGroup({super.key, this.label = 'Choose', this.options = const []});

  @override
  State<AppRadioGroup> createState() => _AppRadioGroupState();
}

class _AppRadioGroupState extends State<AppRadioGroup> {
  String? _selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(widget.label, style: Theme.of(context).textTheme.titleSmall),
          ),
        ...widget.options.map((o) => RadioListTile<String>(
          title: Text(o),
          value: o,
          groupValue: _selected,
          onChanged: (v) => setState(() => _selected = v),
        )),
      ],
    );
  }
}
