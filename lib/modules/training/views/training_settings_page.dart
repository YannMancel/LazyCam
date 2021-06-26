import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget;
import 'package:flutter_riverpod/flutter_riverpod.dart' show BuildContextX;
import 'package:hooks_riverpod/hooks_riverpod.dart' show useProvider;

import '../../../core/core.dart';
import '../training.dart';

class TrainingSettingsPage extends StatelessWidget {
  const TrainingSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: const <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              _AppBar(),
              SliverPadding(
                // 16.0 for top and bottom margins of Go button
                // 44.0 for height of Go button
                padding: EdgeInsets.only(bottom: 2.0 * 16.0 + 44.0),
                sliver: _Training(),
              ),
            ],
          ),
          _GoAction(),
        ],
      ),
    );
  }
}

class _AppBar extends HookWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final training = useProvider(trainingProvider);

    return SliverAppBar(
      title: Text(training.name),
    );
  }
}

class _Training extends HookWidget {
  const _Training({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final training = useProvider(trainingProvider);

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (_, index) => _CycleCard(cycle: training.cycles[index]),
          childCount: training.cycles.length,
        ),
      ),
    );
  }
}

// TODO drag & drop card
class _CycleCard extends HookWidget {
  const _CycleCard({
    Key? key,
    required Cycle cycle,
  })   : _cycle = cycle,
        super(key: key);

  final Cycle _cycle;

  @override
  Widget build(BuildContext context) {
    final training = useProvider(trainingProvider);

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        elevation: 4.0,
        child: InkWell(
          onTap: () => context.showCustomDialog<void>(
            dialog: _CycleDialog(
              cycle: _cycle,
              doOnAccept: (cycle) {
                context
                    .read(trainingProvider.notifier)
                    .replaceCycle(oldVersion: _cycle, newVersion: cycle);
                context.pop();
              },
              doOnCancel: context.pop,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Cycle ${_cycle.id + 1}',
                        style: const TextStyle(fontSize: 20.0),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        context
                            .read(trainingProvider.notifier)
                            .addCycleAfter(cycle: _cycle);
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.copy),
                      onPressed: () {
                        context
                            .read(trainingProvider.notifier)
                            .copyCycleAfterItself(cycle: _cycle);
                      },
                    ),
                    if (training.cycles.length > 1)
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          context
                              .read(trainingProvider.notifier)
                              .remove(cycle: _cycle);
                        },
                      ),
                  ],
                ),
                const Divider(),
                _SectionCard(
                  iconData: Icons.timer,
                  title: 'Time',
                  child: Text(
                    _cycle.time.minutesAndSecondsFormat,
                    textAlign: TextAlign.right,
                  ),
                ),
                _SectionCard(
                  iconData: Icons.whatshot,
                  title: 'Tempo',
                  child: Text(
                    '${_cycle.tempo} rep/min',
                    textAlign: TextAlign.right,
                  ),
                ),
                _SectionCard(
                  iconData: Icons.pause,
                  title: 'Pause',
                  child: Text(
                    _cycle.pause.minutesAndSecondsFormat,
                    textAlign: TextAlign.right,
                  ),
                ),
                _SectionCard(
                  iconData: Icons.repeat,
                  title: 'Repeat',
                  child: Text(
                    '${_cycle.repeat}',
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CycleDialog extends StatefulWidget {
  const _CycleDialog({
    Key? key,
    required Cycle cycle,
    required ValueChanged<Cycle> doOnAccept,
    required VoidCallback doOnCancel,
  })   : _cycle = cycle,
        _doOnAccept = doOnAccept,
        _doOnCancel = doOnCancel,
        super(key: key);

  final Cycle _cycle;
  final ValueChanged<Cycle> _doOnAccept;
  final VoidCallback _doOnCancel;

  @override
  __CycleDialogState createState() => __CycleDialogState();
}

class __CycleDialogState extends State<_CycleDialog> {
  late Cycle _newCycle;

  @override
  void initState() {
    super.initState();
    _newCycle = widget._cycle;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 16.0,
          bottom: 8.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Cycle ${widget._cycle.id + 1}',
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
            const Divider(),
            _SectionDialog(
              title: 'Time',
              child: TimeSelector(
                cycle: widget._cycle,
                onChanged: (time) {
                  _newCycle = _newCycle.copyWith(time: time);
                },
              ),
            ),
            _SectionDialog(
              title: 'Tempo',
              child: TempoSelector(
                cycle: widget._cycle,
                onChanged: (tempo) {
                  _newCycle = _newCycle.copyWith(tempo: tempo);
                },
              ),
            ),
            _SectionDialog(
              title: 'Pause',
              child: PauseSelector(
                cycle: widget._cycle,
                onChanged: (pause) {
                  _newCycle = _newCycle.copyWith(pause: pause);
                },
              ),
            ),
            _SectionDialog(
              title: 'Repeat',
              child: RepeatSelector(
                cycle: widget._cycle,
                onChanged: (repeat) {
                  _newCycle = _newCycle.copyWith(repeat: repeat);
                },
              ),
            ),
            Row(
              children: <Widget>[
                const Spacer(),
                TextButton(
                  onPressed: widget._doOnCancel,
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => widget._doOnAccept(_newCycle),
                  child: const Text('Accept'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    Key? key,
    required IconData iconData,
    required String title,
    required Widget child,
  })   : _iconData = iconData,
        _title = title,
        _child = child,
        super(key: key);

  final IconData _iconData;
  final String _title;
  final Widget _child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(_iconData, color: Colors.grey),
          ),
          Expanded(
            child: Text(_title),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: _child,
          ),
        ],
      ),
    );
  }
}

class _SectionDialog extends StatelessWidget {
  const _SectionDialog({
    Key? key,
    required String title,
    required Widget child,
  })   : _title = title,
        _child = child,
        super(key: key);

  final String _title;
  final Widget _child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(_title),
          ),
        ),
        Expanded(
          flex: 2,
          child: _child,
        ),
      ],
    );
  }
}

class _GoAction extends HookWidget with RouteNames {
  const _GoAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final training = useProvider(trainingProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () {
          context.pushWithArgumentTo(
            routeName: RouteNames.kTrainingRoute,
            arguments: training,
          );
        },
        child: const Text('Go'),
      ),
    );
  }
}
