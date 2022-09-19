'use strict'

import { app, protocol, BrowserWindow ,Tray,Menu} from 'electron'
import { createProtocol } from 'vue-cli-plugin-electron-builder/lib'
import installExtension, { VUEJS3_DEVTOOLS } from 'electron-devtools-installer'
const isDevelopment = process.env.NODE_ENV !== 'production'


Menu.setApplicationMenu(null) //取消菜单栏

// 方案必须在应用程序准备好之前进行注册
protocol.registerSchemesAsPrivileged([
  { scheme: 'app', privileges: { secure: true, standard: true } }
])

async function createWindow() {
  //创建浏览器窗口
  const win = new BrowserWindow({
    // 设置窗口图标
    icon: `${__static}/favicon.ico`,    //指向public/

    width: 800,
    height: 600,
    webPreferences: {
      devTools: false,    //禁止使用调试工具
      // 使用pluginOptions.nodeIntegration，不要管这个了
      // 更多信息请参见 nklayman.github.io/vue-cli-plugin-electron-builder/guide/security.html#node-integration
      nodeIntegration: process.env.ELECTRON_NODE_INTEGRATION,
      contextIsolation: !process.env.ELECTRON_NODE_INTEGRATION,
      webSecurity:false,    //解决跨域问题
    }
  })

    // if (!isDevelopment) {
    //     tray = new Tray(path.join(__dirname, '../public/favicon.ico'))  //桌面右下角,比如QQ 闪动时的小图标位置
    // } else {
    //   tray = new Tray(path.join(`${__static}`, "./favicon.ico"));
    //   }

  if (process.env.WEBPACK_DEV_SERVER_URL) {
    // 如果处于开发模式，请加载开发服务器的url
    await win.loadURL(process.env.WEBPACK_DEV_SERVER_URL)
    // if (!process.env.IS_TEST) win.webContents.openDevTools()  //打开调试工具
  } else {
    createProtocol('app')
    // 在未开发时加载index.html
    win.loadURL('app://./index.html')
  }
}

// 当所有窗口都关闭时，退出。
app.on('window-all-closed', () => {
  // 在macOS上，这在应用程序及其菜单栏中很常见
  // 保持活动状态，直到用户显式退出 Cmd + Q
  if (process.platform !== 'darwin') {
    app.quit()
  }
})

app.on('activate', () => {
  // On macOS it's common to re-create a window in the app when the
  // dock icon is clicked and there are no other windows open.
  if (BrowserWindow.getAllWindows().length === 0) createWindow()
})

// This method will be called when Electron has finished
// initialization and is ready to create browser windows.
// Some APIs can only be used after this event occurs.
app.on('ready', async () => {
  // if (isDevelopment && !process.env.IS_TEST) {
  //   // Install Vue Devtools
  //   try {
  //     await installExtension(VUEJS3_DEVTOOLS)
  //   } catch (e) {
  //     console.error('Vue Devtools failed to install:', e.toString())
  //   }
  // }
  createWindow()
})

// Exit cleanly on request from parent process in development mode.
if (isDevelopment) {
  if (process.platform === 'win32') {
    process.on('message', (data) => {
      if (data === 'graceful-exit') {
        app.quit()
      }
    })
  } else {
    process.on('SIGTERM', () => {
      app.quit()
    })
  }
}
