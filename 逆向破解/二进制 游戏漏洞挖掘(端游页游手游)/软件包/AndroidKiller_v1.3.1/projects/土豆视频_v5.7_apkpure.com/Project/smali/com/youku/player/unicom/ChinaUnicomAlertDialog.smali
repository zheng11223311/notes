.class public Lcom/youku/player/unicom/ChinaUnicomAlertDialog;
.super Landroid/app/Dialog;
.source "ChinaUnicomAlertDialog.java"


# instance fields
.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonPositive:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mMessage:Ljava/lang/String;

.field private mTextViewMessage:Landroid/widget/TextView;

.field private negativeButtonText:Ljava/lang/String;

.field private negativeListener:Landroid/view/View$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private positiveListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 35
    sget v0, Lcom/youku/android/player/R$style;->ChinaUnicomDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mMessage:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mContext:Landroid/content/Context;

    .line 26
    iput-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mButtonPositive:Landroid/widget/Button;

    .line 27
    iput-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mButtonNegative:Landroid/widget/Button;

    .line 28
    iput-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mTextViewMessage:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->positiveButtonText:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->negativeButtonText:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mMessage:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/youku/android/player/R$layout;->unicom_notify_dialog:I

    invoke-virtual {p0, v0}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->setContentView(I)V

    .line 45
    sget v0, Lcom/youku/android/player/R$id;->unicom_notify_message:I

    invoke-virtual {p0, v0}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mTextViewMessage:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/youku/android/player/R$id;->unicom_btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mButtonNegative:Landroid/widget/Button;

    .line 47
    sget v0, Lcom/youku/android/player/R$id;->unicom_btn_continue:I

    invoke-virtual {p0, v0}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mButtonPositive:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->positiveListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->negativeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mTextViewMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 57
    return-void
.end method

.method public setUnicomNegativeBtnListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->negativeListener:Landroid/view/View$OnClickListener;

    .line 65
    return-void
.end method

.method public setUnicomNegativeBtnText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->negativeButtonText:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setUnicomPositiveBtnListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->positiveListener:Landroid/view/View$OnClickListener;

    .line 61
    return-void
.end method

.method public setUnicomPositiveBtnText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->positiveButtonText:Ljava/lang/String;

    .line 69
    return-void
.end method
