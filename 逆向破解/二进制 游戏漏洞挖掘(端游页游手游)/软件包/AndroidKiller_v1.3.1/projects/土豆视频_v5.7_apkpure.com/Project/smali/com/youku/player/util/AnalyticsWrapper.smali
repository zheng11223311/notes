.class public Lcom/youku/player/util/AnalyticsWrapper;
.super Ljava/lang/Object;
.source "AnalyticsWrapper.java"


# static fields
.field private static isPlayRequestCalled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adPlayEnd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 177
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p2, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    invoke-static {p1}, Lcom/youku/player/Track;->getAnalyticsVid(Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v0, v3}, Lcom/youku/analytics/AnalyticsAgent;->adPlayEnd(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;)V

    .line 185
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public static adPlayStart(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 163
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p2, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p2, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-static {p1}, Lcom/youku/player/Track;->getAnalyticsVid(Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v2, v3, v0, v1}, Lcom/youku/analytics/AnalyticsAgent;->adPlayStart(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;)V

    .line 173
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 167
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IUserInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static adSkipClick(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "isFullScreen"    # Z

    .prologue
    .line 191
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v5, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const-string/jumbo v0, "vid"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    const-string/jumbo v1, "\u70b9\u51fb\u8df3\u8fc7\u5e7f\u544a"

    if-eqz p2, :cond_1

    const-string/jumbo v2, "\u5927\u5c4f\u64ad\u653e"

    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_2

    const-string/jumbo v4, "y1.player.skipad"

    :goto_1
    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/youku/player/util/AnalyticsWrapper;->pageClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 197
    return-void

    .line 195
    :cond_1
    const-string/jumbo v2, "\u8be6\u60c5\u9875"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "y1.detail.skipad"

    goto :goto_1
.end method

.method public static endSession(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0, p1}, Lcom/youku/analytics/AnalyticsAgent;->endSession(Landroid/app/Activity;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method private static getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IUserInfo;->getNumUserID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAnalyticsOpen()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public static onKillProcess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {p0, p1}, Lcom/youku/analytics/AnalyticsAgent;->onKillProcess(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public static pageClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "refercode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p5, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->getUserID()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/youku/analytics/AnalyticsAgent;->pageClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 110
    :cond_0
    return-void
.end method

.method public static playContinue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "playcode"    # Ljava/lang/String;
    .param p3, "userID"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1, p2, p3}, Lcom/youku/analytics/AnalyticsAgent;->playContinue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static playEnd(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Lcom/youku/analytics/data/PlayActionData$Builder;

    .prologue
    .line 66
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/youku/analytics/AnalyticsAgent;->playEnd(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method public static playHeart(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Lcom/youku/analytics/data/PlayActionData$Builder;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/youku/analytics/AnalyticsAgent;->playHeart(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public static playPause(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/youku/analytics/AnalyticsAgent;->playPause(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "playType"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/youku/analytics/AnalyticsAgent;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/player/util/AnalyticsWrapper;->isPlayRequestCalled:Z

    .line 53
    :cond_0
    return-void
.end method

.method public static playStart(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Lcom/youku/analytics/data/PlayActionData$Builder;

    .prologue
    .line 56
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-boolean v0, Lcom/youku/player/util/AnalyticsWrapper;->isPlayRequestCalled:Z

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/youku/analytics/AnalyticsAgent;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/util/AnalyticsWrapper;->isPlayRequestCalled:Z

    .line 61
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/youku/analytics/AnalyticsAgent;->playStart(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;Ljava/lang/String;)V

    .line 63
    :cond_1
    return-void
.end method

.method public static setCaCheSize(I)V
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 120
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0}, Lcom/youku/analytics/AnalyticsAgent;->setCaCheSize(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public static setCachePersentage(F)V
    .locals 1
    .param p0, "persentage"    # F

    .prologue
    .line 126
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {p0}, Lcom/youku/analytics/AnalyticsAgent;->setCachePersentage(F)V

    .line 129
    :cond_0
    return-void
.end method

.method public static setContinueSessionMillis(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 114
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0, p1}, Lcom/youku/analytics/AnalyticsAgent;->setContinueSessionMillis(J)V

    .line 117
    :cond_0
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .param p0, "debug"    # Z

    .prologue
    .line 43
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0}, Lcom/youku/analytics/AnalyticsAgent;->setDebugMode(Z)V

    .line 46
    :cond_0
    return-void
.end method

.method public static setEventSize(I)V
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 138
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p0}, Lcom/youku/analytics/AnalyticsAgent;->setEventSize(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public static setReportInterval(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 132
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0, p1}, Lcom/youku/analytics/AnalyticsAgent;->setReportInterval(J)V

    .line 135
    :cond_0
    return-void
.end method

.method public static setTrackLocation(Z)V
    .locals 1
    .param p0, "isTrack"    # Z

    .prologue
    .line 144
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/youku/analytics/AnalyticsAgent;->setTrackLocation(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method public static setUserAgent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0, p1}, Lcom/youku/analytics/AnalyticsAgent;->setUserAgent(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method public static startSession(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/youku/analytics/AnalyticsAgent;->startSession(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "userID"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->isAnalyticsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p0, p1, p2, p3, p4}, Lcom/youku/analytics/AnalyticsAgent;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public static trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p4, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/youku/player/util/AnalyticsWrapper;->getUserID()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 103
    return-void
.end method

.method public static vipVideoClick(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;ZZ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "isvip"    # Z
    .param p3, "isFullScreen"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v5, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 205
    const-string v0, "buttonName"

    const-string v1, "buyvideo"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v0, "videoStatus"

    const-string v1, "playbegin"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v0, "vid"

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "isvip"

    if-eqz p2, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->payType:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 210
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    .local v6, "payState":Ljava/lang/StringBuffer;
    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->payType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 212
    .local v7, "size":I
    if-ne v7, v3, :cond_3

    .line 213
    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->payType:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 220
    const-string v0, "payState"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v6    # "payState":Ljava/lang/StringBuffer;
    .end local v7    # "size":I
    :cond_1
    const-string/jumbo v1, "\u70b9\u51fb\u4f1a\u5458\u5f71\u7247\u76f8\u5173\u63a7\u4ef6"

    if-eqz p3, :cond_4

    const-string/jumbo v2, "\u5927\u5c4f\u64ad\u653e"

    :goto_2
    const/4 v3, 0x0

    if-eqz p3, :cond_5

    const-string/jumbo v4, "y1.player.vipVideoClick"

    :goto_3
    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/youku/player/util/AnalyticsWrapper;->pageClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 226
    return-void

    .line 208
    :cond_2
    const-string v0, "0"

    goto :goto_0

    .line 214
    .restart local v6    # "payState":Ljava/lang/StringBuffer;
    .restart local v7    # "size":I
    :cond_3
    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    .line 215
    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->payType:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const-string v0, "-"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->payType:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 224
    .end local v6    # "payState":Ljava/lang/StringBuffer;
    .end local v7    # "size":I
    :cond_4
    const-string/jumbo v2, "\u8be6\u60c5\u9875"

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "y1.detail.vipVideoClick"

    goto :goto_3
.end method
