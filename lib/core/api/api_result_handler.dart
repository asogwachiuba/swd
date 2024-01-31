import '../../utils/app_logger.dart';
import 'api.dart';

Future<ApiResult<T>> apiResultHandler<T>(Function run) async {
  try {
    final response = await run();
    if (response.order != null) {
      return ApiResult.success(data: response.order! as T);
    } else {
      return const ApiResult.failure(
          error: NetworkExceptions.unexpectedError());
    }
  } catch (e) {
    logger.e(e);
    return ApiResult.failure(error: NetworkExceptions.getDioException(e));
  }
}
