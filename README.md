# Ubee
![UBICOMPLAB_LOGO](https://github.com/OpenSource-ubicomp/Ubee/assets/57317636/386c9f72-b5ac-450d-9a68-2d767ef6dc64)
Ubeerobot is a suite of Open Source ROS compatible robots that aims to provide students, developers, and researchers a low-cost platform in creating new exciting applications on top of ROS.

## Tutorial

You can read the full tutorial how to build your robot [here](https://github.com/OpenSource-ubicomp/Ubee/wiki).

## Multiplatform
Supports multiple types of robot base:
- 2WD


# Hardware
## 3D modeling
![image](https://github.com/OpenSource-ubicomp/Ubee/assets/57317636/c74b56ab-6a60-4927-b323-e1f80d803980)

## ABS laser cutting
![image](https://github.com/OpenSource-ubicomp/Ubee/assets/57317636/a5370252-d693-4c81-9661-d7abbbbffbc7)

# 1. Getting Started
Sion Jeon edited this page on Dec 1, 2023 


## 1.1 What you need
**1.1.1 Supported laser sensors**
* RPLidar
* YDLIDAR X4
* YDLIDAR G4
* YDLIDAR G6
* Intel RealSense D455



**1.1.2 Supported IMUs**
* GY-85
* MPU6050
* MPU9150
* MPU9250
* iAHRS

**1.1.3 Micro-controller**
* Arudino UNO

**1.1.4 Linux computer**
* Ubuntu installed laptop (for development)

* Ubuntu install ARM based dev board (for the robot)
* Tested Boards:
`Raspberry Pi 3/B+`
``Jetson Xavier AGX``
``Jetson Nano``


**1.1.5 Supported Motor Drivers**
* L298N [link](https://www.icbanq.com/P012835116)
* Cytron MDD20A [link](https://www.devicemart.co.kr/goods/view?no=13179162)

**1.1.6 Motor**
* 2 x Motors with encoders [link](https://www.dfrobot.com/product-1006.html)


**1.1.7 Wheels**
* 2 x Wheels (2WD) [link](https://www.devicemart.co.kr/goods/view?no=1160325)
* 1 x Caster Wheel 


**1.1.8 Batteries**
* iEnergt 2N  Battery 20800mAh for SBC [link](https://www.coupang.com/vp/products/1250977173?itemId=2250197044&vendorItemId=70247580450&src=1032034&spec=10305197&addtag=400&ctag=1250977173&lptag=I2250197044&itime=20231201145602&pageType=PRODUCT&pageValue=1250977173&wPcid=11640597894181445782286&wRef=prod.danawa.com&wTime=20231201145602&redirect=landing&mcid=6445afc2bb9e4038b769a91ee62e596d&isAddedCart=)
* SAMSUNG 7.4V Battery pack for USB HUB
[link](https://xn--9t4bq8drsan1u.com/product/%EC%82%BC%EC%84%B1-18650-%EB%B0%B0%ED%84%B0%EB%A6%AC%ED%8C%A9-2s2p-74v-5200mah%EB%A6%AC%ED%8A%AC%EC%9D%B4%EC%98%A8-%EC%A0%9C%EC%9E%91%ED%98%95-1x4/2715/)

**1.1.9 Miscellaneous**
* 4 * aluminum extrusion 150mm [link](https://www.devicemart.co.kr/goods/view?no=23894)
* 4 * aluminum extrusion 450mm
* 4 * aluminum extrusion 400mm
* 16 * AL BRACLET  [link](https://www.devicemart.co.kr/goods/view?no=24022)
* 32 * T-NUT [link](https://www.devicemart.co.kr/goods/view?no=12530572)
* 32 * BLOT M4X15

# Sofrware

## 1. Teleop Control
Control Using keyboard
**launch base driver**
```
roslaunch launch_ubee test.launch
```
**launch teleop keyboard**
```
rosrun teleop_twist_keyboard teleop_twist_keyboard.py
```

## 2. IMU Sensor Test
![MPU6050_IMU_sensor_ROS_test_with_Filter](https://github.com/OpenSource-ubicomp/Ubee/assets/57317636/ae1bc327-7c20-4157-a884-9eded51104aa)


**launch imu sensor driver**
```
roslaunch mpu_6050_driver imu.launch
```
**rviz**
```
rviz
```


## 2. LiDAR configuration
![2d_lidar_test-2023-11-05_17 33 04](https://github.com/OpenSource-ubicomp/Ubee/assets/57317636/e9ec0e4a-4fe7-4048-a13b-ca8151ca01ee)

**launch base driver**
```
roslaunch launch_ubee test.launch
```
**launch lidar driver**
```
roslaunch ydlidar_ros_driver lidar_view.launch
```

## 3. Creating map
![image](https://github.com/OpenSource-ubicomp/Ubee/assets/57317636/20d4f21e-7d0a-42d6-9b86-6d96aee66381)

**launch base driver**
```
roslaunch launch_ubee test.launch
```
**launch lidar driver**
```
roslaunch ydlidar_ros_driver lidar.launch
```
**launch slam driver**
```
roslaunch hector_slam_launch tutorial.launch
```


