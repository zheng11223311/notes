//此代码由叁玖整理
"ui";
第一个页面() //调用第一个界面的函数


function 第一个页面() {
    ui.layout(
        <frame >
            <vertical gravity="center" bg="#559751">
                <card w="auto" margin="5" h="auto" cardCornerRadius="6"
                    cardElevation="1dp" gravity="center_vertical">
                    <text margin="5" id="t1">这是第一个界面,点击这里切换到第二个界面</text>
                </card>
            </vertical>
        </frame>
    )

    ui.t1.on("click", () => {
        第二个界面()
    })
}


function 第二个界面() {
    ui.layout(
        <frame>
            <vertical gravity="center">
                <card w="auto" margin="5" h="auto" cardCornerRadius="6"
                    cardElevation="1dp" gravity="center_vertical">
                    <text margin="5" id="t1">这是第二个界面,点击切换到第一个界面</text>
                </card>
            </vertical>
        </frame>
    )
    ui.t1.on("click", () => {
        第一个页面()
    })
}
