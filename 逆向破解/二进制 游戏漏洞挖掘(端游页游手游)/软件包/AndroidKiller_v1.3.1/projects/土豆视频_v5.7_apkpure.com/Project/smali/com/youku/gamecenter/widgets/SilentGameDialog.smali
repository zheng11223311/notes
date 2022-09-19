.class public Lcom/youku/gamecenter/widgets/SilentGameDialog;
.super Landroid/app/Dialog;
.source "SilentGameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;
    }
.end annotation


# instance fields
.field private mBtnName:Ljava/lang/String;

.field private mCloseBtn:Landroid/widget/TextView;

.field private mDesc:Ljava/lang/String;

.field private mDescTv:Landroid/widget/TextView;

.field private mIcon:Ljava/lang/String;

.field private mIconImg:Landroid/widget/ImageView;

.field private mImageUrl:Ljava/lang/String;

.field private mInstallBtn:Landroid/widget/TextView;

.field private mListener:Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mPostImg:Landroid/widget/ImageView;

.field private mTitle:Ljava/lang/String;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mTitle"    # Ljava/lang/String;
    .param p3, "mIcon"    # Ljava/lang/String;
    .param p4, "mImageUrl"    # Ljava/lang/String;
    .param p5, "mDesc"    # Ljava/lang/String;
    .param p6, "mBtnName"    # Ljava/lang/String;

    .prologue
    .line 49
    sget v0, Lcom/youku/gamecenter/R$style;->game_home_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 50
    iput-object p2, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mTitle:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mImageUrl:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mDesc:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mIcon:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mBtnName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private handleClickAction(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mListener:Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mInstallBtn:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mListener:Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;->onInstallClicked()V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mPostImg:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mListener:Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;->onPosterClicked()V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mIconImg:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mTitleTv:Landroid/widget/TextView;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mDescTv:Landroid/widget/TextView;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mParentLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mListener:Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;->onGameInfoClicked()V

    goto :goto_0
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/youku/gamecenter/R$id;->poster:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mPostImg:Landroid/widget/ImageView;

    .line 82
    sget v0, Lcom/youku/gamecenter/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mIconImg:Landroid/widget/ImageView;

    .line 83
    sget v0, Lcom/youku/gamecenter/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mTitleTv:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/youku/gamecenter/R$id;->desc:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mDescTv:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/youku/gamecenter/R$id;->close:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mCloseBtn:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/youku/gamecenter/R$id;->install:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mInstallBtn:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/youku/gamecenter/R$id;->items_layout:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 88
    return-void
.end method

.method private setClickListener()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mCloseBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mInstallBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mPostImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mIconImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mDescTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method private setUIData()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mInstallBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mBtnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mDescTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mIcon:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mIconImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 97
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mImageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mPostImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 99
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;)Lcom/youku/gamecenter/widgets/SilentGameDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "btnName"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;

    .prologue
    .line 60
    new-instance v0, Lcom/youku/gamecenter/widgets/SilentGameDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/youku/gamecenter/widgets/SilentGameDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, "dialog":Lcom/youku/gamecenter/widgets/SilentGameDialog;
    invoke-virtual {v0, p6}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->setListener(Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->show()V

    .line 64
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->dismiss()V

    .line 115
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mCloseBtn:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->handleClickAction(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v0, Lcom/youku/gamecenter/R$layout;->widght_silent_game_dialog:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->setContentView(I)V

    .line 75
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->initViews()V

    .line 76
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->setUIData()V

    .line 77
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/SilentGameDialog;->setClickListener()V

    .line 78
    return-void
.end method

.method public setListener(Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/SilentGameDialog;->mListener:Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;

    .line 69
    return-void
.end method
