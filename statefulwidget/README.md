# StatefulWidget

## Flutter의 철학?

- Everything is a `Widget`
- 플러터는 화면에 보여지는 요소를 클래스로 표현하며 이를 `Widget`이라고 부른다.
- UI를 표현하는 위젯은 `StatelessWidget`과 `StatefulWidget` 두 가지가 존재한다.

## Widget Immutability

- 위젯은 불변(Immutable) 법칙을 따른다.

### StatelessWidget의 상태값 변경?

- 만약 `StatelessWidget`에 색상 박스가 그려지고 그 색상을 변경하는 버튼을 넣는다고 해보자.
- 하지만 아무리 색상을 바꾸는 버튼을 눌러도 색상이 변경되지 않는다!
  - `build()`가 재실행되어야만 값이 적용될 것이다.

## 상태값을 리렌더링하고 싶다면, StatefulWidget을 사용하면 된다.

- `StatefulWidget`은 `State<T>`를 가지며, `State`에 변경이 발생하면 그것을 다시 렌더링해준다.
- `State` 클래스에는 `setState(callback)`라는 함수를 가지고 있으며, `setState(callback)`을 함수를 실행하면 `build()`가 재실행된다.


# 참고자료

- [2024 최신] [코드팩토리] [초급] Flutter 3.0 앱 개발 - 10개의 프로젝트로 오늘 초보 탈출!, 코드팩토리
