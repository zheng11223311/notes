.class public Lcom/youku/gamecenter/GameWebViewActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GameWebViewActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/OnGameInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/GameWebViewActivity$6;,
        Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;,
        Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewChromeClient;,
        Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAGE_NAME:Ljava/lang/String; = "\u6d3b\u52a8\u8be6\u60c5"

.field private static final INTERFACE_NAME:Ljava/lang/String; = "gamecenter"

.field private static final TAG:Ljava/lang/String; = "GameWebViewActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field private mProgreBar:Landroid/widget/ProgressBar;

.field private mSource:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 379
    return-void
.end method

.method static synthetic access$1000(Lcom/youku/gamecenter/GameWebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameWebViewActivity;->downloadGameWhenGetGameInfoSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/youku/gamecenter/GameWebViewActivity;Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/gamecenter/GameWebViewActivity;->handleDownloadGame(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/gamecenter/GameWebViewActivity;->handleExtractPrizeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameWebViewActivity;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/youku/gamecenter/GameWebViewActivity;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/GameWebViewActivity;->isCanExtractPrize(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/youku/gamecenter/GameWebViewActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p6}, Lcom/youku/gamecenter/GameWebViewActivity;->handleH5CallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/youku/gamecenter/GameWebViewActivity;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/GameWebViewActivity;->loadLimitDesc(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mProgreBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/GameWebViewActivity;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/gamecenter/GameWebViewActivity;Lcom/youku/gamecenter/data/GameInfoStatus;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p1, "x1"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameWebViewActivity;->getH5ActionButtonStatus(Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/youku/gamecenter/GameWebViewActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameWebViewActivity;->setWebViewButtonStatus(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/youku/gamecenter/GameWebViewActivity;Lcom/youku/gamecenter/data/GameInfoStatus;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p1, "x1"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameWebViewActivity;->transH5ActionButtonStatuNew(Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/GameWebViewActivity;->setDownLoadGameButtonStatus(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private downloadGameWhenGetGameInfoSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 565
    new-instance v0, Lcom/youku/gamecenter/services/GetSimpleGameInfoService;

    iget-object v2, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/youku/gamecenter/services/GetSimpleGameInfoService;-><init>(Landroid/content/Context;)V

    .line 567
    .local v0, "simpleGameInfoService":Lcom/youku/gamecenter/services/GetSimpleGameInfoService;
    invoke-static {p1}, Lcom/youku/gamecenter/services/URLContainer;->getSimpleGameInfoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/youku/gamecenter/GameWebViewActivity$4;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/GameWebViewActivity$4;-><init>(Lcom/youku/gamecenter/GameWebViewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/services/GetSimpleGameInfoService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 585
    return-void
.end method

.method private encryptKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->getExtractPrizeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/gamecenter/util/CommonUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getH5ActionButtonStatus(Lcom/youku/gamecenter/data/GameInfoStatus;)I
    .locals 2
    .param p1, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    .line 216
    sget-object v0, Lcom/youku/gamecenter/GameWebViewActivity$6;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfoStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 231
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 218
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 223
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 225
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 227
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 229
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleDownloadGame(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 589
    const-string v4, ""

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 591
    iget-object v0, p2, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    iget-object v1, p2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameWebViewActivity;->transH5ActionButtonStatuNew(Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/GameWebViewActivity;->setDownLoadGameButtonStatus(Ljava/lang/String;I)V

    .line 593
    return-void
.end method

.method private handleExtractPrizeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prizeId"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-static {p1}, Lcom/youku/gamecenter/services/URLContainer;->getExtractPrizeLimitCountUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/gamecenter/services/GetExtractPrizeConditionService;

    iget-object v2, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/youku/gamecenter/services/GetExtractPrizeConditionService;-><init>(Landroid/content/Context;)V

    .line 455
    .local v0, "getExtractPrizeConditionService":Lcom/youku/gamecenter/services/GetExtractPrizeConditionService;
    new-instance v2, Lcom/youku/gamecenter/GameWebViewActivity$2;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/youku/gamecenter/GameWebViewActivity$2;-><init>(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/services/GetExtractPrizeConditionService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 480
    return-void
.end method

.method private handleH5CallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "callback"    # Ljava/lang/String;
    .param p6, "prizeId"    # Ljava/lang/String;

    .prologue
    .line 546
    invoke-static {p1, p2, p3, p4, p6}, Lcom/youku/gamecenter/util/JsonUtils;->parseH5CallBackJson(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 548
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "GameWebViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleH5CallBack--->json : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/youku/gamecenter/GameWebViewActivity$3;

    invoke-direct {v2, p0, p5, v0}, Lcom/youku/gamecenter/GameWebViewActivity$3;-><init>(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 562
    return-void
.end method

.method private initData(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 99
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string/jumbo v0, "url\u4e3a\u7a7a\uff01"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameWebViewActivity;->showNetTips(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameWebViewActivity;->finish()V

    .line 148
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameWebViewActivity;->showNetTipsAutomatic()V

    .line 107
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameWebViewActivity;->finish()V

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    sget v0, Lcom/youku/gamecenter/R$string;->game_center_tips_use_3g:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameWebViewActivity;->showNetTips(Ljava/lang/String;)V

    .line 116
    :cond_2
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mUrl:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mSource:Ljava/lang/String;

    .line 118
    iput-object v3, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 120
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    sget v0, Lcom/youku/gamecenter/R$string;->game_center_tips_error_url:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameWebViewActivity;->showNetTips(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameWebViewActivity;->finish()V

    goto :goto_0

    .line 126
    :cond_3
    const-string/jumbo v0, "selected_card"

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mBack:Landroid/widget/ImageView;

    sget v1, Lcom/youku/gamecenter/R$drawable;->gamecenter_topbar_close_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    :cond_4
    const-string v0, "gameinfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    const-string v0, "gameinfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    iput-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 134
    invoke-direct {p0}, Lcom/youku/gamecenter/GameWebViewActivity;->initGameInfo()V

    .line 137
    :cond_5
    const-string v0, "GameWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "webView\u5730\u5740: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/youku/gamecenter/GameWebViewActivity;->setWebViewCategoryEvent()V

    .line 141
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;-><init>(Lcom/youku/gamecenter/GameWebViewActivity;)V

    const-string v2, "gamecenter"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;

    invoke-direct {v1, p0, v3}, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;-><init>(Lcom/youku/gamecenter/GameWebViewActivity;Lcom/youku/gamecenter/GameWebViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 146
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewChromeClient;

    invoke-direct {v1, p0, v3}, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewChromeClient;-><init>(Lcom/youku/gamecenter/GameWebViewActivity;Lcom/youku/gamecenter/GameWebViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto/16 :goto_0
.end method

.method private initGameInfo()V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    const-string v1, "GameWebViewActivity"

    const-string v2, " the mGameInfo is null or mGameInfo.packagename is null"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromCache(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 164
    .local v0, "cache":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    iput-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatus(Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0
.end method

.method private isCanExtractPrize(ILjava/lang/String;)Z
    .locals 8
    .param p1, "leastLimitCount"    # I
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 491
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 492
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "games"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 493
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 494
    .local v1, "currentDownloadGamesCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 495
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "pkgName"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v6, v5}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromGameManager(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v6, :cond_0

    .line 498
    add-int/lit8 v1, v1, 0x1

    .line 500
    :cond_0
    if-lt v1, p1, :cond_1

    .line 501
    const/4 v6, 0x1

    .line 508
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "currentDownloadGamesCount":I
    .end local v3    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_1
    return v6

    .line 494
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v1    # "currentDownloadGamesCount":I
    .restart local v3    # "i":I
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "currentDownloadGamesCount":I
    .end local v3    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 505
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 508
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private loadLimitDesc(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "leastLimitCount"    # I
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 516
    const-string v4, "GameWebViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->loadLimitDesc: json = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 520
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    .line 522
    .local v3, "type":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 524
    const-string v4, "appname"

    invoke-static {v2, v4}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "appName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/gamecenter/R$string;->game_h5_can_not_extract_prize_one_game:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 540
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "type":I
    :goto_0
    return-object v4

    .line 532
    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "type":I
    :cond_0
    const-string v4, "GameWebViewActivity"

    const-string v5, "--->loadLimitDesc: type=2, but appname is null!!!"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "type":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/gamecenter/R$string;->game_h5_can_not_extract_prize:I

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "GameWebViewActivity"

    const-string v5, "--->loadLimitDesc error!!!"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setDownLoadGameButtonStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 279
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/youku/gamecenter/GameWebViewActivity$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/gamecenter/GameWebViewActivity$1;-><init>(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setWebViewActivityTitleBar()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 151
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->gameSearch:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGamePresent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameManagerLaunchLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    return-void
.end method

.method private setWebViewButtonStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 266
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 269
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:setActionButtonStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameWebViewActivity"

    const-string v2, " setWebViewButtonStatus error"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setWebViewCategoryEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 601
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 602
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 603
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 604
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 605
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 607
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 609
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 610
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 611
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 612
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 613
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/youku/gamecenter/GameWebViewActivity$5;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameWebViewActivity$5;-><init>(Lcom/youku/gamecenter/GameWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 633
    return-void
.end method

.method private transH5ActionButtonStatuNew(Lcom/youku/gamecenter/data/GameInfoStatus;)I
    .locals 2
    .param p1, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    .line 243
    sget-object v0, Lcom/youku/gamecenter/GameWebViewActivity$6;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfoStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 260
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 245
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 250
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 252
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 254
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 256
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 258
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 301
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 197
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->finish()V

    .line 198
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string/jumbo v0, "\u6d3b\u52a8\u8be6\u60c5"

    return-object v0
.end method

.method protected handleBackButtonPressed()V
    .locals 0

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameWebViewActivity;->finish()V

    .line 310
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iput-object p0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mContext:Landroid/content/Context;

    .line 65
    sget v0, Lcom/youku/gamecenter/R$id;->webView:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 66
    sget v0, Lcom/youku/gamecenter/R$id;->progress:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mProgreBar:Landroid/widget/ProgressBar;

    .line 67
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameWebViewActivity;->initData(Landroid/content/Intent;)V

    .line 69
    invoke-direct {p0}, Lcom/youku/gamecenter/GameWebViewActivity;->setWebViewActivityTitleBar()V

    .line 70
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onDestroy()V

    .line 92
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 93
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "gamecenter"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromCache(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 203
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    iget-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GameWebViewActivity;->transH5ActionButtonStatuNew(Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/youku/gamecenter/GameWebViewActivity;->setDownLoadGameButtonStatus(Ljava/lang/String;I)V

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameWebViewActivity;->getH5ActionButtonStatus(Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameWebViewActivity;->setWebViewButtonStatus(I)V

    .line 213
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameWebViewActivity;->initData(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method protected onPause()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 182
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onPause()V

    .line 184
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 187
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 173
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 177
    :cond_0
    return-void
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_webview_game:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameWebViewActivity;->setContentView(I)V

    .line 80
    return-void
.end method
