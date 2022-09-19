.class public abstract Lcom/tudou/ui/activity/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/youku/util/IConfirm;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/activity/BaseActivity$3;
    }
.end annotation


# static fields
.field private static query:Ljava/lang/String;


# instance fields
.field private activityName:Ljava/lang/String;

.field public leftimg:Landroid/widget/ImageView;

.field protected mAjust:Z

.field protected mHandleBackButton:Z

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mLLRight:Landroid/widget/LinearLayout;

.field private mTitleDetail:Landroid/widget/TextView;

.field private mcontext:Landroid/content/Context;

.field private padtitle:Landroid/widget/TextView;

.field private padtitleright:Landroid/widget/TextView;

.field private right_1_img:Landroid/widget/ImageView;

.field private right_1_text:Landroid/widget/TextView;

.field private right_2_img:Landroid/widget/ImageView;

.field private right_2_text:Landroid/widget/TextView;

.field private righttext:Landroid/widget/TextView;

.field public rigthimg:Landroid/widget/ImageView;

.field private rl_right1:Landroid/view/View;

.field private rl_right2:Landroid/view/View;

.field private titletext:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/tudou/ui/activity/BaseActivity;->mHandleBackButton:Z

    .line 69
    iput-boolean v0, p0, Lcom/tudou/ui/activity/BaseActivity;->mAjust:Z

    return-void
.end method

.method public static fragmentArgumentsToIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .param p0, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 341
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v1, "intent":Landroid/content/Intent;
    if-nez p0, :cond_0

    .line 353
    :goto_0
    return-object v1

    .line 346
    :cond_0
    const-string v2, "_uri"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 347
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 351
    :cond_1
    invoke-virtual {v1, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 352
    const-string v2, "_uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static intentToFragmentArguments(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez p0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-object v0

    .line 312
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 313
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 314
    const-string v3, "_uri"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 317
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 318
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 319
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private setAjust()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/tudou/ui/activity/BaseActivity;->mAjust:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p0}, Lcom/youku/util/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BaseActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method public confirmExcuter(Lcom/youku/util/IConfirm$Status;)V
    .locals 2
    .param p1, "tag"    # Lcom/youku/util/IConfirm$Status;

    .prologue
    .line 446
    sget-object v0, Lcom/tudou/ui/activity/BaseActivity$3;->$SwitchMap$com$youku$util$IConfirm$Status:[I

    invoke-virtual {p1}, Lcom/youku/util/IConfirm$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 454
    :goto_0
    return-void

    .line 448
    :pswitch_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 330
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 334
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseActivity dispatchTouchEvent(MotionEvent ev) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;)V

    .line 334
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 363
    instance-of v0, p0, Lcom/tudou/guide/GuideActivity;

    if-eqz v0, :cond_1

    .line 364
    invoke-static {p0}, Lcom/youku/widget/YoukuAnimation;->activityGuideClose(Landroid/content/Context;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    instance-of v0, p0, Lcom/tudou/guide/GuideVideoActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/tudou/ui/activity/HomePageActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/tudou/ui/activity/ClassifyHomeActivity;

    if-nez v0, :cond_0

    .line 367
    invoke-static {p0}, Lcom/youku/widget/YoukuAnimation;->activityClose(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method public getRightImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->rigthimg:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 267
    const v0, 0x7f0c0d06

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->rigthimg:Landroid/widget/ImageView;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->rigthimg:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->mLLRight:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 301
    const v0, 0x7f0c0251

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->mLLRight:Landroid/widget/LinearLayout;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->mLLRight:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRighttext()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->righttext:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 287
    const v0, 0x7f0c0223

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->righttext:Landroid/widget/TextView;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->righttext:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->titletext:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 278
    const v0, 0x7f0c06b1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->titletext:Landroid/widget/TextView;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->titletext:Landroid/widget/TextView;

    return-object v0
.end method

.method public getleftImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->leftimg:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 260
    const v0, 0x7f0c024f

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->leftimg:Landroid/widget/ImageView;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->leftimg:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->activityName:Ljava/lang/String;

    .line 80
    const-string v0, "Tudou_Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iput-object p0, p0, Lcom/tudou/ui/activity/BaseActivity;->mcontext:Landroid/content/Context;

    .line 83
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 89
    invoke-static {p0}, Lcom/youku/util/Util;->setStatusBarTlags(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;->setAjust()V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 377
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 378
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/android/Youku;->isParse:Z

    .line 233
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 234
    const-string v0, "Tudou_Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {p0}, Lcom/youku/util/Util;->onPause(Landroid/app/Activity;)V

    .line 237
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 244
    const-string v0, "Tudou_Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/android/Youku;->isParse:Z

    .line 247
    sget-boolean v0, Lcom/tudou/android/Youku;->isShowNetWorkChange:Z

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/android/Youku;->isShowNetWorkChange:Z

    .line 253
    :cond_0
    invoke-static {}, Lcom/tudou/android/Youku;->getIsNotShowTips()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;

    if-nez v0, :cond_2

    .line 254
    :cond_1
    invoke-static {p0}, Lcom/youku/util/Util;->onResume(Landroid/app/Activity;)V

    .line 256
    :cond_2
    return-void
.end method

.method public setPadRightTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->padtitleright:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 403
    const v0, 0x7f0c0223

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->padtitleright:Landroid/widget/TextView;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->padtitleright:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    return-void
.end method

.method public setPadTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->padtitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 396
    const v0, 0x7f0c06b1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->padtitle:Landroid/widget/TextView;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity;->padtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    return-void
.end method

.method public showConfirmDialog(ILcom/youku/util/IConfirm$Status;)V
    .locals 1
    .param p1, "aResId"    # I
    .param p2, "aTag"    # Lcom/youku/util/IConfirm$Status;

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tudou/ui/activity/BaseActivity;->showConfirmDialog(Ljava/lang/String;Lcom/youku/util/IConfirm$Status;)V

    .line 442
    return-void
.end method

.method public showConfirmDialog(Ljava/lang/String;Lcom/youku/util/IConfirm$Status;)V
    .locals 3
    .param p1, "aMessage"    # Ljava/lang/String;
    .param p2, "tag"    # Lcom/youku/util/IConfirm$Status;

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/tudou/ui/activity/BaseActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 413
    :cond_0
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, "mConfirmDialog":Lcom/youku/widget/TudouDialog;
    invoke-virtual {v0, p1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v1, "\u77e5\u9053\u4e86"

    new-instance v2, Lcom/tudou/ui/activity/BaseActivity$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/tudou/ui/activity/BaseActivity$1;-><init>(Lcom/tudou/ui/activity/BaseActivity;Lcom/youku/widget/TudouDialog;Lcom/youku/util/IConfirm$Status;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 423
    new-instance v1, Lcom/tudou/ui/activity/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/BaseActivity$2;-><init>(Lcom/tudou/ui/activity/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 437
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    goto :goto_0
.end method
