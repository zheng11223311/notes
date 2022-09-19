"ui";
engines.all().map((ScriptEngine) => {
  if (engines.myEngine().toString() !== ScriptEngine.toString()) {
    ScriptEngine.forceStop();
  }
});
/* -------------------------------------------------------------------------- */
importClass(android.view.WindowManager);
importClass(android.view.View);
importClass(android.graphics.Color);
importClass(android.view.WindowManager);
importClass("android.view.Gravity");
importClass("android.graphics.PixelFormat");
importClass(android.graphics.drawable.GradientDrawable);
importClass(android.graphics.Color);
importClass(android.graphics.Paint);
importClass(android.graphics.RectF);
importClass(Packages.android.graphics.LinearGradient);
importClass(Packages.android.graphics.Shader);
importClass(android.graphics.RadialGradient);
importClass(android.graphics.Region);
importClass(android.graphics.PorterDuff);
importClass(android.graphics.PorterDuffXfermode);
importClass(android.graphics.Xfermode);
importClass(android.graphics.Rect);
importClass(android.graphics.Path);
importClass(android.animation.AnimatorListenerAdapter);
importClass(android.animation.ValueAnimator);
importClass(Packages.androidx.core.graphics.ColorUtils);

setStatusBarFullTransparent();

ui.layout(
  <vertical>
    <View id="left" layout_weight="1" bg="#ff0000"></View>
    <View id="right" layout_weight="1" bg="#0000ff"></View>
  </vertical>
);

const animatorDuration = 300;
let minValue = 0.2;
let maxValue = 0.5;
let animator = ValueAnimator.ofFloat(minValue, maxValue);
animator.setDuration(animatorDuration); //动画时间
// setRepeatMode(int value)用于设置循环模式，取值为ValueAnimation.RESTART时,表示正序重新开始，当取值为ValueAnimation.REVERSE表示倒序重新开始。
animator.setRepeatMode(ValueAnimator.REVERSE);
animator.setRepeatCount(ValueAnimator.INFINITE);
animator.addListener(
  new AnimatorListenerAdapter({
    onAnimationStart: function (animation) {
      log("animation start");
    },
    onAnimationEnd: function (animation) {
      log("animation end");
    },
    onAnimationRepeat: function (animation) {
      // log("animation repeat");
    },
    onAnimationCancel: function (animation) {
      log("animation cancel");
    },
  })
);

let hslLeft = util.java.array("float", 3);
let leftColor = "#ff0000";
ColorUtils.RGBToHSL(colors.red(leftColor), colors.green(leftColor), colors.blue(leftColor), hslLeft);
let hslRight = util.java.array("float", 3);
let rightColor = "#0000ff";
ColorUtils.RGBToHSL(colors.red(rightColor), colors.green(rightColor), colors.blue(rightColor), hslRight);
animator.addUpdateListener(
  new ValueAnimator.AnimatorUpdateListener({
    onAnimationUpdate: function (valueAnimator) {
      let value = valueAnimator.getAnimatedValue();
      hslLeft[2] = value;
      let rgbLeft = ColorUtils.HSLToColor(hslLeft);
      ui.left.setBackgroundColor(rgbLeft);
      hslRight[2] = maxValue - value + minValue;
      let rgbRight = ColorUtils.HSLToColor(hslRight);
      ui.right.setBackgroundColor(rgbRight);
    },
  })
);
animator.start();
/* -------------------------------------------------------------------------- */
function setStatusBarFullTransparent() {
  let window = activity.getWindow();
  window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
  window
    .getDecorView()
    .setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN | View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
  window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
  window.setStatusBarColor(Color.TRANSPARENT);
}
