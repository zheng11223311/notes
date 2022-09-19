.class public Lcom/youku/widget/TudouDialog;
.super Landroid/app/Dialog;
.source "TudouDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/TudouDialog$TYPE;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private contentTV:Landroid/widget/TextView;

.field private currentType:Lcom/youku/widget/TudouDialog$TYPE;

.field private mContext:Landroid/content/Context;

.field private mSpannableString:Landroid/text/SpannableString;

.field private middleBtn:Landroid/widget/Button;

.field private middleText:Ljava/lang/String;

.field private negitiveText:Ljava/lang/String;

.field private negtiveBtn:Landroid/widget/Button;

.field private normalMiddleBtnListener:Landroid/view/View$OnClickListener;

.field private normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

.field private normalPositiveBtnListener:Landroid/view/View$OnClickListener;

.field private oneDriver:Landroid/view/View;

.field private positiveBtn:Landroid/widget/Button;

.field private positiveText:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleTv:Landroid/widget/TextView;

.field private twoDriver:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const v0, 0x7f0e007e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 53
    sget-object v0, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->currentType:Lcom/youku/widget/TudouDialog$TYPE;

    .line 54
    iput-object p1, p0, Lcom/youku/widget/TudouDialog;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/youku/widget/TudouDialog$TYPE;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p2, p0, Lcom/youku/widget/TudouDialog;->currentType:Lcom/youku/widget/TudouDialog$TYPE;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/TudouDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/TudouDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->normalMiddleBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/widget/TudouDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private setNormalListener()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->positiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/widget/TudouDialog$1;

    invoke-direct {v1, p0}, Lcom/youku/widget/TudouDialog$1;-><init>(Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->middleBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->middleBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/widget/TudouDialog$2;

    invoke-direct {v1, p0}, Lcom/youku/widget/TudouDialog$2;-><init>(Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->negtiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/widget/TudouDialog$3;

    invoke-direct {v1, p0}, Lcom/youku/widget/TudouDialog$3;-><init>(Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 64
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->currentType:Lcom/youku/widget/TudouDialog$TYPE;

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->picker:Lcom/youku/widget/TudouDialog$TYPE;

    if-ne v0, v1, :cond_4

    .line 66
    const v0, 0x7f0302ef

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouDialog;->setContentView(I)V

    .line 72
    :cond_0
    :goto_0
    const v0, 0x7f0c02bd

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->positiveBtn:Landroid/widget/Button;

    .line 73
    const v0, 0x7f0c02bc

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->negtiveBtn:Landroid/widget/Button;

    .line 74
    const v0, 0x7f0c0d09

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->middleBtn:Landroid/widget/Button;

    .line 75
    const v0, 0x7f0c02bb

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->contentTV:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->contentTV:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 77
    const v0, 0x7f0c00f2

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->titleTv:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0c0d0a

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->oneDriver:Landroid/view/View;

    .line 80
    const v0, 0x7f0c0d08

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->twoDriver:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->title:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 84
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/TudouDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 91
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->contentTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/TudouDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->positiveText:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->positiveText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 98
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->positiveBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/widget/TudouDialog;->positiveText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_3
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->middleText:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->middleText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 105
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->middleBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/widget/TudouDialog;->middleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->negitiveText:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->negitiveText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 112
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->negtiveBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/widget/TudouDialog;->negitiveText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_5
    invoke-direct {p0}, Lcom/youku/widget/TudouDialog;->setNormalListener()V

    .line 118
    return-void

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->currentType:Lcom/youku/widget/TudouDialog$TYPE;

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    if-ne v0, v1, :cond_5

    .line 68
    const v0, 0x7f0302ec

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouDialog;->setContentView(I)V

    goto/16 :goto_0

    .line 69
    :cond_5
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->currentType:Lcom/youku/widget/TudouDialog$TYPE;

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->chat_sure:Lcom/youku/widget/TudouDialog$TYPE;

    if-ne v0, v1, :cond_0

    .line 70
    const v0, 0x7f030086

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouDialog;->setContentView(I)V

    goto/16 :goto_0

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->titleTv:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 92
    :cond_7
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->mSpannableString:Landroid/text/SpannableString;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->contentTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/TudouDialog;->mSpannableString:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 100
    :cond_8
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->positiveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->oneDriver:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 106
    :cond_9
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->middleBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->middleBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->twoDriver:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 114
    :cond_a
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->negtiveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5
.end method

.method public setColorMessage(Landroid/text/SpannableString;)V
    .locals 0
    .param p1, "content"    # Landroid/text/SpannableString;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/youku/widget/TudouDialog;->mSpannableString:Landroid/text/SpannableString;

    .line 191
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "contentRes"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->content:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/youku/widget/TudouDialog;->content:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setNormalMiddleBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 161
    iput-object p2, p0, Lcom/youku/widget/TudouDialog;->normalMiddleBtnListener:Landroid/view/View$OnClickListener;

    .line 162
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->middleText:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setNormalMiddleBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 176
    iput-object p2, p0, Lcom/youku/widget/TudouDialog;->normalMiddleBtnListener:Landroid/view/View$OnClickListener;

    .line 177
    iput-object p1, p0, Lcom/youku/widget/TudouDialog;->middleText:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 166
    iput-object p2, p0, Lcom/youku/widget/TudouDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 167
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->negitiveText:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 181
    iput-object p2, p0, Lcom/youku/widget/TudouDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 182
    iput-object p1, p0, Lcom/youku/widget/TudouDialog;->negitiveText:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 156
    iput-object p2, p0, Lcom/youku/widget/TudouDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 157
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->positiveText:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 171
    iput-object p2, p0, Lcom/youku/widget/TudouDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 172
    iput-object p1, p0, Lcom/youku/widget/TudouDialog;->positiveText:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/youku/widget/TudouDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/TudouDialog;->title:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/youku/widget/TudouDialog;->title:Ljava/lang/String;

    .line 199
    return-void
.end method
