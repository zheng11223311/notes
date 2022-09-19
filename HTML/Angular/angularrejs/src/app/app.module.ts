import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';

//引入service 服务
import { StorageService } from './services/storage.service';
//引入内置http
import {HttpClientModule} from '@angular/common/http'

import { HomeComponent } from './components/home/home.component';
import { NewsComponent } from './components/news/news.component'

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    NewsComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,   //配置http
  ],
  providers: [StorageService],
  bootstrap: [AppComponent]
})
export class AppModule { }
