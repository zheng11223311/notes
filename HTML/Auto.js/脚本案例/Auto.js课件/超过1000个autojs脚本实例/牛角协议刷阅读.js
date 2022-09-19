
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";
showLoginUI()
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
var htt = "http://api.newjoyread.com/";


var today = htt + "ebook-sponsor/readTime/readTimeAndIntegral"; //查询
var coin = htt + "ebook-sponsor/task/readTimer?bookId=1465"; //加金币
var time = htt + "ebook-sponsor/readHistory"; //加时间
var book = 10700;
var adtime = random(15, 20);
var adtime2 = 0;

var n = 0;
var n2 = 0;
var token;

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

function showLoginUI() {
    ui.layout(
        <frame>
            <vertical h="auto" align="center" margin="50 50 50 50">
                <linear>
                    <text margin="20 50" w="*" gravity="center" color="#111111" size="16">牛角协议 By：伽羽</text>
                </linear>
                <linear>
                    <text margin="20 50" w="*" gravity="center" color="#111111" size="16">本程序仅用于交流学习，一切后果请自行承担</text>
                </linear>
                
                <linear>
                    <text gravity="center" color="#111111" size="16">牛角token</text>
                    <input id="name" w="*" h="40" />
                </linear>
                
                <linear gravity="center">
                    <button w="*" id="login" text="开始运行" />
                </linear>
            </vertical>
        </frame>
    );

    ui.login.on("click", () => {

        threads.start(function() {
            console.show()
            //home();
            token = ui.name.text();

            //log(token)
            log("//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!\n")
            s()

        })

    });

}





//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

function s() {


    while (true) {

        if (n == adtime) {
            var timestamp = (new Date()).valueOf(); //时间戳
            var readHistoryList = {
                "bookId": "1465",
                "chapterId": book,
                "duration": adtime,
                "time": timestamp
            };

            var timeh = http.postJson(time, {

                "readHistoryList": [{
                    "bookId": "1465",
                    "chapterId": book,
                    "duration": adtime,
                    "time": timestamp
                }]


            }, postHeader()); //加时间

            adtime = random(15, 20);
            book = book + 10;
            n = 0;

        }




        if (n2 == adtime2) {

            var rw = http.get("http://api.newjoyread.com/ebook-sponsor/task/class1", postHeader());

            var lis = rw.body.json().result[1];
            var rwid


            for (let i = 1; i < 7; i++) {
                if (lis["tasks"][i]["statusName"] != "已完成") {

                    rwid = lis["tasks"][i]["taskId"];

                    break;
                }

            }


            var wc = http.post("http://api.newjoyread.com/ebook-sponsor/task?taskId=" + rwid, {}, postHeader())


            var coinh = http.post(coin, {}, postHeader()); //加金币
            var get = http.get("http://api.newjoyread.com/ebook-sponsor/account", postHeader()); //查金币
            var list = get.body.json().result;
            log(
                "\n",
                "总金币:", list["integral"],
                ",延迟", adtime2, "秒"
            );
            adtime2 = random(95, 100);
            n2 = 0;

        }
        sleep(1000);
        n = n + 1;
        n2 = n2 + 1;


    }


}







//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

//协议头
function postHeader() {

    var header = {
        headers: {
            'hannels': 'x_005',
            'versionName': '2.1.3',
            'UDID': '861348043422634',
            'versionCode': '26',
            'platform': 'android',
            'authentication': token, //ui.name.txex(),
            'Host': 'api.newjoyread.com',
            'Connection': 'Keep-Alive',
            'Accept-Encoding': 'gzip',
            'User-Agent': 'okhttp/3.12.0',
        }
    }
    return header;
}

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
