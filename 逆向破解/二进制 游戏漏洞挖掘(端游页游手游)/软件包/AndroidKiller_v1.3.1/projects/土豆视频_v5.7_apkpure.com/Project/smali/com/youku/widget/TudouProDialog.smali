.class public Lcom/youku/widget/TudouProDialog;
.super Landroid/app/Dialog;
.source "TudouProDialog.java"


# instance fields
.field private bigDriver:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewUpdateHandler:Landroid/os/Handler;

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

.field private title:Landroid/widget/TextView;

.field private twoDriver:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const v0, 0x7f0e007e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 60
    iput-object p1, p0, Lcom/youku/widget/TudouProDialog;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/youku/widget/TudouProDialog;->initFormats()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/TudouProDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouProDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/TudouProDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouProDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/widget/TudouProDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouProDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/widget/TudouProDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouProDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/widget/TudouProDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouProDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/widget/TudouProDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouProDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/widget/TudouProDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouProDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->normalMiddleBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/widget/TudouProDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouProDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 66
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 67
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 68
    return-void
.end method

.method private onProgressChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 376
    :cond_0
    return-void
.end method

.method private setNormalListener()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->positiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/widget/TudouProDialog$2;

    invoke-direct {v1, p0}, Lcom/youku/widget/TudouProDialog$2;-><init>(Lcom/youku/widget/TudouProDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->middleBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/widget/TudouProDialog$3;

    invoke-direct {v1, p0}, Lcom/youku/widget/TudouProDialog$3;-><init>(Lcom/youku/widget/TudouProDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->negtiveBtn:Landroid/widget/Button;

    new-instance v1, Lcom/youku/widget/TudouProDialog$4;

    invoke-direct {v1, p0}, Lcom/youku/widget/TudouProDialog$4;-><init>(Lcom/youku/widget/TudouProDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/youku/widget/TudouProDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/youku/widget/TudouProDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/youku/widget/TudouProDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/youku/widget/TudouProDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 77
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/youku/widget/TudouProDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/youku/widget/TudouProDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/youku/widget/TudouProDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 82
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/youku/widget/TudouProDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/youku/widget/TudouProDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/youku/widget/TudouProDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 88
    new-instance v0, Lcom/youku/widget/TudouProDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouProDialog;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "dialog":Lcom/youku/widget/TudouProDialog;
    invoke-virtual {v0, p1}, Lcom/youku/widget/TudouProDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0, p2}, Lcom/youku/widget/TudouProDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0, p3}, Lcom/youku/widget/TudouProDialog;->setIndeterminate(Z)V

    .line 92
    invoke-virtual {v0, p4}, Lcom/youku/widget/TudouProDialog;->setCancelable(Z)V

    .line 93
    invoke-virtual {v0, p5}, Lcom/youku/widget/TudouProDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 94
    invoke-virtual {v0}, Lcom/youku/widget/TudouProDialog;->show()V

    .line 95
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 253
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 239
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 246
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 268
    invoke-direct {p0}, Lcom/youku/widget/TudouProDialog;->onProgressChanged()V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/youku/widget/TudouProDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 277
    invoke-direct {p0}, Lcom/youku/widget/TudouProDialog;->onProgressChanged()V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/youku/widget/TudouProDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 311
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/youku/widget/TudouProDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 102
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f0302ee

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->setContentView(I)V

    .line 109
    new-instance v0, Lcom/youku/widget/TudouProDialog$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouProDialog$1;-><init>(Lcom/youku/widget/TudouProDialog;)V

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 136
    const v0, 0x7f0c0154

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 137
    const v0, 0x7f0c0d12

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0c0d13

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0c01b7

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->mMessageView:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0c0d19

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->positiveBtn:Landroid/widget/Button;

    .line 141
    const v0, 0x7f0c0d15

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->negtiveBtn:Landroid/widget/Button;

    .line 142
    const v0, 0x7f0c0d17

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->middleBtn:Landroid/widget/Button;

    .line 143
    const v0, 0x7f0c0d18

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->oneDriver:Landroid/view/View;

    .line 144
    const v0, 0x7f0c0d16

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->twoDriver:Landroid/view/View;

    .line 145
    const v0, 0x7f0c0d14

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->bigDriver:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mMessageView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 147
    const v0, 0x7f0c00f2

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->title:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->positiveText:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->positiveText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 149
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->positiveBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/widget/TudouProDialog;->positiveText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->middleText:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->middleText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 156
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->middleBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/widget/TudouProDialog;->middleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_1
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->negitiveText:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->negitiveText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 163
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->negtiveBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/widget/TudouProDialog;->negitiveText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_2
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->positiveText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->middleText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->negitiveText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 169
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->bigDriver:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :goto_3
    invoke-direct {p0}, Lcom/youku/widget/TudouProDialog;->setNormalListener()V

    .line 173
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mMax:I

    if-lez v0, :cond_0

    .line 174
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mMax:I

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->setMax(I)V

    .line 176
    :cond_0
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressVal:I

    if-lez v0, :cond_1

    .line 177
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressVal:I

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->setProgress(I)V

    .line 179
    :cond_1
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mSecondaryProgressVal:I

    if-lez v0, :cond_2

    .line 180
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->setSecondaryProgress(I)V

    .line 182
    :cond_2
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mIncrementBy:I

    if-lez v0, :cond_3

    .line 183
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mIncrementBy:I

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->incrementProgressBy(I)V

    .line 185
    :cond_3
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mIncrementSecondaryBy:I

    if-lez v0, :cond_4

    .line 186
    iget v0, p0, Lcom/youku/widget/TudouProDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->incrementSecondaryProgressBy(I)V

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 189
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 195
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    :cond_7
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 198
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    :cond_8
    iget-boolean v0, p0, Lcom/youku/widget/TudouProDialog;->mIndeterminate:Z

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouProDialog;->setIndeterminate(Z)V

    .line 201
    invoke-direct {p0}, Lcom/youku/widget/TudouProDialog;->onProgressChanged()V

    .line 202
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 203
    return-void

    .line 151
    :cond_9
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->positiveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->oneDriver:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 158
    :cond_a
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->middleBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->twoDriver:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 165
    :cond_b
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->negtiveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 171
    :cond_c
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->bigDriver:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/TudouProDialog;->mHasStarted:Z

    .line 209
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/TudouProDialog;->mHasStarted:Z

    .line 215
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 300
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iput-boolean p1, p0, Lcom/youku/widget/TudouProDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iput-object p1, p0, Lcom/youku/widget/TudouProDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 259
    invoke-direct {p0}, Lcom/youku/widget/TudouProDialog;->onProgressChanged()V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iput p1, p0, Lcom/youku/widget/TudouProDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/youku/widget/TudouProDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setNormalMiddleBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 429
    iput-object p2, p0, Lcom/youku/widget/TudouProDialog;->normalMiddleBtnListener:Landroid/view/View$OnClickListener;

    .line 430
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->middleText:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setNormalMiddleBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 444
    iput-object p2, p0, Lcom/youku/widget/TudouProDialog;->normalMiddleBtnListener:Landroid/view/View$OnClickListener;

    .line 445
    iput-object p1, p0, Lcom/youku/widget/TudouProDialog;->middleText:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 434
    iput-object p2, p0, Lcom/youku/widget/TudouProDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 435
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->negitiveText:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 449
    iput-object p2, p0, Lcom/youku/widget/TudouProDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 450
    iput-object p1, p0, Lcom/youku/widget/TudouProDialog;->negitiveText:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 424
    iput-object p2, p0, Lcom/youku/widget/TudouProDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 425
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/TudouProDialog;->positiveText:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 439
    iput-object p2, p0, Lcom/youku/widget/TudouProDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 440
    iput-object p1, p0, Lcom/youku/widget/TudouProDialog;->positiveText:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/youku/widget/TudouProDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 220
    invoke-direct {p0}, Lcom/youku/widget/TudouProDialog;->onProgressChanged()V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iput p1, p0, Lcom/youku/widget/TudouProDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iput-object p1, p0, Lcom/youku/widget/TudouProDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/youku/widget/TudouProDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 354
    invoke-direct {p0}, Lcom/youku/widget/TudouProDialog;->onProgressChanged()V

    .line 355
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/youku/widget/TudouProDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 369
    invoke-direct {p0}, Lcom/youku/widget/TudouProDialog;->onProgressChanged()V

    .line 370
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 229
    invoke-direct {p0}, Lcom/youku/widget/TudouProDialog;->onProgressChanged()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iput p1, p0, Lcom/youku/widget/TudouProDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_0
    iput-object p1, p0, Lcom/youku/widget/TudouProDialog;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setmContext(Landroid/app/Activity;)V
    .locals 0
    .param p1, "mContext"    # Landroid/app/Activity;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/youku/widget/TudouProDialog;->mContext:Landroid/content/Context;

    .line 384
    return-void
.end method
