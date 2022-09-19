



dialogs.build({
    title: '这是标题',
    titleColor: '#ff0000',
    content: '这是对话框的内容',
    items: ['这是选项a','选项b'],
    itemsSelectMode: 'single',
    itemsSelectedIndex: 0,
    positive: '确定',
    neutral: '最左边',
    negative: '取消',
    checkBoxPrompt: '勾选框a',
    checkBoxChecked: true,
    cancelable: true,
    inputHint: '这是输入框',
    inputPrefill: '这是输入框的默认输入内容'
}).show()





// toast('123')