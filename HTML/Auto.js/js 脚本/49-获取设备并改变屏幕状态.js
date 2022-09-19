
// 返回设备是否正在充电。
// console.log(device.isCharging());  //false

// // 返回设备内存总量，单位字节(B)。1MB = 1024 * 1024B。
// console.log(device.getTotalMem());  //3651985408

// // 返回设备当前可用的内存，单位字节(B)。
// console.log(device.getAvailMem()); //3096928256

// // 返回设备屏幕是否是亮着的
// console.log(device.isScreenOn()); //true
// // 唤醒设备。
// device.wakeUp()
// // 如果屏幕没有点亮，则唤醒设备。
// device.wakeUpIfNeeded()
// // 屏幕保持常亮的时间, 单位毫秒 - 如果不加此参数，则一直保持屏幕常亮。
// // 保持屏幕常亮。
// device.keepScreenOn(500000)
// // 屏幕保持常亮的时间, 单位毫秒 - 如果不加此参数，则一直保持屏幕常亮。
// // 保持屏幕常亮。加节电变暗
// device.keepScreenDim()
// // 取消设备保持唤醒状态
// device.cancelKeepingAwake()
// 使设备震动一段时间。
device.vibrate(1000)
sleep(500)
// 如果设备处于震动状态，则取消震动。
// device.cancelVibration()

