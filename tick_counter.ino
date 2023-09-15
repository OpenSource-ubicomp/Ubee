/*
 * 작성자: Automatic Addison
 * 웹사이트: https://automaticaddison.com
 * 설명: 이 아두이노 코드는 내장 인코더를 사용하여 각 바퀴의 누적 틱 수를 계산하고
 * 정방향 움직임은 양수 틱으로 표시하고, 역방향 움직임은 음수 틱으로 표시합니다.
 */

// 아두이노 인터럽트 핀에 연결된 엔코더 출력. 틱 수를 추적합니다.
#define ENC_IN_LEFT_A 2
#define ENC_IN_LEFT_B 3

// 다른 인코더 출력을 아두이노에 연결하여 회전 방향을 추적합니다.
// 회전 방향을 추적합니다.
#define ENC_IN_RIGHT_A 4
#define ENC_IN_RIGHT_B 5

// 참 = 정방향; 거짓 = 역방향
boolean Direction_left = true;
boolean Direction_right = true;

// 16비트 정수의 최솟값과 최댓값
const int encoder_minimum = -32768;
const int encoder_maximum = 32767;

// 휠 틱 수를 유지합니다.
volatile int left_wheel_tick_count = 0;
volatile int right_wheel_tick_count = 0;

// 1초 간격으로 측정합니다.
int interval = 100;
long previousMillis = 0;
long currentMillis = 0;

void setup() {
 
  // 9600 bps로 시리얼 포트 열기
  Serial.begin(115200); 
 
  // 엔코더의 핀 상태 설정
  pinMode(ENC_IN_LEFT_A , INPUT_PULLUP);
  pinMode(ENC_IN_LEFT_B , INPUT);
  pinMode(ENC_IN_RIGHT_A , INPUT_PULLUP);
  pinMode(ENC_IN_RIGHT_B , INPUT);
 
  // 핀이 High로 변할 때마다 인터럽트 발생
  attachInterrupt(digitalPinToInterrupt(ENC_IN_LEFT_A), left_wheel_tick, RISING);
  attachInterrupt(digitalPinToInterrupt(ENC_IN_RIGHT_A), right_wheel_tick, RISING);
}

void loop() {
 
  // 시간 기록
  currentMillis = millis();
 
  // 1초가 지났으면 틱 수를 출력합니다.
  if (currentMillis - previousMillis > interval) {
     
    previousMillis = currentMillis;
 
    Serial.print("Right_Ticks: ");
    Serial.println(right_wheel_tick_count);
    Serial.print("Left_Ticks: ");
    Serial.println(left_wheel_tick_count);
    Serial.println();
  }
}

// 틱 수를 증가시킵니다.
void right_wheel_tick() {
   
  // 오른쪽 휠의 인코더 값 읽기
  int val = digitalRead(ENC_IN_RIGHT_B);
 
  if(val == LOW) {
    Direction_right = false; // 역방향
  }
  else {
    Direction_right = true; // 정방향
  }
   
  if (Direction_right) {
     
    if (right_wheel_tick_count == encoder_maximum) {
      right_wheel_tick_count = encoder_minimum;
    }
    else {
      right_wheel_tick_count++;  
    }    
  }
  else {
    if (right_wheel_tick_count == encoder_minimum) {
      right_wheel_tick_count = encoder_maximum;
    }
    else {
      right_wheel_tick_count--;  
    }   
  }
}

// 틱 수를 증가시킵니다.
void left_wheel_tick() {
   
  // 왼쪽 휠의 인코더 값 읽기
  int val = digitalRead(ENC_IN_LEFT_B);
 
  if(val == LOW) {
    Direction_left = true; // 역방향
  }
  else {
    Direction_left = false; // 정방향
  }
   
  if (Direction_left) {
    if (left_wheel_tick_count == encoder_maximum) {
      left_wheel_tick_count = encoder_minimum;
    }
    else {
      left_wheel_tick_count++;  
    }  
  }
  else {
    if (left_wheel_tick_count == encoder_minimum) {
      left_wheel_tick_count = encoder_maximum;
    }
    else {
      left_wheel_tick_count--;  
    }   
  }
}
