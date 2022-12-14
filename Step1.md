# 📌 Step1 아이패드 앱 프로젝트   
### **🧑🏼‍💻 작업 목록**
- [x]  iOS 앱 프로젝트 기본 구조인 MVC 형태에 맞춰서 작성한다.
- [x]  객체지향 프로그래밍(OOP) 방식에 대해 학습하며 class 객체를 설계한다.
    - [x]  반드시 class로 작성
    - [x]  클래스 이름, 변수명, 함수명에서 자신만의 규칙을 만든다.
- [x]  Step1 진행
    - [x]  필수 속성 클래스 파일로 작성
        - Identifier (고유아이디 - String)
        - Size(Width, Height)
        - Point(X, Y)
        - BackgroundColor(R, G, B)
        - Alpha (투명도)
    - [x]  모델 클래스 출력을 위해 CustomStringConvertible 프로토콜을 추가하고 구현
    - [x]  모델 클래스의 생성자(init)에서 랜덤값을 처리하는 것이 아니라, 랜덤값을 생성해서!   
        모델 생성하는 초기값을 넘겨주는 팩토리 구현

### **💭 학습 키워드**

- 아이패드
- 클래스
- 뷰 모델

### **🤔 고민과 해결**
- `고유 아이디를 어떻게 만들까??`   
    문자열을 다룰 때는 중간에 값을 바꾸기 보다는 한꺼번에 만드는 느낌으로 만드는 게 좋습니다.   
    특히 Id처럼 자주 생성되는 경우라면 작은 차이가 미묘하게 메모리를 계속 더 먹게 될 수도 있습니다.   
    → UUID 사용 방식과 직접 문자열을 만들어 처리하는 방법에서 UUID를 사용하는 것으로 결정하였다.   

- `Factory?? Factory Method를 만들어야하는건가...?`   
    팩토리라는 게 말한 것처럼 이런 간편 생성자들의 모음이라고 볼 수도 있습니다.   
    애플 프레임워크들도 UIColor.white 나 CGSize.zero 처럼 init을 사용하지 않고 자주 쓰는 값들을 바로바로 만들어서 쓸 수 있도록 도와주는 거죠.   
    팩토리 타입을 분리해보라고 한 것은 지정생성자 init을 두고, 랜덤처럼 값을 지정해서 만드는 경우를 분리해보라는 거였습니다.   
    init() 생성자와 (팩토리로) 생성하는 코드를 분리해보는 것 자체도 의미가 있습니다.   
    팩토리가 없더라도 Color.init() 만으로도 안전하게 생성되거나 실패하는 것을 보장해줘야 하기 때문입니다.   
    지금   
    ```Swift
    Color.init(R: 12345, G: -1234, B:9999)
    ```
    이렇게 생성하면 어떻게 될까요? 안전하지 않은 타입, 미완성된 타입처럼 느껴져야 합니다.

### **💬  실행 화면**
<img src = "https://user-images.githubusercontent.com/92699723/187606706-baef805d-166b-44a6-912e-e06852b9c2a1.png" width="800" height="150">   

### **💬 부연 설명**
[애플 UIKit 설명 & App and Environment](https://github.com/JasonLee0223/TIL/blob/main/iOS/About%20App%20Development%20with%20UIKit.md)   
[Protocol 역할과 표현 방식](https://github.com/JasonLee0223/TIL/blob/main/iOS/Logger%20&%20OS_Log.md)   
[시스템 로그 함수](https://github.com/JasonLee0223/TIL/blob/main/Swift/Protocol.md)   