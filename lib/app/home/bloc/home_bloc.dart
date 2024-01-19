import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fit_page_assignment/app/home/model/stock_scan_response.dart';
import 'package:fit_page_assignment/app/home/repo/home_repo.dart';
import 'package:fit_page_assignment/common/networking/network_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(repo: HomeRepo())) {
    on<GetStockScan>((event, emit) async {
      try {
        emit(state.copyWith(
          status: HomeStatus.loading,
        ));

        List<StockScanResponse> response = await state.repo.getStockScan();

        emit(state.copyWith(
          status: HomeStatus.success,
          stockScanResponse: response,
        ));
      } on NetworkException catch (e) {
        emit(state.copyWith(
          status: HomeStatus.error,
          error: e.message,
        ));
      } on InternetException catch (e) {
        emit(state.copyWith(
          status: HomeStatus.error,
          error: e.message,
        ));
      } on RepoException catch (e) {
        emit(state.copyWith(
          status: HomeStatus.error,
          error: e.message,
        ));
      } catch (e) {
        log('error: ${e.toString()}');
        emit(
          state.copyWith(
            status: HomeStatus.error,
            error: 'Something went wrong',
          ),
        );
      }
    });
  }
}
