import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget;
import 'package:flutter_riverpod/flutter_riverpod.dart' show BuildContextX;
import 'package:hooks_riverpod/hooks_riverpod.dart' show useProvider;

import '../models/models_link.dart';
import '../providers.dart';
import '../widgets/widgets_link.dart';

class TrainingSettingsPage extends StatelessWidget {
  const TrainingSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          _AppBar(),
          _Training(),
          _Actions(),
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

class _Actions extends HookWidget {
  const _Actions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final training = useProvider(trainingProvider);

    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...(training.cycles.isNotEmpty
                  ? [
                      ElevatedButton(
                        onPressed: context
                            .read(trainingProvider.notifier)
                            .copyLastCycle,
                        child: const Icon(Icons.copy),
                      )
                    ]
                  : []),
              ElevatedButton(
                onPressed: context.read(trainingProvider.notifier).addCycle,
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
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
class _CycleCard extends StatelessWidget {
  const _CycleCard({
    Key? key,
    required Cycle cycle,
  })   : _cycle = cycle,
        super(key: key);

  final Cycle _cycle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TODO: create TextStyles in utils
              Text(
                'Cycle ${_cycle.id + 1}',
                style: const TextStyle(fontSize: 20.0),
              ),
              const Divider(),
              const _TimeSection(title: 'Time (min:s)'),
              _TempoSection(
                title: 'Tempo (rep/min)',
                cycle: _cycle,
                onChanged: (value) {
                  // TODO: context.read(trainingProvider.notifier).updateTempoOfCycle(cycle: _cycle, tempo: value);
                },
              ),
              const _TimeSection(title: 'Pause (min:s)'),
            ],
          ),
        ),
      ),
    );
  }
}

// TODO: callback of TimerSelector
class _TimeSection extends StatelessWidget {
  const _TimeSection({
    Key? key,
    required String title,
  })   : _title = title,
        super(key: key);

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(_title),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const TimerSelector(),
          ),
        ),
      ],
    );
  }
}

// TODO: callback of NumberSelector
class _TempoSection extends StatelessWidget {
  const _TempoSection({
    Key? key,
    required String title,
    required Cycle cycle,
    ValueChanged<int>? onChanged,
  })  : _title = title,
        _cycle = cycle,
        _onChanged = onChanged,
        super(key: key);

  final String _title;
  final Cycle _cycle;
  final ValueChanged<int>? _onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(_title),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: NumberSelector(
              cycle: _cycle,
              onChanged: _onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
