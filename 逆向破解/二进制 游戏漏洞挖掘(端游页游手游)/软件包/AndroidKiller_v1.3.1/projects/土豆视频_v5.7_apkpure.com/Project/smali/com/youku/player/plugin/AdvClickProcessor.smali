.class public Lcom/youku/player/plugin/AdvClickProcessor;
.super Ljava/lang/Object;
.source "AdvClickProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDUE(Lcom/youku/player/goplay/AdvInfo;)[Ljava/lang/String;
    .locals 6
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/youku/player/goplay/AdvInfo;->DUE:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/youku/player/goplay/AdvInfo;->DUE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 152
    :cond_0
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v4, "AdvClickProcessor ------> getDUE : null"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 155
    :cond_1
    iget-object v3, p1, Lcom/youku/player/goplay/AdvInfo;->DUE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 156
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .line 157
    .local v0, "endTrack":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 158
    iget-object v3, p1, Lcom/youku/player/goplay/AdvInfo;->DUE:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/player/goplay/Stat;

    iget-object v3, v3, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    :cond_2
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdvClickProcessor ------> getDUE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDUS(Lcom/youku/player/goplay/AdvInfo;)[Ljava/lang/String;
    .locals 6
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 134
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/youku/player/goplay/AdvInfo;->DUS:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/youku/player/goplay/AdvInfo;->DUS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 135
    :cond_0
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v4, "AdvClickProcessor ------> getDUS : null"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x0

    .line 144
    :goto_0
    return-object v2

    .line 138
    :cond_1
    iget-object v3, p1, Lcom/youku/player/goplay/AdvInfo;->DUS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 139
    .local v1, "size":I
    new-array v2, v1, [Ljava/lang/String;

    .line 140
    .local v2, "startTrack":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 141
    iget-object v3, p1, Lcom/youku/player/goplay/AdvInfo;->DUS:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/player/goplay/Stat;

    iget-object v3, v3, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_2
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdvClickProcessor ------> getDUS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showYoukuWebView(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    sget v3, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v4, 0x2711

    if-ne v3, v4, :cond_0

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.youku.action.YoukuWebview"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v3, "isAdver"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 123
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .local v1, "it":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public processAdvClick(Landroid/app/Activity;Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 11
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p3, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget v0, p3, Lcom/youku/player/goplay/AdvInfo;->CUF:I

    .line 32
    .local v0, "adForward":I
    invoke-static {p3, p2}, Lcom/youku/player/util/AdUtil;->isDownloadAPK(Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDownloadApk:Lcom/youku/player/apiservice/IDownloadApk;

    if-eqz v7, :cond_3

    .line 33
    const/4 v7, 0x6

    if-ne v0, v7, :cond_2

    .line 34
    sget-object v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDownloadApk:Lcom/youku/player/apiservice/IDownloadApk;

    iget-object v8, p3, Lcom/youku/player/goplay/AdvInfo;->CU:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/youku/player/plugin/AdvClickProcessor;->getDUS(Lcom/youku/player/goplay/AdvInfo;)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p3}, Lcom/youku/player/plugin/AdvClickProcessor;->getDUE(Lcom/youku/player/goplay/AdvInfo;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lcom/youku/player/apiservice/IDownloadApk;->downloadApkById(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_2
    sget-object v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDownloadApk:Lcom/youku/player/apiservice/IDownloadApk;

    invoke-direct {p0, p3}, Lcom/youku/player/plugin/AdvClickProcessor;->getDUS(Lcom/youku/player/goplay/AdvInfo;)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p3}, Lcom/youku/player/plugin/AdvClickProcessor;->getDUE(Lcom/youku/player/goplay/AdvInfo;)[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, p2, v8, v9}, Lcom/youku/player/apiservice/IDownloadApk;->downloadApk(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_3
    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/player/config/MediaPlayerConfiguration;->showAdWebView()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 40
    sget v7, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v8, 0x2711

    if-ne v7, v8, :cond_4

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/AdvClickProcessor;->showYoukuWebView(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/youku/player/ad/AdWebViewActivity;

    invoke-direct {v3, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "url"

    invoke-virtual {v3, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v7, 0x2

    if-ne v0, v7, :cond_7

    .line 50
    :try_start_0
    const-string/jumbo v7, "u="

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 51
    .local v5, "start":I
    const-string v7, "&"

    invoke-virtual {p2, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 53
    .local v1, "end":I
    if-lez v1, :cond_6

    .line 54
    add-int/lit8 v7, v5, 0x2

    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "id":Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 59
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/youku/player/config/MediaPlayerConfiguration;->getDetailActivityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string/jumbo v7, "video_id"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 63
    .end local v1    # "end":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "start":I
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 56
    .restart local v1    # "end":I
    .restart local v5    # "start":I
    :cond_6
    add-int/lit8 v7, v5, 0x2

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_1

    .line 64
    .end local v1    # "end":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "start":I
    :catchall_0
    move-exception v7

    throw v7

    .line 66
    :cond_7
    const/4 v7, 0x5

    if-ne v0, v7, :cond_9

    .line 67
    sget-boolean v7, Lcom/youku/player/ad/AdTaeSDK;->isInitTaeSDK:Z

    if-eqz v7, :cond_8

    .line 68
    invoke-static {p1, p2}, Lcom/youku/player/ad/AdTaeSDK;->showPage(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/AdvClickProcessor;->showYoukuWebView(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :cond_9
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 74
    .local v6, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .local v4, "it":Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public trueViewAdvPlayClicked(Landroid/app/Activity;Lcom/youku/player/goplay/AdvInfo;I)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p3, "point"    # I

    .prologue
    .line 85
    sget-object v3, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    const-string v4, "------> trueViewAdvPlayClicked() "

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz p2, :cond_0

    iget-object v3, p2, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v3, v3, Lcom/youku/player/goplay/EventMonitor;->VIEW:Lcom/youku/player/goplay/EMView;

    if-nez v3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v3, p2, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v3, v3, Lcom/youku/player/goplay/EventMonitor;->VIEW:Lcom/youku/player/goplay/EMView;

    iget-object v1, v3, Lcom/youku/player/goplay/EMView;->CU:Ljava/lang/String;

    .line 90
    .local v1, "url":Ljava/lang/String;
    iget-object v3, p2, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v3, v3, Lcom/youku/player/goplay/EventMonitor;->VIEW:Lcom/youku/player/goplay/EMView;

    iget-object v2, v3, Lcom/youku/player/goplay/EMView;->VID:Ljava/lang/String;

    .line 91
    .local v2, "vid":Ljava/lang/String;
    sget-object v3, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v3, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "point : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 95
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/player/config/MediaPlayerConfiguration;->getDetailActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string/jumbo v3, "video_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v3, "point"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v3

    throw v3

    .line 104
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/youku/player/plugin/AdvClickProcessor;->showYoukuWebView(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
