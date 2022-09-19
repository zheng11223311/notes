**Angular 表单 input，checkbox，radio，select，textarea 实现在线预约功能**

**示例：**

**angulardome1\src\app\app.component.html**

```html
<div class="toolbar" role="banner">
  <app-form></app-form>

</div>


```

**angulardome1\src\styles.css**

```css
/* 公共（全局）样式 */
* {
  margin: 0;
  padding: 0;
}

ul,
ol {
  list-style: none;
}

```

**angulardome1\src\app\components\form\form.component.css**

```css
h2 {
  text-align: center;
}

.people_list {
  width: 400px;
  margin: 40px auto;
  padding: 20px;
  border: 1px solid #eee;
}

.people_list li {
  height: 50px;
  line-height: 50px;

}

.people_list li #name {
  width: 300px;
  height: 28px;
}
```

**angulardome1\src\app\components\form\form.component.html**

```html
<h2>人员登记系统</h2>

<div class="people_list">
    <ul>
        <li>姓名：<input type="text" id="name"[(ngModel)]="peopleInfo.username"></li>

       
        <li>性别：<input type="radio" name="sex" value="男" id="sex1" [(ngModel)]="peopleInfo.sex"><label for="sex1">男</label>
            &nbsp;  &nbsp;&nbsp;
        <input type="radio" name="sex" value="女" id="sex2" [(ngModel)]="peopleInfo.sex"><label for="sex2">女</label>
        </li>
        
        <li>
            城市：<select name="city" id="city" [(ngModel)]="peopleInfo.city">
                <option [value]="item" *ngFor="let item of peopleInfo.cityList">{{item}}</option>
            </select>
        </li>
        <li>
            爱好：
            <span *ngFor="let item of peopleInfo.hobby;let key=index">
                <input type="checkbox" [checked]='item.checked' [id]="key" [(ngModel)]="item.checked"><label [for]="key">{{item.title}}</label>
            </span>
        </li>
        <li>
            备注：
            <textarea name="" id="" cols="30" rows="10" [(ngModel)]="peopleInfo.mark">

            </textarea>
           
        </li>
        <br>
        <br>
        <br>
        <br>
        <br>
    </ul>
    <!-- [] 表示绑定属性，() 表示绑定事件 -->
    <button (click)='doSubmit()'>获取表单的内容</button>
</div>
<!-- 使用管道json 将object 对象展开显示 -->
 {{peopleInfo|json}}
```

**angulardome1\src\app\components\form\form.component.ts**

```ts
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-form',
  templateUrl: './form.component.html',
  styleUrls: ['./form.component.css']
})
export class FormComponent implements OnInit {

  public peopleInfo: any = {
    username: '',
    sex: '男',
    cityList: ['北京', '深圳', '上海', '杭州', '苏州'],
    city: '北京',
    hobby: [
      {
        title: '吃饭',
        checked: false,
      },
      {
        title: '碎觉',
        checked: true,
      },
      {
        title: '敲代码',
        checked: false,
      },
    ],
    mark: '',
  }

  doSubmit() {
    console.log(this.peopleInfo);

  }

  constructor() { }

  ngOnInit(): void {
  }

}

```

