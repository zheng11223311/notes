### 1.Composer 常用文件

**composer.json**

```
{									#composer.json 文件的部分内容	
	"name":"Lmonkey/demo",			#包名称由供应商和其项目名称构成
	"description":"this is a test", #通常描述该包的主要功能
	"type":"project",				#包的类型project(项目),library(组件)等
	"require":{						#生产环境所有的依赖的包,安装几个包,下面就有几行
		"monolog/monolog":"1.2.0",	#例如,在项目中依赖的monolog 日志包
		"catfan/medoo":"dev-master"	#例如,在项目中依赖的medoo 数据库操作包
	},
	"require-dev":{					#开发环境依赖包,声明开发环境下的依赖包
		"monolog/monolog":"1.2.0"	
	},
	"license":"mit",				#如果你决定将包公开,需要选择一个合适的许可证
	"authors":[						#作者字段包含一个数组,可以提供多个作者信息
		{
            "name":"skygao",		#本项目的作者
            "email":"skygao@qq.com"	#本项目的作者的email
     	}
	],
	"minimun-stability":"dev"		#定义了稳定性过滤包的默认行为,stable(稳定)和dev(开发)包
     
}
```

**composer.json 常用选项**

| 键名              | 描述                                                         |
| ----------------- | ------------------------------------------------------------ |
| name              | 表示包的名称,如果经常使用github,那对这个值的表达方式一定非常熟悉,通常扩展包名包含两部分,并且以"/" 分割,斜杠前的部分,代表的所有者,斜杠后面的部分代表包的名称,尽量保持简单和有意义,便于记忆和传播,如"name":"Lmonkey/demo","Lmonkey " 表示公司,"demo" 表示公司下的一个项目名 |
| descrption        | 表示项目的应用简介,这部分尽量简介的介绍项目,如果确实有很多的内容,建议写在README.md 文件里(在扩展库的源码目录中) |
| license           | 如果决定将包公开发布,那么记得选择一个合适的许可证,这样别的程序员在引用包的时候,通过查看许可证,确保没有法律上的问题 |
| authors           | 作者字段可以包含一个对象数组,也就是收,可以提供多个作者信息   |
| require           | 这个字段的值是一个对象,同样以键值对的形式构成,上例提到的两个依赖关系,最重要的就是版本信息的指定,如我们需要使用monolog 的版本是1.0.*,意思是只要版本1.0的分支即可,如1.0.0, 1.0.29 ,版本定义的几种方式如下:<br/>(1) 标准的版本:定义标准的版本包文件,如1.0.2<br/>(2)一定范围的版本:使用比较符号来定义有效版本的范围,有效符号有>,>=,<,<=,!= <br/>(3)通配符:特别的匹配符号* \*,如1.0.\* 相当于>=1.0 且<1.1 版本即可<br/>(4)下一个重要的版本:~符号最好的解释就是,~1.2 相当于>1.2 且<2.0,但~1.2.3 相当于>1.2.3 且<1.3 版本 |
| minimum-stability | 通过设置minimum-stability 的值,告诉Composer 当前开发的项目依赖要求的包的全局稳定性级别,它的值包括dev,beta,alpha,RC,stable,其中,stable 是默认值 |

**composer.lock **

- 文件composer.lock 会根据composer.json 的内容自动生成,和composer.json 在同一位置,即在安装完所有需要的包之后,Composer 会在composer.lock 文件中生成一张标准的包版本的文件,这将锁定所有包的版本,可以使用composer.lock (当然是和composer.json 一起)来控制项目的版本
- composer.lock 与composer.json 的关系为,在composer.json 为包的元信息,composer.lock 同样为包的元信息,但在composer.json 文件中可以指定使用不明确的依赖包版本,如">=1.0",在composer.lock 文件中的会是当前安装的版本,那么当使用Composer 安装包时,它会优先从composer.lock 文件读取依赖版本,在根据composer.json 文件去获取依,这确保了该库的每个使用者都能得到相同的依赖版本,这对于团队开发来讲非常重要