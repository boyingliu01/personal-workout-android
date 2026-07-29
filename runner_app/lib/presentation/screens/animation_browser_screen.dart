import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

/// 动画浏览器 — 浏览 assets/animations/ 下所有 GIF，为其命名并保存映射
class AnimationBrowserScreen extends StatefulWidget {
  const AnimationBrowserScreen({super.key});

  @override
  State<AnimationBrowserScreen> createState() =>
      _AnimationBrowserScreenState();
}

class _AnimationBrowserScreenState extends State<AnimationBrowserScreen> {
  // ── State ────────────────────────────────────────────────────────────
  List<String> _allGifPaths = [];
  List<String> _filteredPaths = [];
  final Map<String, TextEditingController> _controllers = {};
  final _searchController = TextEditingController();
  bool _isLoading = true;

  // ── Lifecycle ────────────────────────────────────────────────────────
  @override
  void initState() {
    super.initState();
    _loadAssets();
    _searchController.addListener(_applyFilter);
  }

  @override
  void dispose() {
    _searchController
      ..removeListener(_applyFilter)
      ..dispose();
    for (final c in _controllers.values) {
      c.dispose();
    }
    super.dispose();
  }

  // ── Asset loading ────────────────────────────────────────────────────
  Future<void> _loadAssets() async {
    // Use hardcoded list of known GIF assets (AssetManifest.json and
    // pubspec.yaml are NOT available via rootBundle in release mode).
    final gifPaths = List<String>.from(_knownGifs)..sort();

    // Load previously saved names (if any).
    final savedNames = await _loadSavedMapping();

    // Create a controller for every GIF, pre-populated with saved name.
    for (final path in gifPaths) {
      final filename = _filenameWithoutExt(path);
      _controllers[path] =
          TextEditingController(text: savedNames[filename] ?? '');
    }

    setState(() {
      _allGifPaths = gifPaths;
      _filteredPaths = gifPaths;
      _isLoading = false;
    });
  }

  // Hardcoded list of known GIF assets as fallback
  static const _knownGifs = [
    'assets/animations/bent_over_row.gif',
    'assets/animations/bicep_curl.gif',
    'assets/animations/bird_dog.gif',
    'assets/animations/bulgarian_split_squat.gif',
    'assets/animations/burpee.gif',
    'assets/animations/butterfly_pose.gif',
    'assets/animations/calf_raise.gif',
    'assets/animations/calf_stretch.gif',
    'assets/animations/cat_cow.gif',
    'assets/animations/childs_pose.gif',
    'assets/animations/cobra_stretch.gif',
    'assets/animations/cross_body_shoulder_stretch.gif',
    'assets/animations/dead_bug.gif',
    'assets/animations/deadlift.gif',
    'assets/animations/diamond_push_up.gif',
    'assets/animations/dumbbell_press.gif',
    'assets/animations/dumbbell_swing.gif',
    'assets/animations/front_raise.gif',
    'assets/animations/glute_bridge.gif',
    'assets/animations/back_pec_stretch.gif',
    'assets/animations/hamstring_stretch.gif',
    'assets/animations/high_knees.gif',
    'assets/animations/butt_kicks.gif',
    'assets/animations/jumping_jack.gif',
    'assets/animations/kneeling_hip_flexor_stretch.gif',
    'assets/animations/lateral_raise.gif',
    'assets/animations/leg_press.gif',
    'assets/animations/lunge.gif',
    'assets/animations/lunge_with_twist.gif',
    'assets/animations/man_maker.gif',
    'assets/animations/mountain_climber.gif',
    'assets/animations/neck_side_stretch.gif',
    'assets/animations/overhead_triceps_stretch.gif',
    'assets/animations/plank.gif',
    'assets/animations/pigeon_pose.gif',
    'assets/animations/push_up.gif',
    'assets/animations/russian_twist.gif',
    'assets/animations/shoulder_circles.gif',
    'assets/animations/shoulder_stretch.gif',
    'assets/animations/side_lunge.gif',
    'assets/animations/side_plank.gif',
    'assets/animations/single_leg_deadlift.gif',
    'assets/animations/squat.gif',
    'assets/animations/squat_jump.gif',
    'assets/animations/squat_to_press.gif',
    'assets/animations/standing_quad_stretch.gif',
    'assets/animations/straddle_stretch.gif',
    'assets/animations/supine_figure_four.gif',
    'assets/animations/supine_spinal_twist.gif',
    'assets/animations/bodyweight_calf_raise.gif',
    'assets/animations/tricep_dip.gif',
    'assets/animations/upper_trapezius_stretch.gif',
    'assets/animations/worlds_greatest_stretch.gif',
  ];

