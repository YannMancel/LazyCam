import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'logger.dart';

enum ProviderEvent { Add, Update, Dependencies, Dispose }

class AppObserver extends ProviderObserver {
  const AppObserver();

  String _eventMessage({
    required ProviderEvent providerEvent,
    required ProviderBase provider,
    Object? value,
  }) {
    final event = providerEvent.toString().split('.').last.toUpperCase();
    final name = provider.name ?? provider.runtimeType;
    final result = (value != null) ? ' - $value' : '';

    return '[$event]: $name $result';
  }

  @override
  void didAddProvider(ProviderBase provider, Object? value) {
    Logger.debug(
      message: _eventMessage(
        providerEvent: ProviderEvent.Add,
        provider: provider,
        value: value,
      ),
    );
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object? newValue) {
    Logger.info(
      message: _eventMessage(
        providerEvent: ProviderEvent.Update,
        provider: provider,
        value: newValue,
      ),
    );
  }

  @override
  void mayHaveChanged(ProviderBase provider) {
    Logger.warning(
      message: _eventMessage(
        providerEvent: ProviderEvent.Dependencies,
        provider: provider,
      ),
    );
  }

  @override
  void didDisposeProvider(ProviderBase provider) {
    Logger.wtf(
      message: _eventMessage(
        providerEvent: ProviderEvent.Dispose,
        provider: provider,
      ),
    );
  }
}
