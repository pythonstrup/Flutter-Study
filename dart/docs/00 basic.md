# Basic

## Main Concept

- 모든 변수는 객체다. 숫자, 문자열, 함수, 심지어 `null` 조차도 객체다. 자바보다 더한 '완전' 객체지향형 언어이다.

> ### 자바에서의 객체 <br/>
> - 자바에서 원시 타입(primitive type)은 객체가 아니다. 메모리에 저장될 때 객체처럼 동작하지 않는다. 
> - 자바에서 원시 타입은 스택 메모리에 저장된다. 
> - 참조 타입(Reference Type)은 저장 방식이 약간 다르다. `실제 객체가` 힙 메모리에 저장되고, 참조 타입 변수는 스택 영역에서 실제 객체들의 주소를 저장한다.
> - 객체를 사용할 때마다 참조 변수에 저장된 객체의 주소를 불러와 사용한다. 
> - 때문에 자바에는 원시타입을 객체처럼 활용할 수 있게 Wrapper Class라는 것을 제공하며, Boxing & Unboxing 개념이 존재한다.

- 타입 어노테이션(Type Annotation)은 타입 추론이 가능할 경우, 생략 가능하다. 함수에서는 `void`도 생략가능하다.
- 만약 어떤 변수의 타입이 예상되지 않는다고 명시적으로 표현하고 싶다면 `dynamic` 키워드를 사용하면 된다. (타입을 이리저리 바꿀 수 있다는 의미)
- 자바와 마찬가지로 제네릭 타입을 지원한다.
- `main()`과 같은 최상위 함수를 지원한다.
  - `main()`은 앱을 실행하는 최상위 함수로 대체로 `bin` 디렉토리에 있다. 
  - `bin`은 파일을 실행하기 위한 Dart의 entry point를 포함하기 때문에 `main.dart`가 `bin` 내에 존재하는 것이다.
  - `lib` 디렉토리의 파일은 공유 가능한 코드를 가지고 있으며, 해당 소스코드를 `bin` 등에 공유한다.

> ### Entry Point(진입점)? <br/>
> 제어가 운영 체제에서 컴퓨터 프로그램으로 이동하는 것을 말하며, 프로세서는 프로그램이나 코드에 진입해서 실행을 시작한다. 

- `public`, `private`, `protected` 등의 **접근제한자** 키워드가 존재하지 않는다. 대신 `private`를 사용하고 싶다면 식별자 앞에 `_`(밑줄 혹은 언더바)를 넣어주면 된다.
> ### cf) 자바스립트의 접근제한자 <br/>
> 과거 자바스크립트에 class 형이 없을 때 `protected`를 표현하기 위해 언더바를 사용했었다.

- debug mode와 release mode, 두 가지 런타임 모드가 있다. 
  - debug mode는 <b>dartdevc</b> 컴파일러를 통해 더 쉬운 디버깅 기능을 제공한다.
  - release mode는 <b>dart2js</b> 컴파일러를 통해 웹 사이즈와 성능을 최적화한다.
- 주석은 슬래쉬 2번, `//`을 사용한다.
- 문자열을 작성할 때 큰 따옴표(`"`), 작은 따옴표(`'`)를 구분하지 않는다.
  - 문자열에 변수를 출력하고 싶다면 `$변수`를 넣어주면 된다.
  - 표현식을 작성할 때는 따옴표 안에 `${변수 + 상수}` 형태로 적어줄 수 있다. (중괄호 필요)

<br/>

## Dart Keyword

- 다트의 키워드, 예약어, 식별자에 대해서 알아보자. 각각의 개념이 약간씩 다르다.

### 식별자 Identifier

- Dart에는 Built-In Identifier(내장 식별자)가 존재한다. 
- 내장 식별자는 클래스명, 타입명, import시 prefix로 사용할 수 없다.
- 종류는 아래와 같다.

<table>
    <tr>
        <td>abstract</td>
        <td>as</td>
        <td>convariant</td>
        <td>deferred</td>
        <td>dynamic</td>
    </tr>
    <tr>
        <td>export</td>
        <td>external</td>
        <td>factory</td>
        <td>Function</td>
        <td>get</td>
    </tr>
    <tr>
        <td>implements</td>
        <td>import</td>
        <td>interface</td>
        <td>library</td>
        <td>mixin</td>
    </tr>
    <tr>
        <td>operator</td>
        <td>part</td>
        <td>set</td>
        <td>static</td>
        <td>typedef</td>
    </tr>
</table>

### 키워드 Keyword

- 특정 문맥에서 특별한 의미를 가지는 단어다. 따라서 그 '특정 문맥'이 아닌 곳에서는 식별자로 사용 가능하다.
- 다트에는 문맥 키워드라는 것이 있는데, 그 종류는 5가지이다.
  - `sync`
  - `async`
  - `hide`
  - `on`
  - `show`
- 특정 문맥에서 특별한 의미를 가진 혹은, 어떤 동작을 수행하는 역할이다.
- 하지만 '특정 문맥'에 해당하지 않을 때는 함수명이건 변수명으로든 사용 가능하다.

### 예약어 Reserved Word

### 비동기 관련 예약어

- 비동기 관련 예약어에는 2종류가 있다. (어떻게 보면 문맥 키워드로도 볼 수 있다)
  - `await`
  - `yield`
- 해당 예약어는 `async`, `async*`, `sync*`로 표현되는 동기, 비동기 관련 함수 내부에서는 식별자로 사용할 수 없다. 
- 하지만 그외에는 식별자로 자유롭게 사용 가능하다.

### 그 외 예약어

- 아래는 어떤 경우에도 식별자가 될 수 없는 나머지 기타 예약어이다.

<table>
    <tr>
        <td>assert</td>
        <td>break</td>
        <td>case</td>
        <td>catch</td>
        <td>class</td>
    </tr>
    <tr>
        <td>const</td>
        <td>continue</td>
        <td>default</td>
        <td>do</td>
        <td>else</td>
    </tr>
    <tr>
        <td>enum</td>
        <td>extends</td>
        <td>false</td>
        <td>final</td>
        <td>finally</td>
    </tr>
    <tr>
        <td>for</td>
        <td>if</td>
        <td>in</td>
        <td>is</td>
        <td>new</td>
    </tr>
    <tr>
        <td>null</td>
        <td>rethrow</td>
        <td>return</td>
        <td>super</td>
        <td>switch</td>
    </tr>
    <tr>
        <td>this</td>
        <td>throw</td>
        <td>true</td>
        <td>try</td>
        <td>var</td>
    </tr>
    <tr>
        <td>void</td>
        <td>while</td>
        <td>with</td>
        <td></td>
        <td></td>
    </tr>
</table>

## 참고자료

- [다트 기본](https://brunch.co.kr/@mystoryg/116)
- [자바 원시타입과 참조타입](https://velog.io/@gillog/%EC%9B%90%EC%8B%9C%ED%83%80%EC%9E%85-%EC%B0%B8%EC%A1%B0%ED%83%80%EC%9E%85Primitive-Type-Reference-Type)