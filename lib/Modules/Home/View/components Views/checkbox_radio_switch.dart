import 'package:flutter/material.dart';

class CheckboxRadioSwitch extends StatefulWidget {
  const CheckboxRadioSwitch({super.key});

  @override
  State<CheckboxRadioSwitch> createState() => _CheckboxRadioSwitchState();
}

class _CheckboxRadioSwitchState extends State<CheckboxRadioSwitch> {
  bool cheeckBoxValue1 = false;
  bool cheeckBoxValue2 = false;
  bool cheeckBoxValue3 = false;
  bool cheeckBoxValue4 = false;

  RadioEnums selectedRadio = RadioEnums.none;

  bool swtichValue1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Checkbox, Radio, Switch"),
        backgroundColor: Colors.white,
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("CheckBox Below"),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                ///
                ///
                /// This is Checkbox Section
                ///
                ///
                const Text(
                  "Are you a developer?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _checkboxTile(
                  "Yes",
                  cheeckBoxValue1,
                  (val) {
                    setState(() {
                      cheeckBoxValue1 = val;
                    });
                  },
                ),
                _checkboxTile(
                  "Always yes",
                  cheeckBoxValue2,
                  (val) {
                    setState(() {
                      cheeckBoxValue2 = val;
                    });
                  },
                ),
                _checkboxTile(
                  "No Im dev",
                  cheeckBoxValue3,
                  (val) {
                    setState(() {
                      cheeckBoxValue3 = val;
                    });
                  },
                ),
                _checkboxTile(
                  "kasam lylo ma dev hon",
                  cheeckBoxValue4,
                  (val) {
                    setState(() {
                      cheeckBoxValue4 = val;
                    });
                  },
                ),

                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Radio Button Below"),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                ///
                ///
                /// This is Radio Button
                ///
                ///

                const Text(
                  "What is the capital of France?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _checkboxTile(
                  "Berlin",
                  selectedRadio == RadioEnums.Berlin,
                  (val) {
                    setState(() {
                      selectedRadio = RadioEnums.Berlin;
                    });
                  },
                ),
                _checkboxTile(
                  "Madrid",
                  selectedRadio == RadioEnums.Madrid,
                  (val) {
                    setState(() {
                      selectedRadio = RadioEnums.Madrid;
                    });
                  },
                ),
                _checkboxTile(
                  "Paris",
                  selectedRadio == RadioEnums.Paris,
                  (val) {
                    setState(() {
                      selectedRadio = RadioEnums.Paris;
                    });
                  },
                ),
                _checkboxTile(
                  "Rome",
                  selectedRadio == RadioEnums.Rome,
                  (val) {
                    setState(() {
                      selectedRadio = RadioEnums.Rome;
                    });
                  },
                ),

                ///
                ///
                /// This is Switch Section
                ///
                ///
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Switch Below"),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Expanded(child: Text("Allow to show notifications")),
                    Switch(
                      value: swtichValue1,
                      onChanged: (val) {
                        setState(() {
                          swtichValue1 = val;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _checkboxTile(
    String title,
    bool value,
    Function(bool) onChanged,
  ) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (val) {
            onChanged(val ?? false);
          },
        ),
        Text(title),
      ],
    );
  }
}

enum RadioEnums {
  none,
  Berlin,
  Madrid,
  Paris,
  Rome,
}
