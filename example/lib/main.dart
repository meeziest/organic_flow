import 'package:flutter/material.dart';
import 'package:organic_flow/organic_flow_gradient.dart'; // Ensure it's exported in organic_flow.dart if exists, or imported directly

void main() {
  runApp(const OrganicFlowExampleApp());
}

class OrganicFlowExampleApp extends StatelessWidget {
  const OrganicFlowExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Organic Flow Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: const OrganicFlowShowcase(),
    );
  }
}

class OrganicFlowShowcase extends StatefulWidget {
  const OrganicFlowShowcase({super.key});

  @override
  State<OrganicFlowShowcase> createState() => _OrganicFlowShowcaseState();
}

class _OrganicFlowShowcaseState extends State<OrganicFlowShowcase> {
  OrganicFlowTheme _selectedTheme = OrganicFlowTheme.focus;
  OrganicFlowType _selectedType = OrganicFlowType.calm;
  double _blur = 0.0;
  bool _animated = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: OrganicFlowGradient(
              theme: _selectedTheme,
              type: _selectedType,
              blur: _blur,
              animated: _animated,
              duration: const Duration(seconds: 20),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: BackdropFilter(
                      filter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4),
                        BlendMode.darken,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Organic Flow Controls',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Theme', style: TextStyle(color: Colors.white)),
                                DropdownButton<OrganicFlowTheme>(
                                  value: _selectedTheme,
                                  dropdownColor: Colors.black87,
                                  style: const TextStyle(color: Colors.white),
                                  items: OrganicFlowTheme.values.map((theme) {
                                    return DropdownMenuItem(
                                      value: theme,
                                      child: Text(theme.name),
                                    );
                                  }).toList(),
                                  onChanged: (theme) {
                                    if (theme != null) {
                                      setState(() {
                                        _selectedTheme = theme;
                                      });
                                    }
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Motion Type', style: TextStyle(color: Colors.white)),
                                DropdownButton<OrganicFlowType>(
                                  value: _selectedType,
                                  dropdownColor: Colors.black87,
                                  style: const TextStyle(color: Colors.white),
                                  items: OrganicFlowType.values.map((type) {
                                    return DropdownMenuItem(
                                      value: type,
                                      child: Text(type.name),
                                    );
                                  }).toList(),
                                  onChanged: (type) {
                                    if (type != null) {
                                      setState(() {
                                        _selectedType = type;
                                      });
                                    }
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Animated', style: TextStyle(color: Colors.white)),
                                Switch(
                                  value: _animated,
                                  onChanged: (val) {
                                    setState(() {
                                      _animated = val;
                                    });
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Text('Blur', style: TextStyle(color: Colors.white)),
                                Expanded(
                                  child: Slider(
                                    value: _blur,
                                    min: 0.0,
                                    max: 50.0,
                                    onChanged: (val) {
                                      setState(() {
                                        _blur = val;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
