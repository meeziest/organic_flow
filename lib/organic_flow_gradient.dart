import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mesh/mesh.dart';

/// Defines the color palette and atmosphere of the organic flow.
enum OrganicFlowTheme {
  /// Calm indigo and teal tones for concentration.
  focus,

  /// Vibrant red and orange tones for active energy.
  energy,

  /// Deep purples and dark blues for a nighttime aesthetic.
  midnight,

  /// Natural greens and earthy tones.
  forest,

  /// High-contrast black, white, and deep gray tones.
  monochrome,

  /// Warm oranges, pinks, and purples.
  sunset,

  /// Deep blues and vibrant teals.
  ocean,

  /// Soft purples and pinks for a meditative feel.
  lavender,

  /// Muted golds, tans, and ambers.
  desert,

  /// Soft pinks, roses, and peachy tones for mama+.
  blossom,

  /// Warm red/pink with light peachy accents and deep burgundy tones.
  passion,
}

/// Helper extension to manage theme-specific color palettes.
extension _OrganicFlowThemeExtension on OrganicFlowTheme {
  List<Color?> getColors(double t) {
    switch (this) {
      case OrganicFlowTheme.focus:
        return [
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          const Color(0xFF0F172A)
              .to(const Color(0xFF1E293B), (math.sin(t) + 1) / 2),
          const Color(0xFF0EA5E9)
              .to(const Color(0xFF6366F1), (math.sin(t) + 1) / 2),
          const Color(0xFF2DD4BF)
              .to(const Color(0xFF10B981), (math.sin(t) + 1) / 2),
          const Color(0xFF6366F1)
              .to(const Color(0xFF4338CA), (math.sin(t) + 1) / 2),
          const Color(0xFF1E293B)
              .to(const Color(0xFF0F172A), (math.sin(t) + 1) / 2),
          const Color(0xFF0EA5E9)
              .to(const Color(0xFF2DD4BF), (math.sin(t) + 1) / 2),
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
        ];
      case OrganicFlowTheme.energy:
        return [
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.red[900]!.to(Colors.orange[800]!, (math.sin(t) + 1) / 2),
          Colors.deepOrange[700]!
              .to(Colors.orange[200]!, (math.sin(t) + 1) / 2),
          Colors.orange[400]!.to(Colors.red[700]!, (math.sin(t) + 1) / 2),
          Colors.red[700]!.to(Colors.orange[900]!, (math.sin(t) + 1) / 2),
          Colors.orange[800]!.to(Colors.red[900]!, (math.sin(t) + 1) / 2),
          Colors.deepOrange[900]!.to(Colors.red[500]!, (math.sin(t) + 1) / 2),
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
        ];
      case OrganicFlowTheme.midnight:
        return [
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          const Color(0xFF1E1B4B)
              .to(const Color(0xFF312E81), (math.sin(t) + 1) / 2),
          const Color(0xFF4338CA)
              .to(const Color(0xFF6366F1), (math.sin(t) + 1) / 2),
          const Color(0xFF7C3AED)
              .to(const Color(0xFFC084FC), (math.sin(t) + 1) / 2),
          const Color(0xFF581C87)
              .to(const Color(0xFF1E1B4B), (math.sin(t) + 1) / 2),
          const Color(0xFF312E81)
              .to(const Color(0xFF4338CA), (math.sin(t) + 1) / 2),
          const Color(0xFF6366F1)
              .to(const Color(0xFF7C3AED), (math.sin(t) + 1) / 2),
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
        ];
      case OrganicFlowTheme.forest:
        return [
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          const Color(0xFF064E3B)
              .to(const Color(0xFF065F46), (math.sin(t) + 1) / 2),
          const Color(0xFF059669)
              .to(const Color(0xFF10B981), (math.sin(t) + 1) / 2),
          const Color(0xFF84CC16)
              .to(const Color(0xFF65A30D), (math.sin(t) + 1) / 2),
          const Color(0xFF14532D)
              .to(const Color(0xFF064E3B), (math.sin(t) + 1) / 2),
          const Color(0xFF065F46)
              .to(const Color(0xFF059669), (math.sin(t) + 1) / 2),
          const Color(0xFF10B981)
              .to(const Color(0xFF84CC16), (math.sin(t) + 1) / 2),
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
        ];
      case OrganicFlowTheme.monochrome:
        return [
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          const Color(0xFF000000)
              .to(const Color(0xFF111827), (math.sin(t) + 1) / 2),
          const Color(0xFFF9FAFB)
              .to(const Color(0xFF111827), (math.sin(t) + 1) / 2),
          const Color(0xFF374151)
              .to(const Color(0xFFD1D5DB), (math.sin(t) + 1) / 2),
          const Color(0xFF111827)
              .to(const Color(0xFF000000), (math.sin(t) + 1) / 2),
          const Color(0xFF4B5563)
              .to(const Color(0xFF1F2937), (math.sin(t) + 1) / 2),
          const Color(0xFF000000)
              .to(const Color(0xFFF9FAFB), (math.sin(t) + 1) / 2),
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
        ];
      case OrganicFlowTheme.sunset:
        return [
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          const Color(0xFFF43F5E)
              .to(const Color(0xFFFB923C), (math.sin(t) + 1) / 2),
          const Color(0xFFD946EF)
              .to(const Color(0xFF8B5CF6), (math.sin(t) + 1) / 2),
          const Color(0xFFF59E0B)
              .to(const Color(0xFFF43F5E), (math.sin(t) + 1) / 2),
          const Color(0xFF8B5CF6)
              .to(const Color(0xFFD946EF), (math.sin(t) + 1) / 2),
          const Color(0xFFFB923C)
              .to(const Color(0xFFF59E0B), (math.sin(t) + 1) / 2),
          const Color(0xFFF43F5E)
              .to(const Color(0xFFD946EF), (math.sin(t) + 1) / 2),
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
        ];
      case OrganicFlowTheme.ocean:
        return [
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          const Color(0xFF0C4A6E)
              .to(const Color(0xFF075985), (math.sin(t) + 1) / 2),
          const Color(0xFF0891B2)
              .to(const Color(0xFF06B6D4), (math.sin(t) + 1) / 2),
          const Color(0xFF22D3EE)
              .to(const Color(0xFF67E8F9), (math.sin(t) + 1) / 2),
          const Color(0xFF075985)
              .to(const Color(0xFF0C4A6E), (math.sin(t) + 1) / 2),
          const Color(0xFF06B6D4)
              .to(const Color(0xFF0891B2), (math.sin(t) + 1) / 2),
          const Color(0xFF67E8F9)
              .to(const Color(0xFF22D3EE), (math.sin(t) + 1) / 2),
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
        ];
      case OrganicFlowTheme.lavender:
        return [
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          const Color(0xFF4C1D95)
              .to(const Color(0xFF5B21B6), (math.sin(t) + 1) / 2),
          const Color(0xFF8B5CF6)
              .to(const Color(0xFFA78BFA), (math.sin(t) + 1) / 2),
          const Color(0xFFDDD6FE)
              .to(const Color(0xFFC4B5FD), (math.sin(t) + 1) / 2),
          const Color(0xFF5B21B6)
              .to(const Color(0xFF4C1D95), (math.sin(t) + 1) / 2),
          const Color(0xFFA78BFA)
              .to(const Color(0xFF8B5CF6), (math.sin(t) + 1) / 2),
          const Color(0xFFC4B5FD)
              .to(const Color(0xFFDDD6FE), (math.sin(t) + 1) / 2),
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
        ];
      case OrganicFlowTheme.desert:
        return [
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          const Color(0xFF78350F)
              .to(const Color(0xFF92400E), (math.sin(t) + 1) / 2),
          const Color(0xFFD97706)
              .to(const Color(0xFFF59E0B), (math.sin(t) + 1) / 2),
          const Color(0xFFFDE68A)
              .to(const Color(0xFFFCD34D), (math.sin(t) + 1) / 2),
          const Color(0xFF92400E)
              .to(const Color(0xFF78350F), (math.sin(t) + 1) / 2),
          const Color(0xFFF59E0B)
              .to(const Color(0xFFD97706), (math.sin(t) + 1) / 2),
          const Color(0xFFFCD34D)
              .to(const Color(0xFFFDE68A), (math.sin(t) + 1) / 2),
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
        ];
      case OrganicFlowTheme.blossom:
        return [
          const Color(0xFFF14C84).withValues(alpha: 0.1),
          const Color(0xFFF14C84).withValues(alpha: 0.1),
          const Color(0xFFF14C84).withValues(alpha: 0.1),
          const Color(0xFFF14C84)
              .to(const Color(0xFFE8D5FF), (math.sin(t) + 1) / 2),
          const Color(0xFFFFFFFF)
              .to(const Color(0xFFFFB3C6), (math.sin(t) + 1) / 2),
          const Color(0xFFB4A7D6)
              .to(const Color(0xFFFF8FA2), (math.sin(t) + 1) / 2),
          const Color(0xFF98004A)
              .to(const Color(0xFFFFD9E2), (math.sin(t) + 1) / 2),
          const Color(0xFFE8D5FF)
              .to(const Color(0xFFF14C84), (math.sin(t) + 1) / 2),
          const Color(0xFFFFB3C6)
              .to(const Color(0xFFB4A7D6), (math.sin(t) + 1) / 2),
          const Color(0xFFF14C84).withValues(alpha: 0.1),
          const Color(0xFFF14C84).withValues(alpha: 0.1),
          const Color(0xFFF14C84).withValues(alpha: 0.1),
        ];
      case OrganicFlowTheme.passion:
        return [
          const Color(0xFFE13C50).withValues(alpha: 0.1),
          const Color(0xFFE13C50).withValues(alpha: 0.1),
          const Color(0xFFE13C50).withValues(alpha: 0.1),
          const Color(0xFFE13C50)
              .to(const Color(0xFFFFD7B4), (math.sin(t) + 1) / 2),
          const Color(0xFFF06478)
              .to(const Color(0xFFFFD2DC), (math.sin(t) + 1) / 2),
          const Color(0xFF500514)
              .to(const Color(0xFFFFA08C), (math.sin(t) + 1) / 2),
          const Color(0xFF8C1446)
              .to(const Color(0xFFFF786E), (math.sin(t) + 1) / 2),
          const Color(0xFFFFD7B4)
              .to(const Color(0xFFE13C50), (math.sin(t) + 1) / 2),
          const Color(0xFFFFA08C)
              .to(const Color(0xFF8C1446), (math.sin(t) + 1) / 2),
          const Color(0xFFE13C50).withValues(alpha: 0.1),
          const Color(0xFFE13C50).withValues(alpha: 0.1),
          const Color(0xFFE13C50).withValues(alpha: 0.1),
        ];
    }
  }
}

