.class public Lcom/youku/widget/CodeErrorDialog;
.super Landroid/app/Dialog;
.source "CodeErrorDialog.java"


# instance fields
.field private codeErrBtn:Landroid/widget/TextView;

.field private codeErrTips:Landroid/widget/TextView;

.field private content:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private normalNegtiveBtnListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const v0, 0x7f0e0081

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p1, p0, Lcom/youku/widget/CodeErrorDialog;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/CodeErrorDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/CodeErrorDialog;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private setNormalListener()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->codeErrBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/youku/widget/CodeErrorDialog$1;

    invoke-direct {v1, p0}, Lcom/youku/widget/CodeErrorDialog$1;-><init>(Lcom/youku/widget/CodeErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030096

    invoke-virtual {p0, v0}, Lcom/youku/widget/CodeErrorDialog;->setContentView(I)V

    .line 36
    const v0, 0x7f0c02e8

    invoke-virtual {p0, v0}, Lcom/youku/widget/CodeErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->codeErrBtn:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0c02e7

    invoke-virtual {p0, v0}, Lcom/youku/widget/CodeErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->codeErrTips:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->codeErrTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/CodeErrorDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/youku/widget/CodeErrorDialog;->setNormalListener()V

    .line 41
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "contentRes"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->content:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->codeErrTips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->codeErrTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/CodeErrorDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/youku/widget/CodeErrorDialog;->content:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->codeErrTips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog;->codeErrTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 58
    iput-object p2, p0, Lcom/youku/widget/CodeErrorDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 59
    return-void
.end method

.method public setNormalNegtiveBtn(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/youku/widget/CodeErrorDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 67
    return-void
.end method

.method public setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 62
    iput-object p2, p0, Lcom/youku/widget/CodeErrorDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 63
    return-void
.end method
