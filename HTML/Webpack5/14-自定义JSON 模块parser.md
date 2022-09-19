### 1.自定义JSON 模块parser

通过使用自定义`parser`替代特定的`webpack loader`,可以将任何`toml`,`yaml`或`json5` 文件作为`json`模块导入

```
npm install toml yaml json5 -D
```

修改配置

```js
//导入模块
const toml=require('toml')
const yaml=require('yaml')
const json5=require('json5')

module:{
	rules:[
        {
            test:/\.(toml)/,
            type:'json',
            parser:{	//解析器
                parse:toml.parse
            }
        },
        {
            test:/\.(yaml)/,
            type:'json',
            parser:{	//解析器
                parse:yaml.parse
            }
        },
        {
            test:/\.(json5)/,
            type:'json',
            parser:{	//解析器
                parse:json5.parse
            }
        }
    ]	
}
```

**编译**

```
webpack 
```

**热更新**

```
webpack-dev-server --open
```

