import 'package:hooks_riverpod/hooks_riverpod.dart'
    show ProviderObserver, ProviderBase;

import '../core.dart';

enum ProviderEvent { add, update, dependencies, dispose }

class AppObserver extends ProviderObserver {
  const AppObserver();

  String _eventMessage({
    required ProviderEvent providerEvent,
    required ProviderBase provider,
    Object? value,
  }) {
    final num = provider.number;
    final event = providerEvent.nameInUpperCaseWithPadRight;
    final name = provider.name ?? provider.runtimeType;
    final result = (value != null) ? '- $value' : '';

    return '[$num] [$event] $name $result';
  }

  @override
  void didAddProvider(ProviderBase provider, Object? value) {
    Logger.debug(
      message: _eventMessage(
        providerEvent: ProviderEvent.add,
        provider: provider,
        value: value,
      ),
    );
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object? newValue) {
    Logger.info(
      message: _eventMessage(
        providerEvent: ProviderEvent.update,
        provider: provider,
        value: newValue,
      ),
    );
  }

  @override
  void mayHaveChanged(ProviderBase provider) {
    Logger.warning(
      message: _eventMessage(
        providerEvent: ProviderEvent.dependencies,
        provider: provider,
      ),
    );
  }

  @override
  void didDisposeProvider(ProviderBase provider) {
    Logger.wtf(
      message: _eventMessage(
        providerEvent: ProviderEvent.dispose,
        provider: provider,
      ),
    );
  }
}
