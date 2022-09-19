.class public Lcom/youku/widget/TudouEditText;
.super Landroid/widget/RelativeLayout;
.source "TudouEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TYPE_LINES:I = 0x2

.field private static final TYPE_MUST:I = 0x1

.field private static final TYPE_NORMAL:I = 0x0

.field private static final TYPE_TEXT_NORMAL:I = 0x0

.field private static final TYPE_TEXT_PASSWORD:I = 0x1


# instance fields
.field private mAttrs:Landroid/util/AttributeSet;

.field private mCurrentTEXTType:I

.field private mCurrentType:I

.field public mEdtTudou:Landroid/widget/EditText;

.field private mImgTudou:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput v0, p0, Lcom/youku/widget/TudouEditText;->mCurrentType:I

    .line 34
    iput v0, p0, Lcom/youku/widget/TudouEditText;->mCurrentTEXTType:I

    .line 40
    invoke-virtual {p0}, Lcom/youku/widget/TudouEditText;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/youku/widget/TudouEditText;->mCurrentType:I

    .line 34
    iput v0, p0, Lcom/youku/widget/TudouEditText;->mCurrentTEXTType:I

    .line 45
    iput-object p2, p0, Lcom/youku/widget/TudouEditText;->mAttrs:Landroid/util/AttributeSet;

    .line 46
    invoke-virtual {p0}, Lcom/youku/widget/TudouEditText;->init()V

    .line 47
    return-void
.end method

.method private setCancelVisible(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 143
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mImgTudou:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mImgTudou:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/youku/widget/TudouEditText;->setCancelVisible(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 140
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/youku/widget/TudouEditText;->setCancelVisible(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 124
    :cond_0
    return-void
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 50
    const-string v1, "layout_inflater"

    .line 51
    .local v1, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/widget/TudouEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/youku/widget/TudouEditText;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    iget-object v3, p0, Lcom/youku/widget/TudouEditText;->mAttrs:Landroid/util/AttributeSet;

    const-string v4, "type"

    invoke-static {v3, v4}, Lcom/youku/util/MyAttributeUtil;->getInt(Landroid/util/AttributeSet;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youku/widget/TudouEditText;->mCurrentType:I

    .line 56
    iget v3, p0, Lcom/youku/widget/TudouEditText;->mCurrentType:I

    packed-switch v3, :pswitch_data_0

    .line 70
    :goto_0
    const v3, 0x7f0c0d1a

    invoke-virtual {p0, v3}, Lcom/youku/widget/TudouEditText;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    .line 71
    const v3, 0x7f0c0d1b

    invoke-virtual {p0, v3}, Lcom/youku/widget/TudouEditText;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/widget/TudouEditText;->mImgTudou:Landroid/view/View;

    .line 73
    iget-object v3, p0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    iget-object v3, p0, Lcom/youku/widget/TudouEditText;->mImgTudou:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v3, p0, Lcom/youku/widget/TudouEditText;->mAttrs:Landroid/util/AttributeSet;

    const-string v4, "hint"

    invoke-static {v3, v4}, Lcom/youku/util/MyAttributeUtil;->getString(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "hint":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 79
    iget-object v3, p0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/youku/widget/TudouEditText;->mAttrs:Landroid/util/AttributeSet;

    const-string v4, "inputType"

    invoke-static {v3, v4}, Lcom/youku/util/MyAttributeUtil;->getInt(Landroid/util/AttributeSet;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youku/widget/TudouEditText;->mCurrentTEXTType:I

    .line 84
    iget v3, p0, Lcom/youku/widget/TudouEditText;->mCurrentTEXTType:I

    if-eqz v3, :cond_1

    .line 85
    iget v3, p0, Lcom/youku/widget/TudouEditText;->mCurrentTEXTType:I

    packed-switch v3, :pswitch_data_1

    .line 96
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/youku/widget/TudouEditText;->mAttrs:Landroid/util/AttributeSet;

    const-string v4, "minLines"

    invoke-static {v3, v4}, Lcom/youku/util/MyAttributeUtil;->getInt(Landroid/util/AttributeSet;Ljava/lang/String;)I

    move-result v2

    .line 97
    .local v2, "lines":I
    if-eqz v2, :cond_2

    .line 101
    iget-object v3, p0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 103
    :cond_2
    return-void

    .line 58
    .end local v0    # "hint":Ljava/lang/String;
    .end local v2    # "lines":I
    :pswitch_0
    iget-object v3, p0, Lcom/youku/widget/TudouEditText;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0302f0

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v3, p0, Lcom/youku/widget/TudouEditText;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0302f2

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object v3, p0, Lcom/youku/widget/TudouEditText;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0302f1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 87
    .restart local v0    # "hint":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/youku/widget/TudouEditText;->setPassword(Z)V

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 85
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mImgTudou:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 111
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/youku/widget/TudouEditText;->setCancelVisible(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 132
    :cond_0
    return-void
.end method

.method public setOnTextChange(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/youku/widget/TudouEditText;->mTextWatcher:Landroid/text/TextWatcher;

    .line 115
    return-void
.end method

.method public setPassword(Z)V
    .locals 2
    .param p1, "isPassword"    # Z

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method
