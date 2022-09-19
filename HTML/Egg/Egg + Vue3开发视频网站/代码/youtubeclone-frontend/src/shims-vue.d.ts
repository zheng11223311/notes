/* eslint-disable */
// ts 类型声明文件,补充 .vue 类型
declare module '*.vue' { //所有vue 模块的类型都是导出的 component 类型
  import type { DefineComponent } from 'vue'
  const component: DefineComponent<{}, {}, any> // component 类型为DefineComponent
  export default component
}
