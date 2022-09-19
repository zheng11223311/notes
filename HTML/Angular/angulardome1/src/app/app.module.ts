import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
// 引入双向数据绑定
import { FormsModule } from '@angular/forms'

import { AppComponent } from './app.component';
import { NewComponent } from './components/new/new.component';
import { HomeComponent } from './components/home/home.component';
import { FormComponent } from './components/form/form.component';
import { SearchComponent } from './components/search/search.component';
import { TodolistComponent } from './components/todolist/todolist.component';

//引入服务
import { StorageService } from './services/storage.service';
import { AnimateViewChildComponent } from './components/animate-view-child/animate-view-child.component';
import { AnimateHeaderComponent } from './components/animate-header/animate-header.component';
import { AnimateTransitionComponent } from './components/animate-transition/animate-transition.component'

@NgModule({
  declarations: [
    AppComponent,
    NewComponent,
    HomeComponent,
    FormComponent,
    SearchComponent,
    TodolistComponent,
    AnimateViewChildComponent,
    AnimateHeaderComponent,
    AnimateTransitionComponent
  ],
  imports: [
    BrowserModule,
    FormsModule   //引入FormsModule 模块
  ],
  providers: [StorageService],  //配置服务
  bootstrap: [AppComponent]
})
export class AppModule { }
