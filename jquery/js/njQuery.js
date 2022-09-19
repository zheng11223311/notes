// 39-jQuery 入口函数测试
(function(window,undefined){
    var njQuery=function(selector){
        // console.log(new njQuery.prototype.init(selector))
        return new njQuery.prototype.init(selector)
    }
    njQuery.prototype={
        constructor:njQuery,
        init:function(selector){
    // 1.传入'' null undefined NaN 0 false,返回空的jQuery 对象
    //2.字符串
    //  代码片段:会将创建好的DOM 元素存储到jQuery 对象中返回
    // 选择器:会将找到的所有元素存储到jQuery 对象中返回
    //  3.数组
    // 真数组:会将数组中存储的元素依次存储到jQuery 对象中返回
    // 伪数组:会将数组中存储的元素依次存储到jQuery 对象中返回
    // 4.除上述类型以外的
    // 会将传入的数据存储到jQuery 对象中返回


    //0.去除字符串两端的空格
     selector=njQuery.trim(selector)

     // 1.传入'' null undefined NaN 0 false,返回空的jQuery 对象     
    if(!selector){      //!selector ===>true
        return this
    }
    //2.方法处理
    else if(njQuery.isFunction(selector)){
        njQuery.ready(selector)
    }
    //2.字符串
    else if(njQuery.isString(selector)){        //小写的string
                // console.log('字符串');
                // console.log(selector);
                //2.1判断是否是代码片段<a>
                    if(njQuery.isHTML(selector)){
                        // console.log('代码片段');
                        //根据代码片段创建所有的元素
                        var temp=document.createElement('div')
                        temp.innerHTML=selector
                        // console.log(temp);
                    /*  // 2.将创建好的一级元素添加到jQuery 当中
                        for(var i=0;i<temp.children.length;i++){
                            this[i]=temp.children[i]
                          
                        }
                        //3.给jQuery 对象添加length 属性
                        this.length=temp.children.length
                    */
                   ;[].push.apply(this,temp.children)
                        //   console.log(this);         //init()
                        //4.返回加工好的this(jQuery)
                        return this

                    }
                //2.2判断是否选择器
                else{
                    //1.根据传入的选择器找到对应的元素
                    var res=document.querySelectorAll(selector)
                    //2.将找到的元素添加到njQuery 上
                        /* for(var i=0;i<res.length;i++){
                            this[i]=res[i]
                          
                        }
                        this.length=res.length */
                        ;[].push.apply(this,res)
                    //3.返回加工上的this
                        return this
                }
            }
            // else if(typeof selector==='object'&&'length' in selector &&selector !==window){
                else if(njQuery.isArray(selector)){
                //window 有length 属性,也是object
                //3.1 真数组
                // if(({}).toString.apply(selector)=='[object Array]'){
                //    [].push.apply(this,selector)
                //    return this
                // }
                // //3.2 伪数组
                // else{
                //     //将自定义的伪数组转换为真数组
                //     var arr=[].slice.call(this,selector);       //不使用上面的方法,兼容IE9 以下版本
                //     // 将真数组转换伪数组  
                //         [].push.apply(this,arr)
                //         // 这样兼容ie
                //      return this

                //将自定义的伪数组转换为真数组
                var arr= [].slice.call(selector); 
                // 将真数组转换伪数组  
                [].push.apply(this,arr)
                // 这样兼容ie
                 return this
                    }
                    // 4.除上述类型以外的
                    else{
                        this[0]=selector
                        this.length=1
                        return this
                    }
            return this
        },
        jquery:'1.1.0',
        selector:'',
        length:0,
        //[].push 找到数组的push 方法
        //冒号前面的push 将来有njQuery 对象调用
        // 调用push 时,this 指向njQuery==>相当于[].push.apply(this);
        push:[].push,
        sort:[].sort,
        splice:[].splice,
        toArray:function(){
            return [].slice.call(this)
        },
        get:function(num){
            //没有传参
            if(arguments.length===0){
                return this.toArray()
            }
            //传递不是负数
            else if(num>=0){
               // console.log(this);     //this 指向获取到的数组
                return this[num]
            }
            //传递负数
            else{
                return this[this.length+num]
            }
        },
        eq:function(num){
            // 没有传递参数
            if(arguments.length===0){
                // console.log(new njQuery());
                // return this      //返回空的
                return new njQuery()    //返回新对象
            }
            else{
                 return  njQuery(this.get(num))     //传递给新jquery 对象(包装)的get 函数处理
            }
            /* // 传递非负数
            else if(num>=0){
                return  njQuery(this.get(num))
            }
            // 传递负数
            else{
                return njQuery(this.get(num))
            
            } */
        },
        first:function(){
            return this.eq(0)
        },
        last:function(){
            return this.eq(-1)
        },
        each:function(fn){
           return njQuery.each(this,fn)
        },
        prev:function(){
            // //2.遍历所有取出的元素
            //     this.each(function(k,v){     //div 元素
            //        this.previousSibling
            //        })
            //   //2.返回所有添加的元素 
            //     return this.previousSibling
        },
        next:function(){

        }
    }
    // prototype 上定义的方法是实例方法,只有实例对象才能调用.不能通过类名静态调用
            njQuery.extend=njQuery.prototype.extend=function(obj){
            for(var key in obj){
                this[key]=obj[key]
            }
        }
        // 工具方法
        njQuery.extend({
        isString:function(str){
            return typeof str === 'string'
        },
        isHTML:function(str){
            return  str.charAt(0)=='<'&&str.charAt(str.length-1)=='>'&&str.length>=3
        },
        trim:function(str){
            if(!njQuery.isString(str)){
                return str
            }
            //判断是否支持trim(删除首尾空格)方法
            if(str.trim){
                return str.trim()
            }else{
                //' ab c '
                // 以^\s+(0或多个空格) 开头|(或者符号) 以\S+$ (0或多个空格) 结尾
                //g表示匹配全局,没有g 的话只要匹配到一个就停止匹配了
                return  str.replace(/^\s+|\S+$/g,'')
            }
        },
        isObject:function(sele){
            return typeof sele==='object'
        },
        isWindow:function(sele){
            return sele === window
        },
        isArray:function(sele){
            if(njQuery.isObject(sele) && !njQuery.isWindow(sele)&& 'length' in sele){
                return true
            }else{
                     return false
            }
           
        },
        isFunction:function(sele){
            return typeof sele==='function'
        },
        ready:function(fn){
            //判断是否加载完毕
             if(document.readyState=='complete'){
                  fn()
            }else if(document.addEventListener){
                document.addEventListener('DOMContentLoaded',function(){
                    fn()
                })
            }else{
                document.attachEvent("onreadystatechange",function(){
                 if(document.readyState=='complete'){
                        fn()
                 }
                        })
            }
        },
        each:function(obj,fn){
            //1.判断是否是数组
            if(njQuery.isArray(obj)){
                for(var i=0;i<obj.length;i++){
                    // var res=fn(i,obj[i])
                    // 将this 指向obj[i]
                    var res=fn.call(obj[i],i,obj[i])
                    if(res===true){
                        continue;   //跳过这行并继续执行代码 
                    }else if(res===false){
                        break;      //跳出
                    }
                }
            }
            //2.判断是否是对象
            else if(njQuery.isObject(obj)){
                for(var key in obj){
                    // var res=fn(key,obj[key])
                    var res=fn.call(obj[key],key,obj[key])
                     if(res===true){
                        continue;   
                    }else if(res===false){
                        break;      
                    }
                }
            }
            return obj
        },
        map:function(obj,fn){
            var res=[]      //map 默认返回空数组
            //1.判断是否是数组
             if(njQuery.isArray(obj)){
                 for(var i=0;i<obj.length;i++){
                 var temp=fn(obj[i],i)
                 if(temp){  //判断是否是空对象
                    res.push(temp)
                 }
                }
             }
              //2.判断是否是对象
            else if(njQuery.isObject(obj)){
                    for(var key in obj){
                      var temp=fn(obj[key],key)
                     if(temp){  //判断是否是空对象
                    res.push(temp)
                 }
                }
            }
            return res
        },
        getStyle:function(dom,styleName){
            if(window.getComputedStyle){
                return window.getComputedStyle(dom)[styleName]
            }else{
                return dom.currentStyle[styleName]
            }
        },
        addEvent:function(dom,name,callBack){
            
             // 低版本不支持addEventListener
            if(dom.addEventListener){
                dom.addEventListener(name,callBack)
                 // 高版本不支持attachEvent
            }else{
                dom.attachEvent('on'+name,callBack)
            }
            // btn click fn
            // console.log(dom);
            // console.log(name);
            // console.log(callBack);
        }
        }); 
       
        // DOM 操作相关方法
         njQuery.prototype.extend({
            empty:function(){
                //1.遍历所有找到的元素
                this.each(function(key,value){
                    value.innerHTML=''
                })
                //2. return this 方便链式编程
                return this
            },
            remove:function(sele){
                if(arguments.length===0){
                    //1.遍历指定的元素
                this.each(function(key,value){
                   // 根据遍历到的元素找到对应的父元素
                   var parent=value.parentNode
                   //通过父元素删除指定的元素
                   parent.removeChild(value)
                   
                })
                }else{
                    // console.log(this);
                    var $this=this
                    //1.根据传入的选择器找到对应的元素
                    $(sele).each(function(key,value){
                        //2.遍历找到的元素,获取队形的类型
                        var type=value.tagName
                        //3.遍历指定的元素
                        $this.each(function(k,v){
                            //4.获取指定元素的类型
                            var t=v.tagName
                             //5.判断找到元素的类型和指定元素的类型
                             if(t===type){
                           // 根据遍历到的元素找到对应的父元素
                          var parent=value.parentNode
                          //通过父元素删除指定的元素
                          parent.removeChild(value)
                             }
                        })
                    })
                   
                    
                    
                   
                }
                 return this
            },
            html:function(content){
                if(arguments.length===0){
                    return this[0].innerHTML
                }else{
                    this.each(function(key,value){
                        value.innerHTML=content
                    })
                }
            },
            text:function(content){
                 if(arguments.length===0){
                     var res=''
                   this.each(function(key,value){
                      res+= value.innerText
                   })
                   return res
                }else{
                    this.each(function(key,value){
                        value.innerText=content
                    })
                }
            },
            //添加在元素内部
            appendTo:function(sele){
                
                //将所有传入对象包装成jQuery 对象,节省了判断class 和tagname
                //等的类型,统一的将所有传入的数据转换为jQuery 对象
                var $target=$(sele)
                var $this=this
                var res=[]

                 //1.遍历取出所有指定的元素
                 $.each($target,function(key,value){
                      var targetEle=value
                      //2.遍历所有取出的元素
                      $this.each(function(k,v){
                          var sourceEle=v
                    //2.判断当前是否是第0个指定位置
                if(key===0){
                    targetEle.appendChild(sourceEle)
                    res.push(v)
                }else{
                    // 先拷贝再添加
                    var temp=sourceEle.cloneNode(true)
                    targetEle.appendChild(temp)
                     res.push(temp)
                }
                      })
                 });
                 //2.返回所有添加的元素 
                 return $(res)
            },
            prependTo:function(sele){
                //将所有传入对象包装成jQuery 对象,节省了判断class 和tagname
                //等的类型,统一的将所有传入的数据转换为jQuery 对象
                var $target=$(sele)
                var $this=this
                var res=[]

                 //1.遍历取出所有指定的元素
                 $.each($target,function(key,value){
                      var targetEle=value
                      //2.遍历所有取出的元素
                      $this.each(function(k,v){
                          var sourceEle=v
                    //2.判断当前是否是第0个指定位置
                if(key===0){
                    value.insertBefore(v,value.firstChild)
                    res.push(v)
                }else{
                    // 先拷贝再添加
                    var temp=sourceEle.cloneNode(true)
                    value.insertBefore(temp,value.firstChild)
                     res.push(temp)
                }
                      })
                 });
                 //2.返回所有添加的元素 
                 return $(res)
            },
            append:function(sele){
                //判断传入的参数是否是字符串
                if(njQuery.isString(sele)){
                    this[0].innerHTML+=sele
                }else{
                    $(sele).appendTo(this)
                }
                return this
            },
            prepend:function(sele){
                  //判断传入的参数是否是字符串
                if(njQuery.isString(sele)){
                    this[0].innerHTML=sele+ this[0].innerHTML
                }else{
                    $(sele).prependTo(this)
                }
                return this
            },
            //添加在元素外部
            insertAfter:function(sele){
                 //将所有传入对象包装成jQuery 对象,节省了判断class 和tagname 和jquery 对象
                //等的类型,统一的将所有传入的数据转换为jQuery 对象
                var $target=$(sele)
                var $this=this
                var res=[]

                 //1.遍历取出所有指定的元素
                 $.each($target,function(key,value){
                     var parent=value.parentNode
                      var targetEle=value
                      //2.遍历所有取出的元素
                      $this.each(function(k,v){
                          var sourceEle=v
                    //2.判断当前是否是第0个指定位置
                if(key===0){
                    //为什么用insertAfter 报错?
                    parent.insertBefore(v,value.nextSibling)
                    res.push(v)
                }else{
                    // 先拷贝再添加
                    var temp=sourceEle.cloneNode(true)
                    parent.insertBefore(temp,value.nextSibling)
                     res.push(temp)
                }
                      })
                 });
                 //2.返回所有添加的元素 
                 return $(res)
            },
            insertBefore:function(sele){
                  //将所有传入对象包装成jQuery 对象,节省了判断class 和tagname
                //等的类型,统一的将所有传入的数据转换为jQuery 对象
                var $target=$(sele)
                var $this=this
                var res=[]

                 //1.遍历取出所有指定的元素
                 $.each($target,function(key,value){
                     var parent=value.parentNode
                      //2.遍历所有取出的元素
                      $this.each(function(k,v){
                    //2.判断当前是否是第0个指定位置
                if(key===0){
                    parent.insertBefore(v,value)
                    res.push(v)
                }else{
                    // 先拷贝再添加
                    var temp=v.cloneNode(true)
                    parent.insertBefore(temp,value)
                     res.push(temp)
                }
                      })
                 });
                 //2.返回所有添加的元素 
                 return $(res)
            },
            after:function(sele){
                var $target=$(sele)         
                var $this=this
                var res=[]

                 //1.遍历取出所有指定的元素
                 $.each($target,function(key,value){     //p 元素
                      //2.遍历所有取出的元素
                      $this.each(function(k,v){     //div 元素
                         var parent=v.parentNode
                    //2.判断当前是否是第0个指定位置
                if(k===0){
                    //为什么用insertAfter 报错?
                    parent.insertBefore(value,v.nextSibling)
                    res.push(v)
                }else{
                    // 先拷贝再添加
                    var temp=value.cloneNode(true)
                    parent.insertBefore(temp,v.nextSibling)
                     res.push(temp)
                }
                      })
                 });
                 //2.返回所有添加的元素 
                 return $(res) 
            },
            before:function(sele){
                  var $target=$(sele)         
                var $this=this
                var res=[]

                var $target=$(sele)
                var $this=this
                var res=[]

                 //1.遍历取出所有指定的元素
                 $.each($target,function(key,value){     //p 元素
                      //2.遍历所有取出的元素
                      $this.each(function(k,v){     //div 元素
                         var parent=v.parentNode
                    //2.判断当前是否是第0个指定位置
                if(k===0){
                    //为什么用insertAfter 报错?
                    parent.insertBefore(value,v)
                    res.push(v)
                }else{
                    // 先拷贝再添加
                    var temp=value.cloneNode(true)
                    parent.insertBefore(temp,v)
                     res.push(temp)
                }
                      })
                 });
                 //2.返回所有添加的元素 
                 return $(res) 
            },
            replaceAll :function(sele){
                // 方法 $('p').replaceAll($('li'));
                   //将所有传入对象包装成jQuery 对象,节省了判断class 和tagname
                //等的类型,统一的将所有传入的数据转换为jQuery 对象
                var $target=$(sele)
                var $this=this
                var res=[]

                 //1.遍历取出所有指定的元素
                 $.each($target,function(key,value){
                      //2.遍历所有取出的元素
                      $this.each(function(k,v){
                    //2.判断当前是否是第0个指定的位置
                if(key===0){
                     //1.将元素插入到指定元素的前面
                    // $(v).insertBefore(value)
                    //将指定元素删除
                    $(value).remove();
                     res.push(v)
              }else{
                    // 先拷贝再添加
                    var temp=v.cloneNode(true)
                      //1.将元素插入到指定元素的前面
                    // $(temp).insertBefore(value)
                    //将指定元素删除
                    $(value).remove();
                     res.push(temp)
                }
                      })
                 });
                 //2.返回所有添加的元素 
                 return $(res)
            },
            clone:function(deep){
                var res=[]
                //判断是否是深复制
                if(deep){
                    //深复制
                     this.each(function(k,ele){
                        //原生js 不能复制事件
                    var temp=ele.cloneNode(true)
                    // 遍历元素中的eventsCache 对象
                    //eventsCache 为元素自带的事件监听缓存
                    njQuery.each(ele.eventsCache,function(name,array){
                        //遍历事件对应的数组
                        njQuery.each(array,function(index,method){
                            //给复制的元素添加事件
                            $(temp).on(name,method)
                        })
                    })
                    res.push(temp)
                    // console.log(res);
                    // console.log($(res));
                    })
                    // console.log($(res));
                    // console.log(res);
                    return $(res)
                    // return res
                }else{
                    //浅复制
                    this.each(function(k,ele){
                        //原生js 不能复制事件
                    var temp=ele.cloneNode(true)
                    res.push(temp)
                    })
                    return $(res)
                }
            }
    })
     // 筛选操作相关方法
     njQuery.prototype.extend({
        next:function(){

        },
        prev:function(){

        }
    })
    // 属性操作相关方法
    njQuery.prototype.extend({
        attr: function(attr,value){
            //1.判断是否是字符串
            if(njQuery.isString(attr)){
                // 判断是一个字符串还是两个字符串
                if(arguments.length===1){
                    return this[0].getAttribute(attr)
                }else{
                    this.each(function(key,ele){
                        ele.setAttribute(attr,value)
                    })
                }
            }
            //2.判断是否是对象
            else if(njQuery.isObject(attr)){
                var $this=this
                //遍历取出所有属性节点的名称和对应的值
                $.each(attr,function(key,value){
                    //遍历取出所有的元素
                    $this.each(function(k,ele){
                        ele.setAttribute(key,value)
                    })
                })
            }
            return this
        },
        prop: function(attr,value){
            //1.判断是否是字符串
            if(njQuery.isString(attr)){
                // 判断是一个字符串还是两个字符串
                if(arguments.length===1){
                    return this[0][attr]
                }else{
                    this.each(function(key,ele){
                        ele[attr]=value
                    })
                }
            }
            //2.判断是否是对象
            else if(njQuery.isObject(attr)){
                var $this=this
                //遍历取出所有属性节点的名称和对应的值
                $.each(attr,function(key,value){
                    //遍历取出所有的元素
                    $this.each(function(k,ele){
                        ele[key]=value
                    })
                })
            }
            return this
        },
        css: function(attr,value){
            //1.判断是否是字符串
            if(njQuery.isString(attr)){
                // 判断是一个字符串还是两个字符串
                if(arguments.length===1){
                    return njQuery.getStyle(this[0],attr)
                }else{
                    this.each(function(key,ele){
                        ele.style[attr]=value
                    })
                }
            }
            //2.判断是否是对象
            else if(njQuery.isObject(attr)){
                var $this=this
                //遍历取出所有属性节点的名称和对应的值
                $.each(attr,function(key,value){
                    //遍历取出所有的元素
                    $this.each(function(k,ele){
                        ele.style[key]=value
                    })
                })
            }
            return this
        },
        val:function(content){
            if(arguments.length===0){
                return this[0].value
            }else{
                this.each(function(key,ele){
                    ele.value=content
                })
            }
            return this     //指向调用者===>input
        },
        hasClass:function(name){
            var flag=false
            if(arguments.length===0){
                return flag
            }else{
                 //给指定字符串的前后也加上空格
                    name=''+name+''
                this.each(function(key,ele){
                    //获取元素中class 保存的值
                    var className=''+ele.className+''
                //    通过indexOf 判断是否包含指定的字符串
               if(className.indexOf(name)!=-1){
                //    不能直接在each 里面return, return true 相当于continue
                // return false 相当于 break
                flag=true
                return false
               } 

                })
                return flag
            }
        },
        addClass:function(name){
            if(arguments.length===0)return this;
            //1.对传入的类名进行(空格)切割
            var names=name.split(' ');
            // 2.遍历取出所有的元素
            this.each(function(key,ele){
                // 3.遍历数组凷每一个类名
                $.each(names,function(k,value){
                    //4.指定元素中是否包含指定的类名
                    if(!$(ele).hasClass(value)){
                        ele.className=ele.className+' '+value
                    }
                })
            })
           return this
        },
        removeClass:function(name){
            if(arguments.length===0){
                this.each(function(key,ele){
                    ele.className=''
                })
            }else{
                 //1.对传入的类名进行(空格)切割
            var names=name.split(' ');
            // 2.遍历取出所有的元素
            this.each(function(key,ele){
                // 3.遍历数组凷每一个类名
                $.each(names,function(k,value){
                    //4.指定元素中是否包含指定的类名
                    if($(ele).hasClass(value)){
                        ele.className=(""+ele.className+"").replace(""+value+""," ")
                    }
                })
            })
            }
       
        return this
        },
        toggleClass:function(name){
             if(arguments.length===0){
                  // 没有传递参数,删除所有类
                 this.removeClass()
             }else{
                   //1.对传入的类名进行(空格)切割
            var names=name.split(' ');
            // 2.遍历取出所有的元素
            this.each(function(key,ele){
                // 3.遍历数组凷每一个类名
                $.each(names,function(k,value){
                    //4.指定元素中是否包含指定的类名
                    if($(ele).hasClass(value)){
                       //删除
                        $(ele).removeClass(value)
                    }else{
                        // 添加
                        $(ele).addClass(value)
                    }
                })
            })
            return this
             }
             
        }
    })
    //事件操作相关方法
    njQuery.prototype.extend({
        on:function(name,callBack){
            //1.遍历取出所有元素
            this.each(function(key,ele){
               
                //2.判断当前元素是否保存所有事件的对象
                if(!ele.eventsCache){
                    //   console.log(ele.eventsCache);
                    //区分mouseenter等和click
                    ele.eventsCache={}
                }
                //3.判断对象中有没有对应类型的数组
                if(!ele.eventsCache[name]){
                    ele.eventsCache[name]=[]
                    //   console.log(ele.eventsCache[name]);
                    //4.将回调函数添加到数据中
                    ele.eventsCache[name].push(callBack)
                    //   console.log(ele.eventsCache[name]);
                    // console.log(ele);
                    // console.log(name);
                    // console.log(callBack);
                    //5.添加对应类型的事件
                     njQuery.addEvent(ele,name,function(){
                         njQuery.each(ele.eventsCache[name],function(k,method){
                            method()
                            // console.log(this)
                            // console.log($(this))
                         })
                     })
                }else{
                    //6.将回调函数添加到数据中
                     ele.eventsCache[name].push(callBack)
                    //   console.log(ele.eventsCache[name]);
                }
               
            })
        },
        off:function(name,callBack){
            //1.判断是否没有传入参数
            if(arguments.length===0){
                this.each(function(key,ele){
        //  eventsCache 的this 指向绑定ele,与on 的一样,所以可以调用          
                    ele.eventsCache={}  //移除所有回调函数
                })
            }
            //2.判断是否传入了一个参数
            else if(arguments.length===1){
                this.each(function(key,ele){
                    ele.eventsCache[name]=[]  //移除所有回调函数
                })
            }
            //3.判断是否传入了两个参数
            else if(arguments.length===2){
                this.each(function(key,ele){
                    njQuery.each(ele.eventsCache[name],function(index,method){
                        //判断当前遍历到的方法和传入的方法是否相同
                        if(method===callBack){
                            ele.eventsCache[name].splice(index,1)
                        }
                    })
                })
            }
        }
    })
    njQuery.prototype.init.prototype=njQuery.prototype
    window.njQuery=window.$=njQuery
})(window)