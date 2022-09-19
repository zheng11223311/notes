.class Lcom/tudou/android/Youku$10;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/Youku;->excuteInitTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/Youku;

.field final synthetic val$mInitStartTime:J


# direct methods
.method constructor <init>(Lcom/tudou/android/Youku;J)V
    .locals 0

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    iput-wide p2, p0, Lcom/tudou/android/Youku$10;->val$mInitStartTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setHttpTimeout(Lcom/youku/vo/Initial;)V
    .locals 2
    .param p1, "initial"    # Lcom/youku/vo/Initial;

    .prologue
    .line 1514
    invoke-virtual {p1}, Lcom/youku/vo/Initial;->getNonWifiConnectTimeOut()I

    move-result v0

    if-lez v0, :cond_0

    .line 1515
    invoke-virtual {p1}, Lcom/youku/vo/Initial;->getNonWifiConnectTimeOut()I

    move-result v0

    sput v0, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_3G:I

    .line 1516
    const-string v0, "HTTP_CONNECT_TIMEOUT_3G"

    sget v1, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_3G:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;I)V

    .line 1518
    :cond_0
    invoke-virtual {p1}, Lcom/youku/vo/Initial;->getNonWifiReadTimeOut()I

    move-result v0

    if-lez v0, :cond_1

    .line 1519
    invoke-virtual {p1}, Lcom/youku/vo/Initial;->getNonWifiReadTimeOut()I

    move-result v0

    sput v0, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_3G:I

    .line 1520
    const-string v0, "HTTP_READ_TIMEOUT_3G"

    sget v1, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_3G:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;I)V

    .line 1523
    :cond_1
    invoke-virtual {p1}, Lcom/youku/vo/Initial;->getWifiConnectTimeOut()I

    move-result v0

    if-lez v0, :cond_2

    .line 1524
    invoke-virtual {p1}, Lcom/youku/vo/Initial;->getWifiConnectTimeOut()I

    move-result v0

    sput v0, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_WIFI:I

    .line 1525
    const-string v0, "HTTP_CONNECT_TIMEOUT_WIFI"

    sget v1, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_WIFI:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;I)V

    .line 1528
    :cond_2
    invoke-virtual {p1}, Lcom/youku/vo/Initial;->getWifiReadTimeOut()I

    move-result v0

    if-lez v0, :cond_3

    .line 1529
    invoke-virtual {p1}, Lcom/youku/vo/Initial;->getWifiReadTimeOut()I

    move-result v0

    sput v0, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_WIFI:I

    .line 1530
    const-string v0, "HTTP_READ_TIMEOUT_WIFI"

    sget v1, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_WIFI:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;I)V

    .line 1532
    :cond_3
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 7
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1536
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u521d\u59cb\u5316\u63a5\u53e3\u8bf7\u6c42\u5931\u8d25======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "========\u7528\u65f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tudou/android/Youku$10;->val$mInitStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v1, "detail.comment.url"

    invoke-static {v0, v1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v1, "detail.comment.url"

    const-string v2, "http://www.tudou.com/comments/uploadpic.do"

    invoke-static {v0, v1, v2}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v1, "detail.videorecord.share.title"

    invoke-static {v0, v1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1541
    iget-object v0, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v1, "detail.videorecord.share.title"

    const-string/jumbo v2, "\u6211\u5f55\u5236\u4e86\u4e00\u6bb5\u7cbe\u5f69\u89c6\u9891\uff0c\u4e0d\u770b\u540e\u6094\u54e6"

    invoke-static {v0, v1, v2}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1543
    :cond_1
    iget-object v0, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v1, "detail.videorecord.share.content"

    invoke-static {v0, v1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1544
    iget-object v0, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v1, "detail.videorecord.share.content"

    const-string/jumbo v2, "\u7cbe\u5f69\u7247\u6bb5\u6765\u81ea\u4e8e\u3010title\u3011"

    invoke-static {v0, v1, v2}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1546
    :cond_2
    iget-object v0, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v1, "detail.player.u.plus.enable"

    invoke-static {v0, v1, v6}, Lcom/tudou/detail/DetailSettings$DetailProp;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1547
    iget-object v0, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v1, "detail.videorecord.max.duration"

    invoke-static {v0, v1, v6}, Lcom/tudou/detail/DetailSettings$DetailProp;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 1548
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 14
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1456
    :try_start_0
    const-string v4, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u521d\u59cb\u5316\u63a5\u53e3\u8fd4\u56de\u6570\u636e\u6210\u529f======"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=====\u7528\u65f6\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/tudou/android/Youku$10;->val$mInitStartTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    new-instance v4, Lcom/youku/vo/Initial;

    invoke-direct {v4}, Lcom/youku/vo/Initial;-><init>()V

    invoke-virtual {p1, v4}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/Initial;

    sput-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    .line 1458
    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-wide v8, v4, Lcom/youku/vo/Initial;->server_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    sub-long/2addr v8, v10

    sput-wide v8, Lcom/youku/http/TudouURLContainer;->TIMESTAMP:J

    .line 1459
    const-string v4, "6b72db72a6639e1d5a2488ed485192f6"

    sget-wide v8, Lcom/youku/http/TudouURLContainer;->TIMESTAMP:J

    invoke-static {v4, v8, v9}, Lcom/youku/gamecenter/services/URLContainer;->initSecureDatas(Ljava/lang/String;J)V

    .line 1460
    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget v4, v4, Lcom/youku/vo/Initial;->app_market_control:I

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/tudou/android/Youku;->isApp_market_control:Z

    .line 1461
    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v4, v4, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v4, v4, Lcom/youku/vo/Initial$AllSwitchs;->game_switch:I

    if-ne v4, v5, :cond_6

    move v4, v5

    :goto_1
    sput-boolean v4, Lcom/tudou/android/Youku;->isGame_Show:Z

    .line 1462
    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v4, v4, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v4, v4, Lcom/youku/vo/Initial$AllSwitchs;->kuwo:I

    if-ne v4, v5, :cond_7

    move v4, v5

    :goto_2
    sput-boolean v4, Lcom/tudou/android/Youku;->isKuwo_show:Z

    .line 1463
    sget-object v4, Lcom/tudou/ui/fragment/SearchTudouFragment;->MINITIAL_SEARCH_WORD:Ljava/lang/String;

    sget-object v7, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v7, v7, Lcom/youku/vo/Initial;->search_word:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    invoke-direct {p0, v4}, Lcom/tudou/android/Youku$10;->setHttpTimeout(Lcom/youku/vo/Initial;)V

    .line 1465
    const-string v4, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u521d\u59cb\u5316\u63a5\u53e3\u8fd4\u56de\u6570\u636e\u6210\u529f======"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget v8, v8, Lcom/youku/vo/Initial;->player_qxd_switch:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    const-string v4, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u521d\u59cb\u5316\u63a5\u53e3\u8fd4\u56de\u6570\u636e\u6210\u529f======"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v8, v8, Lcom/youku/vo/Initial;->comment_pic_url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    const-string v4, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u521d\u59cb\u5316\u63a5\u53e3\u8fd4\u56de\u6570\u636e\u6210\u529f======"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget v8, v8, Lcom/youku/vo/Initial;->record_time:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget v4, v4, Lcom/youku/vo/Initial;->record_time:I

    if-nez v4, :cond_0

    .line 1469
    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    const/16 v7, 0xa

    iput v7, v4, Lcom/youku/vo/Initial;->record_time:I

    .line 1473
    :cond_0
    iget-object v7, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v8, "detail.player.u.plus.enable"

    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget v4, v4, Lcom/youku/vo/Initial;->player_qxd_switch:I

    if-ne v4, v5, :cond_8

    move v4, v5

    :goto_3
    invoke-static {v7, v8, v4}, Lcom/tudou/detail/DetailSettings$DetailProp;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1474
    iget-object v4, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v7, "detail.comment.url"

    sget-object v8, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v8, v8, Lcom/youku/vo/Initial;->comment_pic_url:Ljava/lang/String;

    invoke-static {v4, v7, v8}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1475
    iget-object v4, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v7, "detail.videorecord.max.duration"

    sget-object v8, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget v8, v8, Lcom/youku/vo/Initial;->record_time:I

    mul-int/lit16 v8, v8, 0x3e8

    invoke-static {v4, v7, v8}, Lcom/tudou/detail/DetailSettings$DetailProp;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1478
    :try_start_1
    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v4, v4, Lcom/youku/vo/Initial;->share_document:Lcom/youku/vo/Initial$ShareDocument;

    iget-object v4, v4, Lcom/youku/vo/Initial$ShareDocument;->entrance:Lcom/youku/vo/Entrance;

    iget-object v4, v4, Lcom/youku/vo/Entrance;->video_cut:Lcom/youku/vo/PhotoCut;

    iget-object v3, v4, Lcom/youku/vo/PhotoCut;->title:Ljava/lang/String;

    .line 1479
    .local v3, "title":Ljava/lang/String;
    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v4, v4, Lcom/youku/vo/Initial;->share_document:Lcom/youku/vo/Initial$ShareDocument;

    iget-object v4, v4, Lcom/youku/vo/Initial$ShareDocument;->entrance:Lcom/youku/vo/Entrance;

    iget-object v4, v4, Lcom/youku/vo/Entrance;->video_cut:Lcom/youku/vo/PhotoCut;

    invoke-virtual {v4}, Lcom/youku/vo/PhotoCut;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 1480
    .local v0, "content":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1481
    const-string/jumbo v3, "\u6211\u5f55\u5236\u4e86\u4e00\u6bb5\u7cbe\u5f69\u89c6\u9891\uff0c\u4e0d\u770b\u540e\u6094\u54e6"

    .line 1483
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1484
    const-string/jumbo v0, "\u7cbe\u5f69\u7247\u6bb5\u6765\u81ea\u4e8e\u3010title\u3011"

    .line 1486
    :cond_2
    iget-object v4, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v7, "detail.videorecord.share.title"

    invoke-static {v4, v7, v3}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1487
    iget-object v4, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v7, "detail.videorecord.share.content"

    invoke-static {v4, v7, v0}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1496
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_3
    :goto_4
    :try_start_2
    const-string/jumbo v4, "test1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSuccess isGame_Show = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/tudou/android/Youku;->isGame_Show:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string/jumbo v4, "soft_decoder_disable"

    invoke-static {v4}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1498
    .local v2, "soft_decoder_disable":Z
    if-nez v2, :cond_b

    .line 1499
    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-boolean v4, v4, Lcom/youku/vo/Initial;->soft_decoder:Z

    sput-boolean v4, Lcom/tudou/android/Youku;->isCloudSoftDecoderEnable:Z

    .line 1500
    const-string/jumbo v7, "soft_decoder_disable"

    sget-boolean v4, Lcom/tudou/android/Youku;->isCloudSoftDecoderEnable:Z

    if-nez v4, :cond_a

    move v4, v5

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1501
    sget-boolean v4, Lcom/tudou/android/Youku;->isCloudSoftDecoderEnable:Z

    if-nez v4, :cond_4

    .line 1502
    const/4 v4, 0x0

    sput-boolean v4, Lcom/tudou/android/Youku;->isHighEnd:Z

    .line 1507
    :cond_4
    :goto_6
    invoke-static {}, Lcom/tudou/ui/activity/WelcomeActivity;->loadStartImage()V

    .line 1511
    .end local v2    # "soft_decoder_disable":Z
    :goto_7
    return-void

    :cond_5
    move v4, v6

    .line 1460
    goto/16 :goto_0

    :cond_6
    move v4, v6

    .line 1461
    goto/16 :goto_1

    :cond_7
    move v4, v6

    .line 1462
    goto/16 :goto_2

    :cond_8
    move v4, v6

    .line 1473
    goto/16 :goto_3

    .line 1488
    :catch_0
    move-exception v1

    .line 1489
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v7, "detail.videorecord.share.title"

    invoke-static {v4, v7}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1490
    iget-object v4, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v7, "detail.videorecord.share.title"

    const-string/jumbo v8, "\u6211\u5f55\u5236\u4e86\u4e00\u6bb5\u7cbe\u5f69\u89c6\u9891\uff0c\u4e0d\u770b\u540e\u6094\u54e6"

    invoke-static {v4, v7, v8}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1492
    :cond_9
    iget-object v4, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v7, "detail.videorecord.share.content"

    invoke-static {v4, v7}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1493
    iget-object v4, p0, Lcom/tudou/android/Youku$10;->this$0:Lcom/tudou/android/Youku;

    const-string v7, "detail.videorecord.share.content"

    const-string/jumbo v8, "\u7cbe\u5f69\u7247\u6bb5\u6765\u81ea\u4e8e\u3010title\u3011"

    invoke-static {v4, v7, v8}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 1508
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1509
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u521d\u59cb\u5316\u63a5\u53e3\u6570\u636e\u8f6c\u4e49\u5f02\u5e38======"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    const-string v4, "null"

    :goto_8
    invoke-static {v5, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "soft_decoder_disable":Z
    :cond_a
    move v4, v6

    .line 1500
    goto :goto_5

    .line 1505
    :cond_b
    const/4 v4, 0x0

    :try_start_3
    sput-boolean v4, Lcom/tudou/android/Youku;->isHighEnd:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 1509
    .end local v2    # "soft_decoder_disable":Z
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_8
.end method
