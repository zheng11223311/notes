//这个文件是Angular 模块，告诉Angular 如何组装应用

//Angular 核心模块
import { NgModule } from '@angular/core';
//BrowserModule ，浏览器解析的模块
import { BrowserModule } from '@angular/platform-browser';
//根组件
import { AppComponent } from './app.component';
import { HeaderComponent } from './components/header/header.component';
import { HomeComponent } from './components/home/home.component';
import { TouComponent } from './components/tou/tou.component';

//@NgModule 装饰器，@NgModule 接收一个元素据对象昂，告诉Angular 如何编译和启动应用
@NgModule({
  declarations: [     //配置当前项目运行的组件
    AppComponent, HeaderComponent, HomeComponent, TouComponent
  ],
  imports: [    //配置当前模块运行依赖的其他模块
    BrowserModule
  ],
  providers: [],    //配置项目所需的服务
  bootstrap: [AppComponent]
  //指定应用注册的主视图（称为根组件）通过引导根组件AppModule
  //来启动应用，这里一般写的是跟组件
})

//模块不需要导出任何东西，应为其他组件不需要导入根组件
export class AppModule { }
