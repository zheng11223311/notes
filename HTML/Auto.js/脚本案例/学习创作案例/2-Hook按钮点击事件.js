"ui";
importClass(android.view.View);
importClass(java.lang.Class);
ui.layout(
  <vertical margin="100">
    <button id="btn">按钮</button>
  </vertical>
);

ui.btn.click(function () {
  toastLog("你点击了按钮");
});

hookOnClickListener(ui.btn);
function hookOnClickListener(view) {
  // 第一步：反射得到 ListenerInfo 对象
  // getListenerInfo = View.class.getDeclaredMethod("getListenerInfo");
  getListenerInfo = Class.forName("android.view.View").getDeclaredMethod("getListenerInfo");
  getListenerInfo.setAccessible(true);
  listenerInfo = getListenerInfo.invoke(view);
  // 第二步：得到原始的 OnClickListener事件方法
  listenerInfoClz = Class.forName("android.view.View$ListenerInfo");
  mOnClickListener = listenerInfoClz.getDeclaredField("mOnClickListener");
  mOnClickListener.setAccessible(true);
  // 第三步：用 Hook代理类 替换原始的 OnClickListener
  hookedOnClickListener = JavaAdapter(View.OnClickListener, {
    onClick: function (v) {
      toastLog("Hook Click Listener");
      log(v);
    },
  });
  mOnClickListener.set(listenerInfo, hookedOnClickListener);
}