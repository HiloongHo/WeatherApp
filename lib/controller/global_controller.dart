// 导入geolocator包，用于获取地理位置信息
import 'package:geolocator/geolocator.dart';
// 导入get包，用于状态管理
import 'package:get/get.dart';

// 定义一个全局控制器类，继承自GetxController
class GlobalController extends GetxController {
  // 使用RxBool观察者，监控加载状态，默认为true表示正在加载
  final RxBool _isLoading = true.obs;
  // 使用RxDouble观察者，存储纬度信息，默认为0.0
  final RxDouble _lattitude = 0.0.obs;
  // 使用RxDouble观察者，存储经度信息，默认为0.0
  final RxDouble _longitude = 0.0.obs;

  // 提供对外访问加载状态的方法
  RxBool checkLoading() => _isLoading;

  // 提供对外获取纬度值的方法
  RxDouble getLattitude() => _lattitude;

  // 提供对外获取经度值的方法
  RxDouble getLongitude() => _longitude;

  // 重写初始化方法，在控制器创建时被调用
  @override
  void onInit() {
    // 如果加载状态为真，说明尚未获取位置信息，调用getLocation进行获取
    if (_isLoading.isTrue) {
      getLocation();
    }
    // 调用父类的初始化方法
    super.onInit();
  }

  // 异步方法，用于获取当前位置信息
  getLocation() async {
    // 声明变量存储位置服务是否启用和位置权限状态
    bool isServiceEnabled;
    LocationPermission locationPermission;

    // 检查设备的位置服务是否已启用
    isServiceEnabled = await Geolocator.isLocationServiceEnabled();

    // 如果位置服务未启用，抛出错误
    if (!isServiceEnabled) {
      return Future.error("位置没有被初始化");
    }

    // 检查应用是否有获取位置的权限
    locationPermission = await Geolocator.checkPermission();

    // 根据权限状态处理不同情况
    if (locationPermission == LocationPermission.deniedForever) {
      // 如果权限被永久拒绝，抛出错误
      return Future.error("位置权限被永久拒绝");
    } else if (locationPermission == LocationPermission.denied) {
      // 请求位置权限
      locationPermission = await Geolocator.requestPermission();
      // 用户拒绝权限请求，抛出错误
      if (locationPermission == LocationPermission.denied) {
        return Future.error("位置权限被拒绝");
      }
    }

    // 获取当前位置信息，设置高精度
    return await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high)
        .then((value) {
      // 更新纬度和经度的值
      _lattitude.value = value.latitude;
      _longitude.value = value.longitude;
      // 设置加载状态为false，表示数据已加载完成
      _isLoading.value = false;
      print(_lattitude.value);
      print(_longitude.value);
    });
  }
}
