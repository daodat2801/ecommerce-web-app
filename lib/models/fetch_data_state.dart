sealed class FetchDataState<T> {
  const FetchDataState();
}

class Loading<T> extends FetchDataState<T> {
  const Loading();
}

class Success<T> extends FetchDataState<T> {
  final T data;
  const Success(this.data);
}

class Failure<T> extends FetchDataState<T> {
  final String error;
  const Failure(this.error);
}
