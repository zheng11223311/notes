.class public Lcom/zijunlin/Zxing/CaptureFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "CaptureFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field public static Dp:I = 0x0

.field public static HT:I = 0x0

.field public static IsLandSpace:Z = false

.field private static final VIBRATE_DURATION:J = 0xc8L

.field public static Wt:I

.field public static isDestory:Z


# instance fields
.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private characterSet:Ljava/lang/String;

.field private corner_blue:Landroid/widget/FrameLayout;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public dialog:Lcom/youku/widget/CodeErrorDialog;

.field private handler:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/zijunlin/Zxing/decoding/InactivityTimer;

.field mHandler:Landroid/os/Handler;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private networkReceiver:Landroid/content/BroadcastReceiver;

.field private playBeep:Z

.field public saoHeart:Landroid/widget/ImageView;

.field private tishi:Landroid/widget/TextView;

.field private vibrate:Z

.field view:Landroid/view/View;

.field private viewfinderView:Lcom/zijunlin/Zxing/view/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    sput-boolean v0, Lcom/zijunlin/Zxing/CaptureFragment;->IsLandSpace:Z

    .line 83
    sput v0, Lcom/zijunlin/Zxing/CaptureFragment;->HT:I

    .line 84
    sput v0, Lcom/zijunlin/Zxing/CaptureFragment;->Wt:I

    .line 85
    sput v0, Lcom/zijunlin/Zxing/CaptureFragment;->Dp:I

    .line 86
    sput-boolean v0, Lcom/zijunlin/Zxing/CaptureFragment;->isDestory:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 225
    new-instance v0, Lcom/zijunlin/Zxing/CaptureFragment$4;

    invoke-direct {v0, p0}, Lcom/zijunlin/Zxing/CaptureFragment$4;-><init>(Lcom/zijunlin/Zxing/CaptureFragment;)V

    iput-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->mHandler:Landroid/os/Handler;

    .line 388
    new-instance v0, Lcom/zijunlin/Zxing/CaptureFragment$5;

    invoke-direct {v0, p0}, Lcom/zijunlin/Zxing/CaptureFragment$5;-><init>(Lcom/zijunlin/Zxing/CaptureFragment;)V

    iput-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 609
    new-instance v0, Lcom/zijunlin/Zxing/CaptureFragment$9;

    invoke-direct {v0, p0}, Lcom/zijunlin/Zxing/CaptureFragment$9;-><init>(Lcom/zijunlin/Zxing/CaptureFragment;)V

    iput-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->networkReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zijunlin/Zxing/CaptureFragment;)Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;
    .locals 1
    .param p0, "x0"    # Lcom/zijunlin/Zxing/CaptureFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->handler:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zijunlin/Zxing/CaptureFragment;Lcom/youku/vo/Saosao;)V
    .locals 0
    .param p0, "x0"    # Lcom/zijunlin/Zxing/CaptureFragment;
    .param p1, "x1"    # Lcom/youku/vo/Saosao;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/zijunlin/Zxing/CaptureFragment;->dealWithData(Lcom/youku/vo/Saosao;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zijunlin/Zxing/CaptureFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/zijunlin/Zxing/CaptureFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->showDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/zijunlin/Zxing/CaptureFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/zijunlin/Zxing/CaptureFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->finishLogin()V

    return-void
.end method