/// Defines the motion characteristics of the organic flow.
enum OrganicFlowType {
  /// A subtle, circular breathing motion.
  calm,

  /// A rhythmic, horizontal swaying motion like waves.
  waves,

  /// A concentrated expansion and contraction motion.
  pulse,

  /// A complex, rotational shifting motion.
  vortex,

  /// A slow, one-directional drifting motion.
  drift,

  /// A high-frequency, small-amplitude shivering motion.
  shiver,

  /// A more abrupt, bouncing-like motion.
  bounce,

  /// A heavy, melting-like viscous motion.
  liquid,

  /// A slow, gentle drifting motion like clouds.
  cloudy,
}

/// Helper extension to manage motion-specific logic.
extension _OrganicFlowTypeExtension on OrganicFlowType {
  Offset getOffset(
    double curSpeed,
    double t,
    double x,
    double y,
    double radius,
  ) {
    switch (this) {
      case OrganicFlowType.calm:
        return Offset(
          math.cos(curSpeed) * radius,
          math.sin(curSpeed) * radius,
        );
      case OrganicFlowType.waves:
        return Offset(
          math.sin(curSpeed) * (radius * 2),
          math.cos(curSpeed * 2) * (radius * 0.5),
        );
      case OrganicFlowType.pulse:
        final p = math.sin(curSpeed) * radius;
        return Offset((x - 0.5) * p, (y - 0.5) * p);
      case OrganicFlowType.vortex:
        final r = radius * (1 + math.sin(t) * 0.3);
        return Offset(
          math.cos(curSpeed + t) * r,
          math.sin(curSpeed + t) * r,
        );
      case OrganicFlowType.drift:
        return Offset(
          math.sin(t) * 0.2 + math.cos(curSpeed) * radius,
          math.sin(curSpeed) * radius,
        );
      case OrganicFlowType.shiver:
        return Offset(
          math.sin(curSpeed * 4) * (radius * 0.3),
          math.cos(curSpeed * 5) * (radius * 0.3),
        );
      case OrganicFlowType.bounce:
        final b = (math.sin(curSpeed * 2).abs()) * radius;
        return Offset(b, b * 0.5);
      case OrganicFlowType.liquid:
        return Offset(
          math.cos(curSpeed) * radius * 1.5 + math.sin(t * 2) * 0.05,
          math.sin(curSpeed) * radius * 1.5 + math.cos(t * 2) * 0.05,
        );
      case OrganicFlowType.cloudy:
        final horizontalDrift = math.cos(curSpeed) * radius;
        final verticalSway = math.sin(curSpeed) * (radius * 0.3);
        return Offset(horizontalDrift, verticalSway);
    }
  }
}

