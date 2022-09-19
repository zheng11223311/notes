    const app = new Vue({
        el: '#app',     //挂载元素
        data: {
           books:[
               {
                   id:1,
                   name:'<<算法导论>>',
                   date:'2006-9',
                   price:85.00,
                   count:1
               },
               {
                   id:2,
                   name:'<<UNIX编程艺术>>',
                   date:'2006-2',
                   price:59.00,
                   count:1
               },
               {
                   id:3,
                   name:'<<编程珠玑>>',
                   date:'2008-10',
                   price:39.00,
                   count:1
               },
               {
                   id:4,
                   name:'<<代码大全>>',
                   date:'2006-3',
                   price:128.00,
                   count:1
               }
           ] 
          
          
        },
        computed: {   // computed 里面的函数只打印一次
             totalPrice(){
                let totalPrice=0
                
                //1.普通for 循环
                // for(let i=0;i<this.books.length;i++){
                //     totalPrice+=this.books[i].price*this.books[i].count
                // }

                //2.for(let i in this.books) 获取索引
                // for(let i in this.books){
                //     const book=this.books[i]
                //    totalPrice+=book.price*book.count 
                // }

                //3.for(let i of this.books) 获取value
                for(let item of this.books){
                   totalPrice+=item.price*item.count 
                }
                return totalPrice
            }
        },
        // methods 调用里面的方法需要加()
        methods: {  // methods 里面的函数打印多次
        //    getFinalPrice(price){
        //     return '¥'+price.toFixed(2)
           
        //    },
           decrement(index){
            //    console.log(1);
            //    console.log(this.count);  app 里面没有count 属性
               return this.books[index].count--
           },
           increment(index){
               return this.books[index].count++
           },
           removeHandle(index){
            this.books.splice(index,1)
           }
        },
        //过滤器 filters
           filters:{
               showPrice(price){
                   return '¥'+price.toFixed(2)
               }
           }
    })