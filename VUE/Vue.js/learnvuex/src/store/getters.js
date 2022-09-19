export default {
        // 其他组件需要获得counter 经过一系列转换后的数据
        // 函数的参数默认是state,做多只有2个参数
        powerCounter(state){
            return state.counter*state.counter
        },
        more20stu(state){
            return state.students.filter(s=>s.age>20)
        },
        more20stuLength(state,getters){
            return getters.more20stu.length
        },
        moreAgestu(state){
            return function(age){
                return state.students.filter(s=>s.age>age)
            }
        }
    }