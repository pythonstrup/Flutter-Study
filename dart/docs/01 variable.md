# Dart Variable

- Dart에서 변수를 선언하는 방법은 아래 3가지이다.
  1. 변수 타입(자료형)을 지정해서 선언하기
  2. `var` 키워드 사용하기
  3. `dynamic` 선언하기
- `var`와 `dynamic`을 싸잡아 동적변수라고 칭한다.

<br/>

## 자료형

### 숫자 Number

- `int`: 기존 다른 언어의 int형과 동일하다. 정수를 나타낸다.
- `double`: 부동 소수점을 가진 수를 표현한다.

```dart
int number1 = 1;
double number2 = 1.23;
```

### 문자열 String

- `String`: 타입스크립트나 자바의 String과 동일하다. 

```dart
String str = "park";
```

### 불리언 Boolean

- `bool`: 참/거짓만 표현한다.

```dart
bool isOpen = true;
bool isClosed = false;
```

### 리스트 List

- `List`: 중복을 허용하는 순서가 있는 컬렉션 구조이다. (내가 보기에 자바와 유사해보인다.)

```dart
List<int> numList = [0, 1, 2, 3, 4, 5];
```

### 집합 Set

- `Set`: 중복을 허용하지 않는 순서가 없는 컬렉션

```dart
Set<int> numSet = [1,1,1,1,1,1,1]; // 결과값은 [1]이다.
```

### 맵 Map

- `Map`: key-value로 구성된 자료구조

```dart
Map<String, String> map = {
  'a': 'apple',
  'b': 'banana',
  'c': 'cacao'
};
```

<br/>

## Var & Dynamic 키워드

- 변수는 참조(Reference)를 저장한다. Dart에서는 모든 것이 객체로 취급되기 때문이다.
- `var`, `dynamic`을 사용해서 변수를 선언하면 해당 변수가 참조하고 있는 객체에 따라서 타입이 결정된다.
- Dart는 type safe 언어이기 때문에 Dart VM이나 dartdevc같은 런타임 상에서 dart 코드를 동작시키면 runtime check가 자동으로 실행되어 변수에 올바른 타입의 값이 들어갔는지 확인한다.
- 아래는 그예시이다.

```dart
var name = "park";
name = 1000; // error 발생(Error: A value of type ‘int’ can’t be assigned to a variable of type ‘String’.)
```

### dynamic

- 위와 같이 `var`의 경우 추론된 타입이 한 번 입력되고 나면 다른 타입을 저장할 수 없다. (아래 코드는 해당 에러 예시)
- 이럴 때 `dynamic`을 사용하는데, `dynamic`같은 경우에는 어떤 타입이라도 항상 입력이 가능하다.

```dart
dynamic name = 'park';

name = 1000; // 문자열에서 int형을 넣어도 대입이 되버린다?
```

<br/>

## 참고자료

- [자료형](https://velog.io/@unexpected-dev/Dart%EC%9D%98-%EC%9E%90%EB%A3%8C%ED%98%95%EA%B3%BC-%EC%84%A0%EC%96%B8%EB%B0%A9%EB%B2%95)
- [변수와 타입](https://medium.com/dartlang-korea/dart-%EB%B3%80%EC%88%98%EC%99%80-%ED%83%80%EC%9E%85-8aac991cecea)
