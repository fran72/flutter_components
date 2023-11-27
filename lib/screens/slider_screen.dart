import 'package:flutter/material.dart';
import 'package:flutter_app_cap6/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 0.3;
  bool _sliderEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & checkssss'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            value: _sliderValue,
            activeColor: AppTheme.primary,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          // Checkbox(
          //   value: _sliderEnabled,
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? false;
          //     setState(() {});
          //   },
          // ),
          // Switch(
          //   value: _sliderEnabled,
          //   onChanged: (value) {
          //     _sliderEnabled = value;
          //     setState(() {});
          //   },
          // ),
          CheckboxListTile.adaptive(
            title: const Text('habilitar slider'),
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? false;
              setState(() {});
            },
          ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('habilitar slider'),
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            },
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                width: _sliderValue * 500,
                image: const NetworkImage(
                    'https://www.blogdelfotografo.com/wp-content/uploads/2015/08/3326693655_d6e30ce3f6_o.jpg'),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.abc),
      ),
    );
  }
}