  // ── Persistence ──────────────────────────────────────────────────────
  Future<File> _getMappingFile() async {
    final dir = await getApplicationDocumentsDirectory();
    return File('${dir.path}/animation_names.json');
  }

  Map<String, String> _buildMapping() {
    final mapping = <String, String>{};
    for (final path in _allGifPaths) {
      final filename = _filenameWithoutExt(path);
      final name = _controllers[path]?.text.trim() ?? '';
      if (name.isNotEmpty) {
        mapping[filename] = name;
      }
    }
    return mapping;
  }

  Future<Map<String, String>> _loadSavedMapping() async {
    try {
      final file = await _getMappingFile();
      if (file.existsSync()) {
        final jsonStr = await file.readAsString();
        final Map<String, dynamic> raw =
            json.decode(jsonStr) as Map<String, dynamic>;
        return raw.map((k, v) => MapEntry(k, v.toString()));
      }
    } catch (_) {
      // Ignore parse errors — start fresh.
    }
    return {};
  }

  Future<void> _saveAllMappings() async {
    final mapping = _buildMapping();
    final file = await _getMappingFile();
    await file.writeAsString(
      const JsonEncoder.withIndent('  ').convert(mapping),
    );
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('已保存 ${mapping.length} 个动作名称'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Future<void> _saveSingleMapping(String path) async {
    final mapping = _buildMapping();
    final file = await _getMappingFile();
    await file.writeAsString(
      const JsonEncoder.withIndent('  ').convert(mapping),
    );
    if (!mounted) return;
    final filename = _filenameWithoutExt(path);
    final name = _controllers[path]?.text.trim() ?? '';
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(name.isEmpty ? '已清除「$filename」' : '已保存「$name」'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  // ── Clipboard ────────────────────────────────────────────────────────
  void _copyDartMapToClipboard() {
    final mapping = _buildMapping();
    final buf = StringBuffer()
      ..writeln('// Animation Name Mapping (auto-generated by AnimationBrowserScreen)')
      ..writeln('const Map<String, String> exerciseAnimationNames = {');
    for (final entry in mapping.entries) {
      buf.writeln("  '${entry.key}': '${entry.value}',");
    }
    buf.writeln('};');

    Clipboard.setData(ClipboardData(text: buf.toString()));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('已复制 ${mapping.length} 条映射到剪贴板'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  // ── Filter ───────────────────────────────────────────────────────────
  void _applyFilter() {
    final query = _searchController.text.trim().toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredPaths = _allGifPaths;
      } else {
        _filteredPaths = _allGifPaths
            .where((p) => _filenameWithoutExt(p).toLowerCase().contains(query))
            .toList();
      }
    });
  }

  // ── Helpers ──────────────────────────────────────────────────────────
  static String _filenameWithoutExt(String path) {
    final name = path.split('/').last;
    final dotIdx = name.lastIndexOf('.');
    return dotIdx > 0 ? name.substring(0, dotIdx) : name;
  }

  // ── Build ────────────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('动画浏览'),
        actions: [
          TextButton.icon(
            onPressed: _saveAllMappings,
            icon: const Icon(Icons.save_rounded),
            label: const Text('保存全部'),
          ),
          const SizedBox(width: 4),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _copyDartMapToClipboard,
        icon: const Icon(Icons.code_rounded),
        label: const Text('复制为 Dart Map'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                // ── Search bar ────────────────────────────────
                _SearchBar(controller: _searchController),
                // ── Stats ─────────────────────────────────────
                _StatsBar(
                  total: _allGifPaths.length,
                  shown: _filteredPaths.length,
                  namedCount: _buildMapping().length,
                ),
                // ── List ──────────────────────────────────────
                Expanded(
                  child: _filteredPaths.isEmpty
                      ? const _EmptyView()
                      : ListView.separated(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 8,
                            bottom: 88, // FAB clearance
                          ),
                          itemCount: _filteredPaths.length,
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 12),
                          itemBuilder: (context, index) {
                            final path = _filteredPaths[index];
                            return _AnimationCard(
                              assetPath: path,
                              filename: _filenameWithoutExt(path),
                              controller: _controllers[path]!,
                              onSave: () => _saveSingleMapping(path),
                            );
                          },
                        ),
                ),
              ],
            ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════
// Sub-widgets
// ═══════════════════════════════════════════════════════════════════════

/// Search bar with orange accent.
class _SearchBar extends StatelessWidget {
  final TextEditingController controller;

  const _SearchBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: '搜索动作名称...',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: ValueListenableBuilder<TextEditingValue>(
            valueListenable: controller,
            builder: (_, value, __) {
              if (value.text.isEmpty) return const SizedBox.shrink();
              return IconButton(
                icon: const Icon(Icons.clear),
                onPressed: controller.clear,
              );
            },
          ),
          filled: true,
          fillColor: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 14,
          ),
        ),
      ),
    );
  }
}

