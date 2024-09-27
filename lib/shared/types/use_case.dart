abstract class UseCase<ReturnType, ParameterType> {
  Future<ReturnType> call(ParameterType params);
}
