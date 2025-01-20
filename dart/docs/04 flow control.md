# Flow Control

## 조건문

- 조건문은 기존에 존재하는 다른 언어들과 거의 유사하다.
  - `if`
  - `if~else`
  - `switch`
  - `assert`

### assert

- 여기서 약간 생소하다고 볼 수 있는 `assert` 조건문만 따로 살펴보자.
- 기존의 다른 언어에서는 런타임 중에 `assert` 문에서 오류가 발생하면 프로그램을 중단하고 오류 메시지를 출력한다.
- 다트에서는 `assert`가 `debug mode`에서만 동작하도록 설계되었다. 디버그 모드가 아니라면 `ignored`된다.

<br/>

## 반복문

- 반복문 또한 동일하다. 따로 설명하지 않도록 하겠다.
  - for
  - while
  - do~while

## 참고자료

- [다트의 제어 흐름](https://brunch.co.kr/@mystoryg/121)
