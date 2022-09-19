"ui";  //这里需要带上;
ui.layout(
    <frame>
        <button
        id="myText"
         gravity="right"
          w="*" 
          h="auto"
           text="靠右的文字"
           margin='20'
           textColor='gold'
           textSize='150'
           textStyle='italic'
           />
    </frame>
);
// 设置文本值
ui.myText.setText('aaa')

toast('启动')


