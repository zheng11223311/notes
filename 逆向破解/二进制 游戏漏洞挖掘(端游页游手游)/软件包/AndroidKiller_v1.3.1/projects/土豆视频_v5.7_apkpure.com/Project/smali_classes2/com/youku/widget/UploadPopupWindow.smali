.class public Lcom/youku/widget/UploadPopupWindow;
.super Ljava/lang/Object;
.source "UploadPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnVideoPick:Landroid/widget/Button;

.field private mBtnVideoShot:Landroid/widget/Button;

.field private mHeight:I

.field private mPw:Landroid/widget/PopupWindow;

.field private tudoutab:Lcom/youku/widget/TudouTab;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/widget/TudouTab;)V
    .locals 5
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "tudou"    # Lcom/youku/widget/TudouTab;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/youku/widget/UploadPopupWindow;->mActivity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/youku/widget/UploadPopupWindow;->tudoutab:Lcom/youku/widget/TudouTab;

    .line 44
    iget-object v2, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    .line 45
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030268

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/youku/widget/UploadPopupWindow;->mHeight:I

    .line 51
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    iget v4, p0, Lcom/youku/widget/UploadPopupWindow;->mHeight:I

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    .line 53
    invoke-direct {p0, v1}, Lcom/youku/widget/UploadPopupWindow;->initView(Landroid/view/View;)V

    .line 55
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private goLocalVideo()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFragment;->showLocalVideo(Landroid/app/Activity;)V

    .line 164
    return-void
.end method

.method private goVideoShot()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFragment;->videoShot(Landroid/app/Activity;)V

    .line 160
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 59
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 61
    .local v0, "dw":Landroid/graphics/drawable/ColorDrawable;
    iget-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 63
    iget-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/youku/widget/UploadPopupWindow$1;

    invoke-direct {v2, p0}, Lcom/youku/widget/UploadPopupWindow$1;-><init>(Lcom/youku/widget/UploadPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 71
    const v1, 0x7f0c0651

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->mBtnVideoPick:Landroid/widget/Button;

    .line 72
    const v1, 0x7f0c0650

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->mBtnVideoShot:Landroid/widget/Button;

    .line 73
    const v1, 0x7f0c0c12

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->mBtnCancel:Landroid/widget/Button;

    .line 75
    iget-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->mBtnVideoPick:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->mBtnVideoShot:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method


# virtual methods
.method public dismiss()Z
    .locals 1

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mBtnVideoShot:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->tudoutab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->getCurTabString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u9a6c\u4e0a\u62cd\u6444\u6309\u94ae\u70b9\u51fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->tudoutab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->getCurTabString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u9a6c\u4e0a\u62cd\u6444"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/youku/widget/UploadPopupWindow;->goVideoShot()V

    .line 155
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/youku/widget/UploadPopupWindow;->dismiss()Z

    .line 156
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mBtnVideoPick:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->tudoutab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->getCurTabString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u672c\u5730\u4e0a\u4f20\u6309\u94ae\u70b9\u51fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/widget/UploadPopupWindow;->tudoutab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->getCurTabString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u672c\u5730\u4e0a\u4f20"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/youku/widget/UploadPopupWindow;->goLocalVideo()V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mBtnCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method public show(Landroid/view/View;)V
    .locals 3
    .param p1, "RelateView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    const v1, 0x7f0e0058

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 116
    iget-object v0, p0, Lcom/youku/widget/UploadPopupWindow;->mPw:Landroid/widget/PopupWindow;

    const/16 v1, 0x50

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 118
    :cond_0
    return-void
.end method
