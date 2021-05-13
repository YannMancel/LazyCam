import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useAnimationController;
import 'package:hooks_riverpod/hooks_riverpod.dart' show useProvider;
import 'package:flutter_riverpod/flutter_riverpod.dart' show BuildContextX;

import '../extensions/extensions_link.dart';
import '../providers.dart';
import '../routes.dart';
import '../widgets/widgets_link.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const kMessageKey = Key('message');
  static const kCameraMiniFabKey = Key('Mini FAB camera');
  static const kStreamMiniFabKey = Key('Mini FAB stream');
  static const kTimerMiniFabKey = Key('Mini FAB timer');
  static const kNormalFabKey = Key('Normal FAB');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Stack(
        children: [
          Align(
            child: const StyledText(
              data: 'Hello',
              key: kMessageKey,
            ),
          ),
          _MiniFAB(
            keyOfFAB: kStreamMiniFabKey,
            heroTag: 'stream',
            right: 20.0,
            bottom: 16.0,
            verticalOffset: -1.4,
            iconData: Icons.stream,
            action: () => context.pushBy = MaterialRouteGenerator.kStreamRoute,
          ),
          _MiniFAB(
            keyOfFAB: kCameraMiniFabKey,
            heroTag: 'camera',
            right: 20.0,
            bottom: 16.0,
            verticalOffset: -2.5,
            iconData: Icons.camera,
            action: () => context.pushBy = MaterialRouteGenerator.kCameraRoute,
          ),
          _MiniFAB(
            keyOfFAB: kTimerMiniFabKey,
            heroTag: 'timer',
            right: 20.0,
            bottom: 16.0,
            verticalOffset: -3.6,
            iconData: Icons.timer,
            action: () => context.pushBy = MaterialRouteGenerator.kTimerRoute,
          ),
        ],
      ),
      floatingActionButton: const _NormalFAB(
        keyOfFAB: kNormalFabKey,
        heroTag: 'Normal FAB',
        iconData: Icons.add,
      ),
    );
  }
}

class _MiniFAB extends HookWidget {
  const _MiniFAB({
    Key? key,
    required String heroTag,
    required double right,
    required double bottom,
    required double verticalOffset,
    required IconData iconData,
    VoidCallback? action,
    Key? keyOfFAB,
  })  : _heroTag = heroTag,
        _right = right,
        _bottom = bottom,
        _verticalOffset = verticalOffset,
        _iconData = iconData,
        _action = action,
        _keyOfFAB = keyOfFAB,
        super(key: key);

  final String _heroTag;
  final double _right;
  final double _bottom;
  final double _verticalOffset;
  final IconData _iconData;
  final VoidCallback? _action;
  final Key? _keyOfFAB;

  Animation<Offset> _getSlideAnimation({
    required BuildContext context,
    required AnimationController controller,
  }) {
    return Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, _verticalOffset),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.elasticOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 800),
    );

    useProvider(menuProvider).when(
      open: animationController.forward,
      close: animationController.reverse,
    );

    return Positioned(
      right: _right,
      bottom: _bottom,
      child: SlideTransition(
        position: _getSlideAnimation(
          context: context,
          controller: animationController,
        ),
        child: FloatingActionButton(
          key: _keyOfFAB,
          heroTag: _heroTag,
          mini: true,
          onPressed: _action,
          child: Icon(_iconData),
        ),
      ),
    );
  }
}

class _NormalFAB extends HookWidget {
  const _NormalFAB({
    Key? key,
    required String heroTag,
    required IconData iconData,
    Key? keyOfFAB,
  })  : _heroTag = heroTag,
        _iconData = iconData,
        _keyOfFAB = keyOfFAB,
        super(key: key);

  final String _heroTag;
  final IconData _iconData;
  final Key? _keyOfFAB;

  Animation<double> _getRotationAnimation({
    required BuildContext context,
    required AnimationController controller,
  }) {
    return Tween<double>(
      begin: 0.0,
      end: 1.0 / 8.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.elasticInOut,
      ),
    )..addStatusListener(
        (status) {
          switch (status) {
            case AnimationStatus.dismissed:
            case AnimationStatus.completed:
              context.read(menuProvider.notifier).reverseState();
              break;
            case AnimationStatus.forward:
            case AnimationStatus.reverse:
              /* Do anything here */
              break;
          }
        },
      );
  }

  void _onPressed({
    required BuildContext context,
    required AnimationController controller,
  }) {
    context.read(menuProvider).when(
          open: controller.reverse,
          close: controller.forward,
        );
  }

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    return RotationTransition(
      turns: _getRotationAnimation(
        context: context,
        controller: animationController,
      ),
      child: FloatingActionButton(
        heroTag: _heroTag,
        key: _keyOfFAB,
        onPressed: () => _onPressed(
          context: context,
          controller: animationController,
        ),
        child: Icon(_iconData),
      ),
    );
  }
}
