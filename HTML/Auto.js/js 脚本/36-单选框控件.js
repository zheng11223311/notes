"ui";  //这里需要带上;

ui.layout(
    <vertical>
        <checkbox id="ch" text="复选框"/>
        <checkbox id="ch1" text="复选框11" checked="true"/>
        <radiogroup>
            <radio text="单选框"/>
            <radio text="单选框1"/>
            <radio text="单选框2"/>
            <radio text="单选框3"/>
            <radio text="单选框4" checked="true"/>
        </radiogroup>

        <radiogroup id="cb" marginTop="20">
            <radio text="单选框"/>
            <radio text="单选框1"/>
            <radio text="单选框2"/>
            <radio text="单选框3"/>
            <radio text="单选框4"/>
        </radiogroup>
    </vertical>
);

ui.ch1.on('check',(name)=>{
    // true /false
    toast(name)
})

toast('启动')

