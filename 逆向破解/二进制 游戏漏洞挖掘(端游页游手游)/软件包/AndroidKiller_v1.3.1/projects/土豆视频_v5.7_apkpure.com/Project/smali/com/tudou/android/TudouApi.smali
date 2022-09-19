.class public Lcom/tudou/android/TudouApi;
.super Ljava/lang/Object;
.source "TudouApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/android/TudouApi$FileLastModifSort;
    }
.end annotation


# static fields
.field private static CACHEDATA_SIZE:I = 0x0

.field public static final MYTICKETS_SWITCH:Z = true

.field public static final SHARE_DEFAULT_CONTENT:Ljava/lang/String; = "\u6715\u5df2\u9605\uff0c\u7231\u537f\u83ab\u8f9c\u8d1f"

.field public static final VIP_CARD_SWITCH:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    sput v0, Lcom/tudou/android/TudouApi;->CACHEDATA_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/tudou/android/TudouApi;->CACHEDATA_SIZE:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 50
    sput p0, Lcom/tudou/android/TudouApi;->CACHEDATA_SIZE:I

    return p0
.end method

.method public static clearPostList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Poster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/Poster;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 58
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Poster;

    iget-object v1, v1, Lcom/youku/vo/Poster;->img:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Poster;

    iget-object v1, v1, Lcom/youku/vo/Poster;->img:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Poster;

    iget-object v1, v1, Lcom/youku/vo/Poster;->img:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 60
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Poster;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/youku/vo/Poster;->img:Landroid/graphics/Bitmap;

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 65
    return-void
.end method

