# Dart Constants

- 모바일 환경에서 한 번 설정한 변수를 바꾸지 못하도록 하는 것이 어떤 장점이 있을까?
- 멀티 스레드 환경에서 해당 값이 변경되지 않음을 보장하기 때문에 예측 가능하고 간결한 코드를 만들 가능성이 커지게 된다.
- Dart는 이를 위해 `final`과 `const` 키워드를 제공한다.

## 선언

- 기존 변수 선언 방식에서 맨 앞에 `final`과 `const`만 추가해주면 되는 형식이다.

```dart
final int number = 1;
const String str = 'park';
```

- 이제 위 값을 다른 값으로 변경하려고 하면 컴파일 오류가 발생한다.

## 차이점

- `final`과 `const`는 언뜻 보기에 같아보이지만 차이점이 있다.
- `const`의 경우, 컴파일 타임에서 상수를 정의할 수 있다. `const`로 정의한 상수는 런타임에서 정의되는 값을 설정할 수 없다는 의미다.
- 아래 예시를 살펴보자.
- `final`로 `DateTime.now()`를 선언하면 아무 문제도 없다.

```dart
final DateTime now = DateTime.now();
```

- 하지만 `const`로 선언하면 컴파일 에러가 발생한다. 왜일까?

```dart
const DateTime now = DateTime.now(); // compile error
```

```
Error: Cannot invoke a non-'const' constructor where a const expression is expected.
Try using a constructor or factory that is 'const'.
const now = DateTime.now();
```

- 위에서 설명했다시피, `const`는 런타임에 정의되는 값을 선언할 수 없다.
- 하지만 `DateTime.now()`는 런타임에서 호출될 때마다 결과값이 달라진다. 때문에 `const`로 선언하면 에러가 발생하는 것이다.
- 그렇다고 모든 인스턴스화 과정에서 `const`를 사용할 수 없는 것은 아니다.
- 아래와 같이 클래스의 생성자가 `const`로 선언되어 있다며 변수에서 const를 사용할 수 있다.

```dart
class Number {
  const Number(int value) {...} 
}

void main() {
  const number = Number(1);
}
```

- 또 `List`, `Set`, `Map`을 다룰 때 차이를 보인다.
- `final`로 선언했을 때 요소를 추가하면 아무런 문제가 발생하지 않는다. 물론 해당 배열을 재선언하려고 하면 컴파일 에러가 발생한다. 

```dart
final List<int> numList = [];
numList.add(1);
```

- 하지만 const로 선언했을 때는 요소를 추가하는 코드를 넣으면 컴파일 에러가 발생한다.

```dart
const List<int> numList = [];
numList.add(1); // compile error
```

## 참고자료

- [final과 const](https://medium.com/dartlang-korea/dart-final-%EA%B3%BC-const-bc8c6c024ef4)