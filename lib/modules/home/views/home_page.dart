import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useAnimationController;
import 'package:hooks_riverpod/hooks_riverpod.dart' show useProvider;
import 'package:flutter_riverpod/flutter_riverpod.dart' show BuildContextX;

import '../../../core/core.dart';
import '../home.dart';

class HomePage extends StatelessWidget with RouteNames {
  const HomePage({Key? key}) : super(key: key);

  static const kMessageKey = Key('message');
  static const kCameraMiniFabKey = Key('Mini FAB camera');
  static const kStreamMiniFabKey = Key('Mini FAB stream');
  static const kTimerMiniFabKey = Key('Mini FAB timer');
  static const kNormalFabKey = Key('Normal FAB');

  static const kMiniFabPosition = 16.0 + 56.0 / 2.0 - 40.0 / 2.0 - 4.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Stack(
        children: <Widget>[
          const Align(
            child: Text(
              'Hello',
              key: kMessageKey,
              style: AppTextStyles.headline1,
            ),
          ),
          _MiniFAB(
            keyOfFAB: kStreamMiniFabKey,
            heroTag: 'stream',
            right: kMiniFabPosition,
            bottomFrom: kMiniFabPosition,
            bottomTo: 16.0 + 56.0 - 4.0 + 20.0,
            iconData: Icons.stream,
            action: () => context.pushTo = RouteNames.kStreamRoute,
          ),
          _MiniFAB(
            keyOfFAB: kCameraMiniFabKey,
            heroTag: 'camera',
            right: kMiniFabPosition,
            bottomFrom: kMiniFabPosition,
            bottomTo: 16.0 + 56.0 - 4.0 + 20.0 + 40.0 + 20.0,
            iconData: Icons.camera,
            action: () => context.pushTo = RouteNames.kCameraRoute,
          ),
          _MiniFAB(
            keyOfFAB: kTimerMiniFabKey,
            heroTag: 'timer',
            right: kMiniFabPosition,
            bottomFrom: kMiniFabPosition,
            bottomTo: 16.0 + 56.0 - 4.0 + 20.0 + 2 * (40.0 + 20.0),
            iconData: Icons.timer,
            action: () => context.pushTo = RouteNames.kTrainingSettingsRoute,
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
    required double bottomFrom,
    required double bottomTo,
    required IconData iconData,
    VoidCallback? action,
    Key? keyOfFAB,
  })  : _heroTag = heroTag,
        _right = right,
        _bottomFrom = bottomFrom,
        _bottomTo = bottomTo,
        _iconData = iconData,
        _action = action,
        _keyOfFAB = keyOfFAB,
        super(key: key);

  final String _heroTag;
  final double _right;
  final double _bottomFrom;
  final double _bottomTo;
  final IconData _iconData;
  final VoidCallback? _action;
  final Key? _keyOfFAB;

  @override
  Widget build(BuildContext context) {
    final menuState = useProvider(menuProvider);

    return AnimatedPositioned(
      right: _right,
      bottom: menuState.when(
        open: () => _bottomTo,
        close: () => _bottomFrom,
      ),
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOutQuart,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: menuState.when(
          open: () => 1.0,
          close: () => 0.0,
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
