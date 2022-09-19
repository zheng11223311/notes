



// try {

//     requiresApi(29)

// } catch (error) {

//     //错误提示
//     toast('安卓版本不符合要求')
//     log(error)
//     exit()
// }


log(app.autojs.versionCode)



try {

    requiresAutojsVersion(500)
    
} catch (error) {

    toast('autojs版本不符合要求')
    log(error)
    exit() 
}












// toast('阿涛QQ/微信：656206105')