/// A vibrant, looping mesh gradient animation with an organic feel.
/// Includes an optional noise overlay and scaling support.
class OrganicFlowGradient extends StatefulWidget {
  const OrganicFlowGradient({
    super.key,
    this.duration = const Duration(seconds: 20),
    this.blur = 0.0,
    this.theme = OrganicFlowTheme.focus,
    this.type = OrganicFlowType.calm,
    this.animated = false,
    this.staticPosition = const Duration(seconds: 4),
  });

  /// The duration of one full animation cycle.
  final Duration duration;

  /// The Gaussian blur sigma applied to the gradient.
  final double blur;

  /// The color theme to apply to the gradient.
  final OrganicFlowTheme theme;

  /// The type of flow motion to apply.
  final OrganicFlowType type;

  /// Whether the gradient should animate.
  ///
  /// When `true`, the gradient flows organically.
  /// When `false` (default), a static gradient snapshot is displayed.
  final bool animated;

  /// The position in the animation cycle to freeze on when
  /// [animated] is `false`.
  ///
  /// For example, with a [duration] of 20 seconds and a
  /// [staticPosition] of 5 seconds, the static gradient shows
  /// the mesh as it would appear 25% through the cycle.
  ///
  /// Ignored when [animated] is `true`.
  final Duration staticPosition;

