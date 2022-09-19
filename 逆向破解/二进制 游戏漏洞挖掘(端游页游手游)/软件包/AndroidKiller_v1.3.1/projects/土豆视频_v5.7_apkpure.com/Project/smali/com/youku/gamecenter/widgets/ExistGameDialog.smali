.class public Lcom/youku/gamecenter/widgets/ExistGameDialog;
.super Landroid/app/Dialog;
.source "ExistGameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;
    }
.end annotation


# instance fields
.field private mButtonCancel:Landroid/view/View;

.field private mButtonOk:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mImageClickable:Z

.field private mImageUrl:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mLayoutId:I

.field private mListener:Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;

.field private mOkTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageView:Landroid/widget/ImageView;

    .line 20
    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mButtonCancel:Landroid/view/View;

    .line 21
    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mButtonOk:Landroid/widget/Button;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "okTitle"    # Ljava/lang/String;
    .param p5, "imageClickable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    iput-object v1, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageView:Landroid/widget/ImageView;

    .line 20
    iput-object v1, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mButtonCancel:Landroid/view/View;

    .line 21
    iput-object v1, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mButtonOk:Landroid/widget/Button;

    .line 43
    iput-object p3, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageUrl:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mContext:Landroid/content/Context;

    .line 45
    iput p2, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mLayoutId:I

    .line 46
    iput-object p4, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mOkTitle:Ljava/lang/String;

    .line 47
    iput-boolean p5, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageClickable:Z

    .line 48
    return-void
.end method

.method private getLayoutId()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mLayoutId:I

    if-eqz v0, :cond_0

    .line 99
    iget v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mLayoutId:I

    .line 101
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/youku/gamecenter/R$layout;->widget_exist_game_recomend_dialog_game:I

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->setContentView(I)V

    .line 80
    sget v0, Lcom/youku/gamecenter/R$id;->game_exist_dialog_cancel:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mButtonCancel:Landroid/view/View;

    .line 81
    sget v0, Lcom/youku/gamecenter/R$id;->game_exist_dialog_ok:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mButtonOk:Landroid/widget/Button;

    .line 82
    sget v0, Lcom/youku/gamecenter/R$id;->game_image:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageView:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mButtonCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageClickable:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mButtonOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mOkTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public static showDialog(Landroid/content/Context;ILcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;Ljava/lang/String;Ljava/lang/String;Z)Lcom/youku/gamecenter/widgets/ExistGameDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "listener"    # Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "okTitle"    # Ljava/lang/String;
    .param p5, "imageClickable"    # Z

    .prologue
    .line 55
    new-instance v0, Lcom/youku/gamecenter/widgets/ExistGameDialog;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/youku/gamecenter/widgets/ExistGameDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 57
    .local v0, "dialog":Lcom/youku/gamecenter/widgets/ExistGameDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->requestWindowFeature(I)Z

    .line 58
    invoke-virtual {v0, p2}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->setOnExistGameDialogClickListener(Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;)V

    .line 59
    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->show()V

    .line 60
    return-object v0
.end method


# virtual methods
.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->dismiss()V

    .line 66
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 67
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 70
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 108
    .local v0, "id":I
    sget v1, Lcom/youku/gamecenter/R$id;->game_image:I

    if-ne v0, v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->dismiss()V

    .line 110
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mListener:Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;

    invoke-interface {v1}, Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;->onImageClicked()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    sget v1, Lcom/youku/gamecenter/R$id;->game_exist_dialog_cancel:I

    if-ne v0, v1, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->dismiss()V

    .line 115
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mListener:Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;

    invoke-interface {v1}, Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;->onCancelClicked()V

    goto :goto_0

    .line 119
    :cond_2
    sget v1, Lcom/youku/gamecenter/R$id;->game_exist_dialog_ok:I

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->dismiss()V

    .line 121
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mListener:Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;

    invoke-interface {v1}, Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;->onConfirmClicked()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/ExistGameDialog;->initView()V

    .line 76
    return-void
.end method

.method public setOnExistGameDialogClickListener(Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/ExistGameDialog;->mListener:Lcom/youku/gamecenter/widgets/ExistGameDialog$OnExistGameDialogClickListener;

    .line 136
    return-void
.end method

.method public setShowText(Ljava/lang/String;)V
    .locals 0
    .param p1, "showText"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method