.method private dealWithData(Lcom/youku/vo/Saosao;)V
    .locals 3
    .param p1, "result"    # Lcom/youku/vo/Saosao;

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    const-string/jumbo v1, "\u62b1\u6b49\uff0c\u6ca1\u6709\u626b\u5230\u76f8\u5173\u4e8c\u7ef4\u7801\u4fe1\u606f"

    invoke-virtual {v0, v1}, Lcom/youku/widget/CodeErrorDialog;->setMessage(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->showDialog()V

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TAG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    .line 459
    iget-object v0, p1, Lcom/youku/vo/Saosao;->category:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3"

    iget-object v1, p1, Lcom/youku/vo/Saosao;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    const-string/jumbo v0, "\u4e8c\u7ef4\u7801"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/vo/Saosao;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p1, Lcom/youku/vo/Saosao;->code:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zijunlin/Zxing/CaptureFragment;->scanLogin(Ljava/lang/String;)V

    .line 492
    :cond_1
    :goto_0
    return-void

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u4e8c\u7ef4\u7801"

    invoke-virtual {v0, v1}, Lcom/youku/widget/CodeErrorDialog;->setMessage(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->showDialog()V

    goto :goto_0

    .line 470
    :cond_3
    iget-object v0, p1, Lcom/youku/vo/Saosao;->category:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "1"

    iget-object v1, p1, Lcom/youku/vo/Saosao;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "success"

    iget-object v1, p1, Lcom/youku/vo/Saosao;->status:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 473
    invoke-virtual {p0, p1}, Lcom/zijunlin/Zxing/CaptureFragment;->goPlayer(Lcom/youku/vo/Saosao;)V

    goto :goto_0

    .line 474
    :cond_4
    iget-object v0, p1, Lcom/youku/vo/Saosao;->category:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "2"

    iget-object v1, p1, Lcom/youku/vo/Saosao;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 476
    invoke-direct {p0, p1}, Lcom/zijunlin/Zxing/CaptureFragment;->goPodcast(Lcom/youku/vo/Saosao;)V

    goto :goto_0

    .line 477
    :cond_5
    iget-object v0, p1, Lcom/youku/vo/Saosao;->category:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "3"

    iget-object v1, p1, Lcom/youku/vo/Saosao;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 479
    const-string/jumbo v0, "\u4e8c\u7ef4\u7801"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/vo/Saosao;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p1, Lcom/youku/vo/Saosao;->code:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zijunlin/Zxing/CaptureFragment;->scanLogin(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_6
    iget-object v0, p1, Lcom/youku/vo/Saosao;->category:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "4"

    iget-object v1, p1, Lcom/youku/vo/Saosao;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/youku/vo/Saosao;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 484
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/vo/Saosao;->url:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 486
    :cond_7
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    const-string/jumbo v1, "\u62b1\u6b49\uff0c\u6ca1\u6709\u626b\u5230\u76f8\u5173\u4e8c\u7ef4\u7801\u4fe1\u606f"

    invoke-virtual {v0, v1}, Lcom/youku/widget/CodeErrorDialog;->setMessage(Ljava/lang/String;)V

    .line 488
    invoke-direct {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->showDialog()V

    goto/16 :goto_0
.end method

.method private finishLogin()V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 547
    sget-object v0, Lcom/tudou/ui/activity/LoginActivity;->mActivity:Lcom/tudou/ui/activity/LoginActivity;

    if-eqz v0, :cond_0

    .line 548
    sget-object v0, Lcom/tudou/ui/activity/LoginActivity;->mActivity:Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/LoginActivity;->finish()V

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 551
    return-void
.end method

.method private getVideo(Ljava/lang/String;)V
    .locals 6
    .param p1, "posturl"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 401
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 448
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 406
    const-string/jumbo v3, "\u4e8c\u7ef4\u7801"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URLEncode \u4e4b\u524d result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string/jumbo v3, "\u4e8c\u7ef4\u7801"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URLEncode \u4e4b\u540e result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 411
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getSaosaoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "\u4e8c\u7ef4\u7801"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/zijunlin/Zxing/CaptureFragment$6;

    invoke-direct {v3, p0}, Lcom/zijunlin/Zxing/CaptureFragment$6;-><init>(Lcom/zijunlin/Zxing/CaptureFragment;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method private goPodcast(Lcom/youku/vo/Saosao;)V
    .locals 5
    .param p1, "result"    # Lcom/youku/vo/Saosao;

    .prologue
    .line 558
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 559
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/NewPodcastActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 561
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 562
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "userid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/vo/Saosao;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v2, "from"

    const-string v3, "attention"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 565
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 566
    return-void
.end method

.method private goResultActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 340
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 341
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 342
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 347
    return-void
.end method

.method private initBeepSound()V
    .locals 8

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 355
    :try_start_0
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 356
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 357
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 358
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/zijunlin/Zxing/CaptureFragment;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 360
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 362
    .local v7, "file":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 364
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 365
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 366
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v7    # "file":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v6

    .line 368
    .local v6, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 266
    :try_start_0
    invoke-static {}, Lcom/zijunlin/Zxing/camera/CameraManager;->get()Lcom/zijunlin/Zxing/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zijunlin/Zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    iget-object v2, p0, Lcom/zijunlin/Zxing/CaptureFragment;->handler:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    if-nez v2, :cond_0

    .line 273
    new-instance v2, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    iget-object v3, p0, Lcom/zijunlin/Zxing/CaptureFragment;->decodeFormats:Ljava/util/Vector;

    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->characterSet:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;-><init>(Lcom/zijunlin/Zxing/CaptureFragment;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/zijunlin/Zxing/CaptureFragment;->handler:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 269
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private initTitle(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 209
    const v2, 0x7f0c00a7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 211
    .local v0, "back_img":Landroid/widget/ImageView;
    new-instance v2, Lcom/zijunlin/Zxing/CaptureFragment$3;

    invoke-direct {v2, p0}, Lcom/zijunlin/Zxing/CaptureFragment$3;-><init>(Lcom/zijunlin/Zxing/CaptureFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v2, 0x7f0c00df

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 221
    .local v1, "txt_title":Landroid/widget/TextView;
    const v2, 0x7f0d03b8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 223
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0c026a

    const v5, 0x7f0c0269

    const v4, 0x7f0c0268

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TAG"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    const v0, 0x7f0c026b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :goto_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d03bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :goto_1
    return-void

    .line 194
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const v0, 0x7f0c026b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d03c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private playBeepSoundAndVibrate()V
    .locals 4

    .prologue
    .line 376
    iget-boolean v1, p0, Lcom/zijunlin/Zxing/CaptureFragment;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zijunlin/Zxing/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/zijunlin/Zxing/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 379
    :cond_0
    iget-boolean v1, p0, Lcom/zijunlin/Zxing/CaptureFragment;->vibrate:Z

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 381
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 383
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 626
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 627
    .local v0, "i":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/zijunlin/Zxing/CaptureFragment;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 629
    return-void
.end method

.method private scanLogin(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 496
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    .line 497
    .local v0, "login":Lcom/youku/service/login/ILogin;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    new-instance v1, Lcom/zijunlin/Zxing/CaptureFragment$7;

    invoke-direct {v1, p0}, Lcom/zijunlin/Zxing/CaptureFragment$7;-><init>(Lcom/zijunlin/Zxing/CaptureFragment;)V

    invoke-interface {v0, p1, v1}, Lcom/youku/service/login/ILogin;->scanAuthorize(Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V

    .line 543
    :goto_0
    return-void

    .line 520
    :cond_0
    new-instance v1, Lcom/zijunlin/Zxing/CaptureFragment$8;

    invoke-direct {v1, p0}, Lcom/zijunlin/Zxing/CaptureFragment$8;-><init>(Lcom/zijunlin/Zxing/CaptureFragment;)V

    invoke-interface {v0, p1, v1}, Lcom/youku/service/login/ILogin;->scanLogin(Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V

    goto :goto_0
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 554
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 555
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/zijunlin/Zxing/CaptureFragment;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->networkReceiver:Landroid/content/BroadcastReceiver;

    .line 634
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->viewfinderView:Lcom/zijunlin/Zxing/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/view/ViewfinderView;->drawViewfinder()V

    .line 313
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->handler:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lcom/zijunlin/Zxing/view/ViewfinderView;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->viewfinderView:Lcom/zijunlin/Zxing/view/ViewfinderView;

    return-object v0
.end method

.method goPlayer(Lcom/youku/vo/Saosao;)V
    .locals 7
    .param p1, "saoJson"    # Lcom/youku/vo/Saosao;

    .prologue
    .line 569
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 570
    if-nez p1, :cond_0

    .line 594
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p1, Lcom/youku/vo/Saosao;->albumid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 586
    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    .line 587
    .local v4, "type":Lcom/tudou/android/Youku$Type;
    const-string v6, ""

    .line 592
    .local v6, "listCode":Ljava/lang/String;
    :goto_1
    iget-object v1, p1, Lcom/youku/vo/Saosao;->itemCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/youku/vo/Saosao;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/vo/Saosao;->point:Ljava/lang/String;

    iget-object v5, p1, Lcom/youku/vo/Saosao;->lang:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/zijunlin/Zxing/CaptureFragment;->goPlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    .end local v4    # "type":Lcom/tudou/android/Youku$Type;
    .end local v6    # "listCode":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    .line 590
    .restart local v4    # "type":Lcom/tudou/android/Youku$Type;
    iget-object v6, p1, Lcom/youku/vo/Saosao;->playlistCode:Ljava/lang/String;

    .restart local v6    # "listCode":Ljava/lang/String;
    goto :goto_1
.end method

.method goPlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "point"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/tudou/android/Youku$Type;
    .param p5, "lang"    # Ljava/lang/String;
    .param p6, "playListCode"    # Ljava/lang/String;

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "\\d+"

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v3, v1, 0x3e8

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/tudou/android/TudouApi;->goPlayerWithpoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-void

    .line 598
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "obj"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->inactivityTimer:Lcom/zijunlin/Zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/decoding/InactivityTimer;->onActivity()V

    .line 317
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    invoke-virtual {v0}, Lcom/youku/widget/CodeErrorDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->playBeepSoundAndVibrate()V

    .line 321
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zijunlin/Zxing/CaptureFragment;->getVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleHeart()V
    .locals 3

    .prologue
    const v2, 0x7f02014c

    .line 326
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->saoHeart:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->saoHeart:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->saoHeart:Landroid/widget/ImageView;

    const-string v1, "clarity"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const-string v0, "clarity"

    iget-object v1, p0, Lcom/zijunlin/Zxing/CaptureFragment;->saoHeart:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->saoHeart:Landroid/widget/ImageView;

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->saoHeart:Landroid/widget/ImageView;

    const-string v1, "heart"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_2
    const-string v0, "heart"

    iget-object v1, p0, Lcom/zijunlin/Zxing/CaptureFragment;->saoHeart:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->saoHeart:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->saoHeart:Landroid/widget/ImageView;

    const-string v1, "clarity"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-direct {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->registerReceiver()V

    .line 98
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 99
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 100
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/zijunlin/Zxing/CaptureFragment;->Wt:I

    .line 101
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/zijunlin/Zxing/CaptureFragment;->HT:I

    .line 102
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/zijunlin/Zxing/CaptureFragment;->Dp:I

    .line 104
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 105
    const/4 v1, 0x1

    sput-boolean v1, Lcom/zijunlin/Zxing/CaptureFragment;->IsLandSpace:Z

    .line 109
    :goto_0
    const-string v1, "CaptureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/zijunlin/Zxing/CaptureFragment;->Wt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ht:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/zijunlin/Zxing/CaptureFragment;->HT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",IsLandSpace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/zijunlin/Zxing/CaptureFragment;->IsLandSpace:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/zijunlin/Zxing/camera/CameraManager;->init(Landroid/app/Activity;)V

    .line 114
    return-void

    .line 107
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/zijunlin/Zxing/CaptureFragment;->IsLandSpace:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 120
    const v4, 0x7f030072

    invoke-virtual {p1, v4, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->view:Landroid/view/View;

    .line 121
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->view:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/zijunlin/Zxing/CaptureFragment;->initView(Landroid/view/View;)V

    .line 122
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->view:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/zijunlin/Zxing/CaptureFragment;->initTitle(Landroid/view/View;)V

    .line 123
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->view:Landroid/view/View;

    const v5, 0x7f0c0264

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zijunlin/Zxing/view/ViewfinderView;

    iput-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->viewfinderView:Lcom/zijunlin/Zxing/view/ViewfinderView;

    .line 125
    invoke-static {}, Lcom/zijunlin/Zxing/camera/CameraManager;->get()Lcom/zijunlin/Zxing/camera/CameraManager;

    move-result-object v0

    .line 126
    .local v0, "c":Lcom/zijunlin/Zxing/camera/CameraManager;
    invoke-virtual {v0}, Lcom/zijunlin/Zxing/camera/CameraManager;->getpicRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 127
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->view:Landroid/view/View;

    const v5, 0x7f0c0265

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->corner_blue:Landroid/widget/FrameLayout;

    .line 128
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x5

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->corner_blue:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->corner_blue:Landroid/widget/FrameLayout;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, -0x5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, -0x5

    iget v7, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v7, -0x12

    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 132
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->view:Landroid/view/View;

    const v5, 0x7f0c0268

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->tishi:Landroid/widget/TextView;

    .line 133
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->view:Landroid/view/View;

    const v5, 0x7f0c0266

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->saoHeart:Landroid/widget/ImageView;

    .line 134
    iput-boolean v8, p0, Lcom/zijunlin/Zxing/CaptureFragment;->hasSurface:Z

    .line 135
    new-instance v4, Lcom/zijunlin/Zxing/decoding/InactivityTimer;

    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zijunlin/Zxing/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->inactivityTimer:Lcom/zijunlin/Zxing/decoding/InactivityTimer;

    .line 137
    new-instance v4, Lcom/youku/widget/CodeErrorDialog;

    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/youku/widget/CodeErrorDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    .line 138
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    invoke-virtual {v4, v8}, Lcom/youku/widget/CodeErrorDialog;->setCanceledOnTouchOutside(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 140
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, -0x32

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 141
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    invoke-virtual {v4}, Lcom/youku/widget/CodeErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 142
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    new-instance v5, Lcom/zijunlin/Zxing/CaptureFragment$1;

    invoke-direct {v5, p0}, Lcom/zijunlin/Zxing/CaptureFragment$1;-><init>(Lcom/zijunlin/Zxing/CaptureFragment;)V

    invoke-virtual {v4, v5}, Lcom/youku/widget/CodeErrorDialog;->setNormalNegtiveBtn(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    new-instance v5, Lcom/zijunlin/Zxing/CaptureFragment$2;

    invoke-direct {v5, p0}, Lcom/zijunlin/Zxing/CaptureFragment$2;-><init>(Lcom/zijunlin/Zxing/CaptureFragment;)V

    invoke-virtual {v4, v5}, Lcom/youku/widget/CodeErrorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 160
    iget-object v4, p0, Lcom/zijunlin/Zxing/CaptureFragment;->view:Landroid/view/View;

    return-object v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    .line 256
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zijunlin/Zxing/CaptureFragment;->isDestory:Z

    .line 257
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->inactivityTimer:Lcom/zijunlin/Zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/decoding/InactivityTimer;->shutdown()V

    .line 258
    invoke-direct {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->unregisterReceiver()V

    .line 260
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 262
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 240
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->handler:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->handler:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->quitSynchronously()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->handler:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    .line 244
    :cond_0
    invoke-static {}, Lcom/zijunlin/Zxing/camera/CameraManager;->get()Lcom/zijunlin/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/camera/CameraManager;->closeDriver()V

    .line 245
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 165
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 166
    sput-boolean v5, Lcom/zijunlin/Zxing/CaptureFragment;->isDestory:Z

    .line 167
    iget-object v3, p0, Lcom/zijunlin/Zxing/CaptureFragment;->view:Landroid/view/View;

    const v4, 0x7f0c0263

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    .line 168
    .local v2, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 169
    .local v1, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v3, p0, Lcom/zijunlin/Zxing/CaptureFragment;->hasSurface:Z

    if-eqz v3, :cond_1

    .line 170
    invoke-direct {p0, v1}, Lcom/zijunlin/Zxing/CaptureFragment;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 175
    :goto_0
    iput-object v7, p0, Lcom/zijunlin/Zxing/CaptureFragment;->decodeFormats:Ljava/util/Vector;

    .line 176
    iput-object v7, p0, Lcom/zijunlin/Zxing/CaptureFragment;->characterSet:Ljava/lang/String;

    .line 178
    iput-boolean v6, p0, Lcom/zijunlin/Zxing/CaptureFragment;->playBeep:Z

    .line 179
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 180
    .local v0, "audioService":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 181
    iput-boolean v5, p0, Lcom/zijunlin/Zxing/CaptureFragment;->playBeep:Z

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/zijunlin/Zxing/CaptureFragment;->initBeepSound()V

    .line 184
    iput-boolean v6, p0, Lcom/zijunlin/Zxing/CaptureFragment;->vibrate:Z

    .line 185
    return-void

    .line 172
    .end local v0    # "audioService":Landroid/media/AudioManager;
    :cond_1
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 173
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStop()V

    .line 251
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 281
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 286
    :try_start_0
    iget-boolean v1, p0, Lcom/zijunlin/Zxing/CaptureFragment;->hasSurface:Z

    if-nez v1, :cond_0

    .line 287
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zijunlin/Zxing/CaptureFragment;->hasSurface:Z

    .line 288
    invoke-direct {p0, p1}, Lcom/zijunlin/Zxing/CaptureFragment;->initCamera(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zijunlin/Zxing/CaptureFragment;->hasSurface:Z

    .line 300
    return-void
.end method
