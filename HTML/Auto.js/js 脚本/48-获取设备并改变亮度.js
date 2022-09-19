
// 返回当前的(手动)亮度。范围为0~255。
console.log(device.getBrightness());  //102

// 返回当前亮度模式，0为手动亮度，1为自动亮度。
console.log(device.getBrightnessMode());  //0

// `mode` {number} 亮度模式，0为手动亮度，1为自动亮度
device.setBrightnessMode(0)

// `b` {number} 亮度，范围0~255
device.setBrightness(100)

