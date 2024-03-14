import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protego_vpn/presentation/pages/home/manager/home_state.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit():super(HomeState(isStarted: false));
  onTapButton(){
    emit(HomeState(isStarted: !state.isStarted));
  }
}