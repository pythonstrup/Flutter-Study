# Function

- 다트는 변수조차도 객체인 언어다. 그런고로 함수는 뭐다? 당연하게도 객체다.
- 함수가 객체이기 때문에 갖는 특징이 있는데 그것은 변수가 함수를 참조할 수 있다는 것이다.
- 또한 함수의 인자로 함수를 전달할 수 있다. 즉, 함수가 일급 객체인 특성을 가진 언어이다.

> ### 일급 객체 First-Class Object
> - 변수나 상수로 해당 객체를 할당할 수 있다.
> - 함수의 매개변수로 해당 객체를 전달할 수 있다.
> - 함수의 반환값으로 해당 객체를 전달할 수 있다.
> <br/>cf) Dart에서 Class는 일급객체가 아니다. 반면 Java에서는 Class가 일급 객체이다.
> <br/>cf) Dart에서 함수나 변수는 일급 객체에 해당한다.


- Dart에는 선택 매개변수라는 개념이 있다. (코틀린에 동일한 개념이 있다)
- 선택 매개변수는 2가지 종류로 나뉜다.
  - 이름있는 선택 매개변수 Named Optional Parameter
  - 위치적 선택 매개변수 Positional Optional Parameter
- 또한 익명함수와 람다식을 지원한다.

> ### 익명함수
> - 말그대로 이름이 없는 함수를 의미한다. 일반 함수와 다르게 함수명을 제외한 채 선언한다.
> - "재사용하지 않고 한 번만 사용할 함수"를 위한 개념이다.
> - 따라서 함수의 이름을 갖지 않고, 리터럴 방식으로 변수에 담겨 사용하는 함수다.

- 익명함수의 예시(자바스크립트 코드)

```javascript
const sum = function(a, b) {
    return a+b;
} 
console.log(sum(1, 2)); // 3
```

> ### 람다식
> - 함수명을 선언하고 사용하는 것이 아닌 식별자 없이 실행 가능한 함수를 의미한다.
> - 자바의 화살표 함수(`->`)와 자바스크립트의 화살표 함수(`=>`)가 그 예시이다.
> - Dart는 자바스크립트와 같이 `=>`를 사용한다.
> - `(매개변수) => {실행문}`의 형식이다. 

<br/>

## 변수가 함수를 참조할 수 있다.

- 아래의 코드와 같다.
- number는 int 값을 반환받기 때문에 자연스럽게 int 타입이 된다.

```dart
void main() {
  var number = getNumber();
  print('Number = $number'); // Number = 3
}

getNumber() {
  return 3;
}
```

<br/>

## 다른 함수의 인자로 함수 전달 가능

- 함수 인자로 함수를 전달하는 것이 가능하다.

```dart
void main() {
  String firstName = 'JH';
  String name = getFullName(firstName, getLastName());
}

String getFullName(String firstName, String lastName) {
  return firstName + lastName;
}

String getLastName() {
  return 'park';
}
```

<br/>

## 선택 매개변수

- Dart에서는 함수 정의를 정의하고 매개변수를 선언할 때 매개변수를 선택형으로 설정할 수 있다.

### 이름있는 선택 매개변수

- 매개변수에 인자 값을 넘겨줄 때 매개변수 명을 이용해 인자값을 넘겨줄 수 있다. 매개변수명으로 인자 값을 넘겨줄 매개변수는 중괄호 `{}`로 감싸야한다.
- 다만, 기본 매개변수를 누락해서는 안된다. 아래 코드에서 기본 매개변수는 `name`에 해당한다.

```dart
void main() {
  String name = 'Park';
  String address = 'Goyang';
  String phone = 'xxx-xxxx-xxxx';
  print(getInfo(name));
  print(getInfo(name, address: address));
  print(getInfo(name, phone: phone));
  print(getInfo(name, address: address, phone: phone));
}

String getInfo(String name, {String address = 'Ansan', String phone='ooo-oooo-oooo'}) {
  return 'name: $name, address: $address, phone: $phone';
}
```

- 결과값

```
name: Park, address: Ansan, phone: ooo-oooo-oooo
name: Park, address: Goyang, phone: ooo-oooo-oooo
name: Park, address: Ansan, phone: xxx-xxxx-xxxx
name: Park, address: Goyang, phone: xxx-xxxx-xxxx
```

### 위치적 선택 매개변수

- 이름을 지정해주지 않고 순서대로 넣어주는 방식도 있다.
- 해당하는 순서에 인자가 들어오지 않으면, 디폴트 값이 들어가도록 설정하는 방법이다.
- 순서에 유의해야한다. 잘못하면 아래 예시처럼 address에 전화번호가 들어가는 문제가 발생할 수 있다.

```dart
void main() {
  String name = 'Park';
  String address = 'Goyang';
  String phone = 'xxx-xxxx-xxxx';
  print(getInfo(name));
  print(getInfo(name, address));
  print(getInfo(name, phone));
  print(getInfo(name, address, phone));
}

String getInfo(String name, [String address = 'Ansan', String phone='ooo-oooo-oooo']) {
  return 'name: $name, address: $address, phone: $phone';
}
```

- 결과값

```
name: Park, address: Ansan, phone: ooo-oooo-oooo
name: Park, address: Goyang, phone: ooo-oooo-oooo
name: Park, address: xxx-xxxx-xxxx, phone: ooo-oooo-oooo
name: Park, address: Goyang, phone: xxx-xxxx-xxxx
```

<br/>

## 익명함수와 람다식

- 위에서 설명했다시피, 익명함수는 이름이 없는 함수를 의미하고 람다식은 식별자 없이 실행 가능한 함수를 의미한다.

### 기존 함수 선언

```dart
int add(int a, int b) {
  return a + b;
}
```

### 익명함수

- 일반 함수와 다르게 맨 뒤에 세미콜론(`;`)을 넣어줘야한다.

```dart
var add = (int a, int b) {
  return a + b;
};
```

### 람다식

- 람다식도 마찬가지로 맨 뒤에 세미콜론(`;`)이 필요하다.

```dart
add(int a, int b) => a + b;
```

<br/>

## 참고자료

- [다트의 함수](https://brunch.co.kr/@mystoryg/119)
