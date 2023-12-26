import 'dart:developer';

import 'package:app_filmes/application/ui/loader/loader_mixin.dart';
import 'package:app_filmes/application/ui/messages/messages_mixin.dart';
import 'package:app_filmes/repositories/movies/movies_repository.dart';
import 'package:get/get.dart';

class MovieDetailController extends GetxController
    with LoaderMixin, MessagesMixin {
  final MoviesRepository _moviesService;

  var loading = false.obs;
  var message = Rxn<MessageModel>();

  MovieDetailController({required MoviesRepository moviesService})
      : _moviesService = moviesService;

  @override
  void onInit() {
    loaderListener(loading);
    messageListenner(message);
    super.onInit();
  }

  @override
  void onReady() async {
    try {
      final movieId = Get.arguments;
      loading(true);
      final movieDetailData = await _moviesService.getDetail(movieId);
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
      loading(false);
      message(MessageModel.error(title: 'Erro', message: 'Erro ao buscar detalhe do filme'));
    }
    super.onReady();
  }
}
