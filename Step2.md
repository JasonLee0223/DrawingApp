# ๐ Step2 ์์ฑ ๋ณ๊ฒฝ ๋์   
### **๐ง๐ผโ๐ป ์์ ๋ชฉ๋ก**    
- [x] ๋์ ํ๋ฉด์ ์ฌ๊ฐํ์ ํ์ํ๊ณ , ์ฐ์ธก์ ์ฌ์ฉ์๊ฐ ์ ํํ ์ฌ๊ฐํ ์์ฑ์ ๋ณ๊ฒฝํ๋ฉด ๋ฐ๋ก ํ๋ฉด์ ์์๊ณผ ํฌ๋ช๋๊ฐ ๋ณ๊ฒฝ๋๋๋ก ๊ตฌํ
  - [ ] ํญ ์ ์ค์ฒ ์ธ์๊ธฐ๋ฅผ ํ์ฉํ์ฌ ํฐ์น์ ์ฌ๊ฐํ์ ์ ํ ๋ฐ ์ทจ์ํ  ์ ์์ด์ผํ๋ค
  - [ ] ์ฌ๊ฐํ ํ๋๋ฆฌ์ ์ ์ ํ์
  - [ ] ์ฌ๊ฐํ ์ ํ ์ ํ๋ฉด ์ฐ์ธก์ ํด๋น ์ฌ๊ฐํ์ ํ์ฌ ๋ฐฐ๊ฒฝ์๊ณผ ํฌ๋ช๋๊ฐ ๋ฐ์๋๋ค
  - [ ] ๋ฐฐ๊ฒฝ์ ๋ฒํผ์๋ RGB ์์๋๋ก 16์ง์๋ก ํํ, ๋ฒํผ์ ๋๋ฅผ๋๋ง๋ค ๋๋คํ ์ถ์ฒ ์์์ผ๋ก ๋ณ๊ฒฝ
  - [ ] ํฌ๋ช๋๋ ์ข, ์ฐ ๋ฒํผ ๊ฐ๊ฐ ํฌ๋ช๋ ๋จ๊ณ๋ฅผ `-1, +1`์ฉ ์ ์ฉ๋๋ค. ์ํ๋ ๋ฒ์๋ฅผ ๋์ด์๋ฉด ๋นํ์ฑํ๋๋ค
- Plane
  - [x] ์๋ก์ด ์ฌ๊ฐํ ์์ฑ ์ Plane์ ์ถ๊ฐ
  - [x] ์ฌ๊ฐํ ์ ์ฒด ๊ฐ์๋ฅผ ์๋ ค์ฃผ๋ ๋ฉ์๋(๋๋ computed property)๊ฐ ์์ด์ผํ๋ค
  - [x] Subscrit๋ก index๋ฅผ ๋๊ธฐ๋ฉด ํด๋น ์ฌ๊ฐํ ๋ชจ๋ธ์ return
  - [ ] ํฐ์น ์ขํ๋ฅผ ๋๊ธฐ๋ฉด, ํด๋น ์์น๋ฅผ ํฌํจํ๋ ์ฌ๊ฐํ์ด ์๋์ง ํ๋จํ๋ค
- MVC Pattern
  - [ ] Plane์์ ์ฃผ๋์ ์ผ๋ก ๊ด๋ฆฌํ๋๋ก ๊ตฌํ

### **๐ญย ํ์ต ํค์๋**   
- struct
- Touch Event
- property change(์์ฑ ๋ณ๊ฒฝ)

### **๐คย ๊ณ ๋ฏผ๊ณผ ํด๊ฒฐ**   
1. Rectangle ๊ฐ์ฒด๋ฅผ ์์ฑํ๋๋ถ๋ถ์ ๋ชจ๋ฅด๊ฒ ๊ฐ์ถ๋ ค๊ณ ํ๊ณ  ์ด ๋ถ๋ถ์์ Factory Method๋ฅผ ์ฌ์ฉํด๋ณด์๋ค.   
2. [๊ณ ๋ฏผ] MVCํจํด์ ๋ง์ถฐ Model์์ View๋ก ๋ฐ์ดํฐ๋ฅผ ๋๊ฒจ์ฃผ๋๋ฐ ์ด๋ ค์ ๋ ๋ถ๋ถ์ด ์์๋ค.   
ํ์ฌ Delegate ํจํด์ ์ฌ์ฉํ๊ฒ๋์๊ณ  ์ฒ์์๋ PlaneDelegate๋ฅผ ํตํด์ ๋ฐ์ดํฐ๊ฐ ์ค๊ฐ๋ฉด ๋๋ค๊ณ  ์๊ฐํ์๋๋ฐ   
Model -> View๋ก ๋ฐ๋ก ๊ฐ ์ ์๊ณ  Controller๋ฅผ ํตํด์ ๋ฐ์ดํฐ๊ฐ ์ค๊ฐ๋ค๋ ์ ์ ์๊ณ ์์๋ค...   
[ํด๊ฒฐ] Rectangle์ ์ฌ๊ฐํ ๋ฒํผ์ ํตํด ์์ฑ๋๋๋ก DrawingViewDelegate๋ฅผ ์์ฑํ์ฌ ViewContoller๊ฐ Model๊ณผ View์ Delegate๋ฅผ ๊ฐ๊ฒํ์ฌ ๋ฐ์ดํฐ๊ฐ ์ค๊ฐ ์ ์๋๋ก ํ์๋ค.   
<img src="https://user-images.githubusercontent.com/92699723/195762209-ce254947-56a9-47b1-91ee-9fb035896713.png" width=300 height=500>


### **๐ฌ  ์คํ ํ๋ฉด**   

### **๐ฌ ๋ถ์ฐ ์ค๋ช**   