import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

enum NetworkStatus { online, offline }

class NetworkCubit extends Cubit<NetworkStatus> {
  final Connectivity _connectivity;

  NetworkCubit(this._connectivity) : super(NetworkStatus.offline) {
    // Listen to network changes using the provided _connectivity instance
    _connectivity.onConnectivityChanged.listen((List<ConnectivityResult> result) {

      if (result == ConnectivityResult.none) {
        print('neaktivno ${result}');
        emit(NetworkStatus.offline);
      } else {
        print(' aktivno ${result}');
        emit(NetworkStatus.online);
      }
    });
  }

  // Check the initial network status when the app starts
  Future<void> checkInitialStatus() async {
    final result = await _connectivity.checkConnectivity();
    if (result == ConnectivityResult.none) {
      emit(NetworkStatus.offline);
    } else {
      emit(NetworkStatus.online);
    }
  }
}
