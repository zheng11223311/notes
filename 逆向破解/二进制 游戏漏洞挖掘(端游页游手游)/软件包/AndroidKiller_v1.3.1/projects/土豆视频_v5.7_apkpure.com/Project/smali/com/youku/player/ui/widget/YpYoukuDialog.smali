.class public Lcom/youku/player/ui/widget/YpYoukuDialog;
.super Landroid/app/AlertDialog;
.source "YpYoukuDialog.java"


# instance fields
.field private content:Ljava/lang/String;

.field private contentTV:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private negitiveText:Ljava/lang/String;

.field private negtiveBtn:Landroid/widget/TextView;

.field private negtive_btn_color_resId:I

.field private negtive_btn_layout:Landroid/view/View;

.field private negtive_btn_layout_resId:I

.field private normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

.field private normalPositiveBtnListener:Landroid/view/View$OnClickListener;

.field private positiveBtn:Landroid/widget/TextView;

.field private positiveText:Ljava/lang/String;

.field private positive_btn_layout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 29
    sget v0, Lcom/youku/android/player/R$style;->ypYoukuDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 17
    iput v1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtive_btn_layout_resId:I

    .line 18
    iput v1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtive_btn_color_resId:I

    .line 30
    iput-object p1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/ui/widget/YpYoukuDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ui/widget/YpYoukuDialog;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/ui/widget/YpYoukuDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ui/widget/YpYoukuDialog;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private setNormalListener()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->positive_btn_layout:Landroid/view/View;

    new-instance v1, Lcom/youku/player/ui/widget/YpYoukuDialog$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YpYoukuDialog$1;-><init>(Lcom/youku/player/ui/widget/YpYoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtive_btn_layout:Landroid/view/View;

    new-instance v1, Lcom/youku/player/ui/widget/YpYoukuDialog$2;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/YpYoukuDialog$2;-><init>(Lcom/youku/player/ui/widget/YpYoukuDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lcom/youku/android/player/R$layout;->yp_player_youku_dialog_normal:I

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setContentView(I)V

    .line 36
    sget v0, Lcom/youku/android/player/R$id;->positive_btn_layout:I

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->positive_btn_layout:Landroid/view/View;

    .line 37
    sget v0, Lcom/youku/android/player/R$id;->negtive_btn_layout:I

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtive_btn_layout:Landroid/view/View;

    .line 38
    sget v0, Lcom/youku/android/player/R$id;->positive_btn:I

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->positiveBtn:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/youku/android/player/R$id;->negtive_btn:I

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtiveBtn:Landroid/widget/TextView;

    .line 40
    iget v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtive_btn_layout_resId:I

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtive_btn_layout:Landroid/view/View;

    iget v1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtive_btn_layout_resId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    :cond_0
    iget v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtive_btn_color_resId:I

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtiveBtn:Landroid/widget/TextView;

    iget v1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtive_btn_color_resId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    :cond_1
    sget v0, Lcom/youku/android/player/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->contentTV:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->content:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->contentTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->positiveText:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->positiveText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->positiveBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->positiveText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negitiveText:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negitiveText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtiveBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negitiveText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_4
    invoke-direct {p0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setNormalListener()V

    .line 54
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "content"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->content:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->content:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setNormalNegtiveBackGround(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtive_btn_layout_resId:I

    .line 106
    return-void
.end method

.method public setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 90
    iput-object p2, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 91
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negitiveText:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 100
    iput-object p2, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 101
    iput-object p1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negitiveText:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setNormalNegtiveTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->negtive_btn_color_resId:I

    .line 110
    return-void
.end method

.method public setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 85
    iput-object p2, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 86
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->positiveText:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 95
    iput-object p2, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 96
    iput-object p1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog;->positiveText:Ljava/lang/String;

    .line 97
    return-void
.end method