.method public static connectHttpRequest(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "aHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    .line 73
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, p0, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 74
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 76
    .local v1, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v2, Lcom/tudou/android/TudouApi$1;

    invoke-direct {v2, p1, p0}, Lcom/tudou/android/TudouApi$1;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 119
    return-void
.end method

.method public static declared-synchronized controlUrlCacheFilesSize(Ljava/io/File;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 213
    const-class v1, Lcom/tudou/android/TudouApi;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/tudou/android/TudouApi$3;

    invoke-direct {v0, p0}, Lcom/tudou/android/TudouApi$3;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/tudou/android/TudouApi$3;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit v1

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static formatURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatURL(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isSetCookie"    # Z

    .prologue
    const/4 v4, -0x1

    .line 448
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 449
    .local v2, "urlStr":Ljava/lang/StringBuffer;
    const-string v3, "_t_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 451
    .local v0, "i":I
    if-eq v0, v4, :cond_0

    .line 453
    const-string v3, "&"

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, "j":I
    if-eq v1, v4, :cond_6

    .line 454
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 461
    .end local v1    # "j":I
    :cond_0
    :goto_0
    const-string v3, "_s_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 463
    if-eq v0, v4, :cond_1

    .line 464
    const-string v3, "&"

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "j":I
    if-eq v1, v4, :cond_7

    .line 465
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 471
    .end local v1    # "j":I
    :cond_1
    :goto_1
    const-string/jumbo v3, "ver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 473
    if-eq v0, v4, :cond_2

    .line 474
    const-string v3, "&"

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "j":I
    if-eq v1, v4, :cond_8

    .line 475
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 481
    .end local v1    # "j":I
    :cond_2
    :goto_2
    const-string/jumbo v3, "testcache2"

    invoke-static {v3, p0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v3, "network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 484
    if-eq v0, v4, :cond_3

    .line 485
    const-string v3, "&"

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "j":I
    if-eq v1, v4, :cond_9

    .line 486
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 491
    .end local v1    # "j":I
    :cond_3
    :goto_3
    const-string v3, "operator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 493
    if-eq v0, v4, :cond_4

    .line 494
    const-string v3, "&"

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "j":I
    if-eq v1, v4, :cond_a

    .line 495
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 500
    .end local v1    # "j":I
    :cond_4
    :goto_4
    if-eqz p1, :cond_5

    .line 501
    sget-object v3, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/util/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 456
    .restart local v1    # "j":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 467
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 477
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 488
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 497
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method public static getLocalJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "formatUri":Ljava/lang/String;
    const/4 v0, 0x0

    .line 127
    .local v0, "dataString":Ljava/lang/String;
    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    :try_start_0
    invoke-static {v2}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    const-string v3, "[]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Youku"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method public static getUserPwd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 715
    const-string/jumbo v0, "userhash"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    const-string/jumbo v0, "userhash"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    :goto_0
    return-object v0

    .line 717
    :cond_0
    const-string v0, "loginPassword"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    const-string v0, "loginPassword"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 721
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static goAppExchangeActivity(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string v2, "&guid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const-string v2, "&ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/config/Profile;->VER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const-string v2, "&network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    sget-object v2, Lcom/youku/vo/DeviceInfo;->OPERATOR:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&operator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/vo/DeviceInfo;->OPERATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 630
    .local v0, "appIntent":Landroid/content/Intent;
    const-string v2, "clientName"

    const-string/jumbo v3, "tudou"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string/jumbo v2, "user_agent_youku"

    sget-object v3, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const-string/jumbo v2, "statistics_parameter"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string/jumbo v2, "timestamp_difference"

    sget-wide v4, Lcom/youku/http/TudouURLContainer;->TIMESTAMP:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 634
    const-string v2, "isTestHost"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 635
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 636
    return-void
.end method

.method public static goChannelByid(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2710

    .line 410
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 411
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    const-string v2, "GoDetail"

    const-string v3, "goChannelByid"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 416
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tudou/ui/activity/NewPodcastActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    .local v1, "detailIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 418
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string/jumbo v2, "userid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v2, "from"

    const-string v3, "attention"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 422
    invoke-static {p0, v1, v5}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 425
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "detailIntent":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 426
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    .restart local v1    # "detailIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 428
    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string/jumbo v2, "type"

    sget-object v3, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 431
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-static {p0, v1, v5}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static goDetailById(Landroid/content/Context;Lcom/tudou/android/Youku$Type;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/tudou/android/Youku$Type;
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 283
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 284
    return-void
.end method

.method public static goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V
    .locals 6
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/tudou/android/Youku$Type;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 288
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public static goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/tudou/android/Youku$Type;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "playlistCode"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public static goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/tudou/android/Youku$Type;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "playlistCode"    # Ljava/lang/String;
    .param p5, "vidoebrief"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 301
    return-void
.end method

.method public static goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/tudou/android/Youku$Type;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "playlistCode"    # Ljava/lang/String;
    .param p5, "vidoebrief"    # Ljava/lang/String;
    .param p6, "isFromDanmu"    # Z

    .prologue
    .line 304
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 305
    return-void
.end method

.method public static goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 4
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/tudou/android/Youku$Type;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "playlistCode"    # Ljava/lang/String;
    .param p5, "vidoebrief"    # Ljava/lang/String;
    .param p6, "isFromDanmu"    # Z
    .param p7, "b"    # Landroid/os/Bundle;

    .prologue
    .line 309
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string v1, "goDetail"

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 314
    const-string v1, "GoDetail"

    const-string v2, "goDetailById"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_2
    if-eqz p0, :cond_0

    .line 320
    const-string v1, "GoDetail"

    const-string v2, "goDetailById"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .local v0, "detailIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 323
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 325
    const-string v1, "playlistCode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v1, "extra.from.danmu"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    if-eqz p5, :cond_3

    .line 330
    const-string/jumbo v1, "vidoebrief"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    :cond_3
    if-eqz p7, :cond_4

    .line 333
    invoke-virtual {v0, p7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 335
    :cond_4
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static goDetailFromKuWo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 383
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 399
    :goto_0
    return-void

    .line 387
    :cond_0
    const-string v2, "goDetail"

    const-wide/16 v4, 0x320

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 388
    const-string v2, "GoDetail"

    const-string v3, "goDetailById"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_1
    const-string v2, "GoDetail"

    const-string v3, "goDetailFromKuWo"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 397
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 398
    invoke-static {p0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static goHLSPlay(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 380
    :goto_0
    return-void

    .line 371
    :cond_0
    const-string v1, "goDetail"

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    const-string v1, "GoDetail"

    const-string v2, "goHLSPlay"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/ui/activity/DetailHLSActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v0, "detailIntent":Landroid/content/Intent;
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static goLocalPlayerWithPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "point"    # I

    .prologue
    const/4 v4, 0x1

    .line 640
    const-string v1, "goDetail"

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    :goto_0
    return-void

    .line 643
    :cond_0
    const-string v1, "GoDetail"

    const-string v2, "goLocalPlayerWithPoint"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 645
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 646
    const-string v1, "isFromLocal"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 647
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    const-string v1, "point"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    const-string v1, "intent.extra.force.replay"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 651
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static goPlayerWithpoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "point"    # I
    .param p4, "type"    # Lcom/tudou/android/Youku$Type;
    .param p5, "lang"    # Ljava/lang/String;
    .param p6, "playListCode"    # Ljava/lang/String;

    .prologue
    .line 665
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    const v1, 0x7f0d00c8

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 685
    :goto_0
    return-void

    .line 669
    :cond_0
    const-string v1, "GoDetail"

    const-string v2, "goPlayerWithpoint"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 671
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 672
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v1, "point"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 676
    const-string v1, "lang"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 678
    const-string v1, "playlistCode"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 681
    const-string v1, "language"

    invoke-static {v1, p5}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_2
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static goPlayerWithvideoStage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "videoStage"    # I

    .prologue
    .line 688
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tudou/android/TudouApi;->goPlayerWithvideoStage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 689
    return-void
.end method

.method public static goPlayerWithvideoStage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "videoStage"    # I
    .param p4, "playListCode"    # Ljava/lang/String;

    .prologue
    .line 692
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 704
    :goto_0
    return-void

    .line 696
    :cond_0
    const-string v1, "GoDetail"

    const-string v2, "goPlayerWithvideoStage"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 698
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 699
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    const-string/jumbo v1, "video_stage"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 702
    const-string v1, "playlistCode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static goPodcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 363
    :goto_0
    return-void

    .line 351
    :cond_0
    const-string v1, "goDetail"

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 352
    const-string v1, "GoDetail"

    const-string v2, "goDetailById"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/ui/activity/NewPodcastActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v0, "detailIntent":Landroid/content/Intent;
    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v1, "from"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .local v4, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/tudou/android/Youku;->URLCacheDataPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v6, "utf-8"

    invoke-direct {v2, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 195
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 198
    .local v3, "read":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 199
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static declared-synchronized saveUrlCacheToLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    const-class v1, Lcom/tudou/android/TudouApi;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/tudou/android/TudouApi$2;

    invoke-direct {v0, p0, p1}, Lcom/tudou/android/TudouApi$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tudou/android/TudouApi$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit v1

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static shareOther(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .param p4, "summary"    # Ljava/lang/String;
    .param p5, "shareType"    # I

    .prologue
    const/16 v4, 0x23

    .line 578
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    const-string/jumbo v2, "\u5206\u4eab\u5730\u5740\u4e3a\u7a7a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 594
    :goto_0
    return-void

    .line 582
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p4, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 586
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 587
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "videoTitle"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string/jumbo v2, "videoUrl"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v2, "picUrl"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string/jumbo v2, "summary"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string/jumbo v2, "shareType"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 592
    new-instance v1, Lcom/tudou/ui/activity/BindActivity;

    invoke-direct {v1, p0, p0, v0}, Lcom/tudou/ui/activity/BindActivity;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 593
    .local v1, "dilog":Lcom/tudou/ui/activity/BindActivity;
    invoke-virtual {v1}, Lcom/tudou/ui/activity/BindActivity;->show()V

    goto :goto_0
.end method

.method public static shareUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .param p4, "summary"    # Ljava/lang/String;

    .prologue
    .line 603
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    const-string/jumbo v2, "\u5206\u4eab\u5730\u5740\u4e3a\u7a7a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 615
    :goto_0
    return-void

    .line 607
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 608
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "videoTitle"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string/jumbo v2, "videoUrl"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string/jumbo v2, "shareType"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    const-string v2, "picUrl"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string/jumbo v2, "summary"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v1, Lcom/tudou/ui/activity/BindActivity;

    invoke-direct {v1, p0, p0, v0}, Lcom/tudou/ui/activity/BindActivity;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 614
    .local v1, "dilog":Lcom/tudou/ui/activity/BindActivity;
    invoke-virtual {v1}, Lcom/tudou/ui/activity/BindActivity;->show()V

    goto :goto_0
.end method

.method public static shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;J)Lcom/tudou/ui/activity/BindActivity;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoTitle"    # Ljava/lang/String;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "itemCode"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;
    .param p5, "summary"    # Ljava/lang/String;
    .param p6, "shareType"    # I
    .param p7, "state"    # Z
    .param p8, "channel_nema"    # Ljava/lang/String;
    .param p9, "shortDes"    # Ljava/lang/String;
    .param p10, "imgUrl"    # Ljava/lang/String;
    .param p11, "isUGC"    # Z
    .param p12, "isDanmu"    # Z
    .param p13, "cid"    # Ljava/lang/String;
    .param p14, "eachTitle"    # Ljava/lang/String;
    .param p15, "playCount"    # J

    .prologue
    .line 514
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 515
    const-string/jumbo v3, "\u89c6\u9891\u64ad\u653e\u5730\u5740\u5c1a\u672a\u53d6\u5f97\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 518
    const/4 v2, 0x0

    .line 548
    :goto_0
    return-object v2

    .line 520
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    if-le v3, v4, :cond_1

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x23

    invoke-virtual {p5, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 525
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 526
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "videoTitle"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string/jumbo v3, "videoUrl"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v3, "itemCode"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v3, "picUrl"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string/jumbo v3, "summary"

    invoke-virtual {v1, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string/jumbo v3, "shareType"

    invoke-virtual {v1, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 533
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 534
    const-string/jumbo p9, "\u6715\u5df2\u9605\uff0c\u7231\u537f\u83ab\u8f9c\u8d1f"

    .line 536
    :cond_2
    const-string/jumbo v3, "shortDes"

    move-object/from16 v0, p9

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v3, "imgUrl"

    move-object/from16 v0, p10

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v3, "isUGC"

    move/from16 v0, p11

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 539
    const-string v3, "isDanmu"

    move/from16 v0, p12

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 541
    const-string v3, "cid"

    move-object/from16 v0, p13

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v3, "eachTitle"

    move-object/from16 v0, p14

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v3, "playCount"

    invoke-static/range {p15 .. p16}, Lcom/youku/util/Util;->formatNumber(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    new-instance v2, Lcom/tudou/ui/activity/BindActivity;

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v2, p0, v3, v1}, Lcom/tudou/ui/activity/BindActivity;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 547
    .local v2, "dilog":Lcom/tudou/ui/activity/BindActivity;
    invoke-virtual {v2}, Lcom/tudou/ui/activity/BindActivity;->show()V

    goto/16 :goto_0
.end method

.method public static shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoTitle"    # Ljava/lang/String;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "itemCode"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;
    .param p5, "summary"    # Ljava/lang/String;
    .param p6, "shareType"    # I
    .param p7, "state"    # Z
    .param p8, "channel_nema"    # Ljava/lang/String;
    .param p9, "shortDes"    # Ljava/lang/String;
    .param p10, "imgUrl"    # Ljava/lang/String;
    .param p11, "isUGC"    # Z
    .param p12, "cid"    # Ljava/lang/String;
    .param p13, "eachTitle"    # Ljava/lang/String;
    .param p14, "playCount"    # J

    .prologue
    .line 572
    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-wide/from16 v16, p14

    invoke-static/range {v1 .. v17}, Lcom/tudou/android/TudouApi;->shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;J)Lcom/tudou/ui/activity/BindActivity;

    .line 573
    return-void
.end method

.method public static shareWord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tudou/videoshare/ShareTextDialog;
    .locals 3
    .param p0, "aContext"    # Landroid/app/Activity;
    .param p1, "shareWord"    # Ljava/lang/String;
    .param p2, "roomId"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "vid"    # Ljava/lang/String;

    .prologue
    .line 557
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 558
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "share_word"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string/jumbo v2, "room_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string/jumbo v2, "vid"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    new-instance v1, Lcom/tudou/videoshare/ShareTextDialog;

    invoke-direct {v1, p0, p0, v0}, Lcom/tudou/videoshare/ShareTextDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 564
    .local v1, "dialog":Lcom/tudou/videoshare/ShareTextDialog;
    invoke-virtual {v1}, Lcom/tudou/videoshare/ShareTextDialog;->show()V

    .line 565
    return-object v1
.end method
