# 📌 Step2 속성 변경 동작   
### **🧑🏼‍💻 작업 목록**    
- [ ] 동작 화면에 사각형을 표시하고, 우측에 사용자가 선택한 사각형 속성을 변경하면 바로 화면에 색상과 투명도가 변경되도록 구현
  - [ ] 탭 제스처 인식기를 활용하여 터치시 사각형을 선택 및 취소할 수 있어야한다
  - [ ] 사각형 테두리에 선을 표시
  - [ ] 사각형 선택 시 화면 우측에 해당 사각형의 현재 배경색과 투명도가 반영된다
  - [ ] 배경색 버튼에는 RGB 순서대로 16진수로 표현, 버튼을 누를때마다 랜덤한 추천 색상으로 변경
  - [ ] 투명도는 좌, 우 버튼 각각 투명도 단계를 `-1, +1`씩 적용된다. 원하는 범위를 넘어서면 비활성화된다
- Plane
  - [ ] 새로운 사각형 생성 시 Plane에 추가
  - [ ] 사각형 전체 개수를 알려주는 메서드(또는 computed property)가 있어야한다
  - [ ] Subscrit로 index를 넘기면 해당 사각형 모델을 return
  - [ ] 터치 좌표를 넘기면, 해당 위치를 포함하는 사각형이 있는지 판단한다
- MVC Pattern
  - [ ] Plane에서 주도적으로 관리하도록 구현

### **💭 학습 키워드**   
- struct
- Touch Event
- property change(속성 변경)

### **🤔 고민과 해결**   
1. Rectangle 객체를 생성하는부분을 모르게 감추려고했고 이 부분에서 Factory Method를 사용해보았다.   
2. [고민] MVC패턴에 맞춰 Model에서 View로 데이터를 넘겨주는데 어려웠던 부분이 있었다.   
하여 Delegate 패턴을 사용하게되었고 처음에는 PlaneDelegate를 통해서 데이터가 오가면 된다고 생각하였는데   
Model -> View로 바로 갈 수 없고 Controller를 통해서 데이터가 오간다는 점을 잊고있었다...   
[해결] Rectangle을 사각형 버튼을 통해 생성되도록 DrawingViewDelegate를 생성하여 ViewContoller가 Model과 View의 Delegate를 갖게하여 데이터가 오갈 수 있도록 하였다.   
<img src="https://user-images.githubusercontent.com/92699723/195762209-ce254947-56a9-47b1-91ee-9fb035896713.png" width=300 height=500>


### **💬  실행 화면**   

### **💬 부연 설명**   