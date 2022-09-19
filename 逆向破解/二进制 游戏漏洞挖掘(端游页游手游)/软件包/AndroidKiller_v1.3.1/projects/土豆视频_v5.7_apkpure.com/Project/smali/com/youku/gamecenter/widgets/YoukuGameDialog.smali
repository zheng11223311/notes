.class public Lcom/youku/gamecenter/widgets/YoukuGameDialog;
.super Landroid/app/Dialog;
.source "YoukuGameDialog.java"


# instance fields
.field mButton:Landroid/widget/Button;

.field mClose:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field mGamePic:Landroid/widget/ImageView;

.field private mIsYouku:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mContext:Landroid/content/Context;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mIsYouku:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "isYouku"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mContext:Landroid/content/Context;

    .line 33
    iput-boolean p3, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mIsYouku:Z

    .line 34
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 45
    sget v0, Lcom/youku/gamecenter/R$id;->game_close_image:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mClose:Landroid/widget/ImageView;

    .line 46
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/gamecenter/widgets/YoukuGameDialog$1;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/widgets/YoukuGameDialog$1;-><init>(Lcom/youku/gamecenter/widgets/YoukuGameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget v0, Lcom/youku/gamecenter/R$id;->game_dialog_pic:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mGamePic:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcom/youku/gamecenter/R$id;->download_btn:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mButton:Landroid/widget/Button;

    .line 56
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lcom/youku/gamecenter/R$layout;->yp_youku_dialog_game:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->initView()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->setCanceledOnTouchOutside(Z)V

    .line 42
    return-void
.end method

.method public setButtonTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "buttonTitle"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setGamePic(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mGamePic:Landroid/widget/ImageView;

    sget v1, Lcom/youku/gamecenter/R$drawable;->screenshot_default_horizontal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 65
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mGamePic:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mGamePic:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 71
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mGamePic:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mGamePic:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method