  @override
  State<OrganicFlowGradient> createState() => _OrganicFlowGradientState();
}

class _OrganicFlowGradientState extends State<OrganicFlowGradient>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this);

  @override
  void initState() {
    super.initState();
    _configureController();
  }

  @override
  void didUpdateWidget(covariant OrganicFlowGradient old) {
    super.didUpdateWidget(old);
    if (old.animated != widget.animated || old.duration != widget.duration) {
      _configureController();
    }
  }

  void _configureController() {
    if (widget.animated) {
      _controller
        ..duration = widget.duration
        ..repeat();
    } else {
      _controller
        ..stop()
        ..value = 0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.animated) {
      return ClipRect(
        child: _applyEffects(
          Transform.scale(
            scaleX: 3,
            scaleY: 0.9,
            child: OMeshGradient(
              tessellation: 20,
              addRepaintBoundary: true,
              mesh: _buildStaticMesh(),
            ),
          ),
        ),
      );
    }

    return ClipRect(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return _applyEffects(
            Transform.scale(
              scaleX: 3,
              scaleY: 0.9,
              child: OMeshGradient(
                tessellation: 20,
                addRepaintBoundary: true,
                mesh: _buildOrganicFlow(
                  context,
                  _controller,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// Applies optional Gaussian blur and edge fade.
  Widget _applyEffects(Widget gradient) {
    var result = gradient;

    if (widget.blur > 0) {
      result = ImageFiltered(
        imageFilter: ImageFilter.blur(
          sigmaX: widget.blur,
          sigmaY: widget.blur,
        ),
        child: result,
      );
    }

    return ShaderMask(
      shaderCallback: (rect) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black,
            Colors.black,
            Colors.transparent,
          ],
          stops: [0.0, 0.15, 0.85, 1.0],
        ).createShader(rect);
      },
      blendMode: BlendMode.dstIn,
      child: result,
    );
  }

  OMeshRect _buildOrganicFlow(
    BuildContext context,
    AnimationController controller,
  ) {
    final t = controller.value * 2 * math.pi;
    return _buildMeshForTime(t);
  }

  /// Builds a static mesh at the configured [staticPosition].
  OMeshRect _buildStaticMesh() {
    final fraction = widget.duration.inMicroseconds > 0
        ? (widget.staticPosition.inMicroseconds /
                widget.duration.inMicroseconds)
            .clamp(0.0, 1.0)
        : 0.0;
    return _buildMeshForTime(fraction * 2 * math.pi);
  }

  OMeshRect _buildMeshForTime(double t) {
    OVertex flow(
      double x,
      double y,
      double radius,
      double speed,
      double phase,
    ) {
      final curSpeed = t * speed + phase;
      final offset = widget.type.getOffset(curSpeed, t, x, y, radius);

      final cx = (x + offset.dx).clamp(0.0, 1.0);
      final cy = (y + offset.dy).clamp(0.0, 1.0);

      return (cx, cy).v.bezier(
            east: (cx + 0.05, cy + math.sin(t) * 0.1).v,
            west: (cx - 0.05, cy - math.sin(t) * 0.1).v,
            north: (cx + math.cos(t) * 0.1, cy - 0.05).v,
            south: (cx - math.cos(t) * 0.1, cy + 0.05).v,
          );
    }

    return OMeshRect(
      width: 3,
      height: 4,
      colorSpace: OMeshColorSpace.lab,
      fallbackColor: Colors.transparent,
      vertices: [
        flow(0, 0, 0.1, 1, 0),
        flow(0.5, 0, 0.15, 1, 1),
        flow(1, 0, 0.1, 1, 2),
        flow(0, 0.33, 0.2, 1, 3),
        flow(0.5, 0.33, 0.1, 2, 4),
        flow(1, 0.33, 0.15, 1, 5),
        flow(0, 0.66, 0.1, 2, 6),
        flow(0.5, 0.66, 0.2, 1, 7),
        flow(1, 0.66, 0.1, 1, 8),
        flow(0, 1, 0.15, 1, 9),
        flow(0.5, 1, 0.1, 2, 10),
        flow(1, 1, 0.2, 1, 11),
      ],
      colors: widget.theme.getColors(t),
    );
  }
}

extension on Color {
  Color to(Color b, double t) => Color.lerp(this, b, t)!;
}