/// Shows total / visible / named counts.
class _StatsBar extends StatelessWidget {
  final int total;
  final int shown;
  final int namedCount;

  const _StatsBar({
    required this.total,
    required this.shown,
    required this.namedCount,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 4),
      child: Row(
        children: [
          Text(
            '共 $total 个动画',
            style: textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
          ),
          const SizedBox(width: 12),
          Text(
            '已命名 $namedCount',
            style: textTheme.bodySmall?.copyWith(
              color: namedCount == total ? Colors.green : Colors.orange,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          if (shown < total)
            Text(
              '显示 $shown / $total',
              style: textTheme.bodySmall?.copyWith(color: Colors.grey[500]),
            ),
        ],
      ),
    );
  }
}

/// A single animation card: GIF preview + filename + name field + save btn.
class _AnimationCard extends StatelessWidget {
  final String assetPath;
  final String filename;
  final TextEditingController controller;
  final VoidCallback onSave;

  const _AnimationCard({
    required this.assetPath,
    required this.filename,
    required this.controller,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // ── GIF preview ───────────────────────────────────
            _GifPreview(assetPath: assetPath),
            const SizedBox(width: 14),
            // ── Right side: filename + text field + save btn
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Filename chip
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer.withValues(alpha: 0.35),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      '$filename.gif',
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'monospace',
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Chinese name input
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: '输入中文名称',
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: colorScheme.primary,
                          width: 1.5,
                        ),
                      ),
                      suffixIcon: ValueListenableBuilder<TextEditingValue>(
                        valueListenable: controller,
                        builder: (_, value, __) {
                          if (value.text.isEmpty) {
                            return const SizedBox.shrink();
                          }
                          return IconButton(
                            icon: const Icon(Icons.clear, size: 18),
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(
                              minWidth: 28,
                              minHeight: 28,
                            ),
                            onPressed: () {
                              controller.clear();
                            },
                          );
                        },
                      ),
                    ),
                    textInputAction: TextInputAction.done,
                  ),
                ],
              ),
            ),
            // ── Save single button ───────────────────────────
            const SizedBox(width: 6),
            IconButton(
              onPressed: onSave,
              icon: const Icon(Icons.check_circle_outline),
              tooltip: '保存此动作',
              color: colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}

/// Displays the GIF with a subtle orange-tinted background.
class _GifPreview extends StatelessWidget {
  final String assetPath;

  const _GifPreview({required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: const Color(0xFFF5A623).withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFF5A623).withValues(alpha: 0.2),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          assetPath,
          width: 120,
          height: 120,
          fit: BoxFit.cover,
          gaplessPlayback: true,
          errorBuilder: (_, __, ___) => const Center(
            child: Icon(Icons.broken_image, size: 36, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

/// Empty state when no GIFs match the filter.
class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.search_off, size: 56, color: Colors.grey[400]),
          const SizedBox(height: 12),
          Text(
            '没有匹配的动画',
            style: TextStyle(fontSize: 16, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }
}
