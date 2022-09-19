.class public Lcom/youku/player/goplay/GetVideoAdvService;
.super Ljava/lang/Object;
.source "GetVideoAdvService.java"

# interfaces
.implements Lcom/youku/player/service/NetService;


# instance fields
.field getAdvCallBack:Lcom/youku/player/goplay/IGetAdvCallBack;

.field private handler:Landroid/os/Handler;

.field private isGetADVideo:Z

.field private mAdVideoGetTime:J

.field mContext:Landroid/content/Context;

.field private mVid:Ljava/lang/String;

.field private mVideoInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method public constructor <init>(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 1
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/youku/player/goplay/GetVideoAdvService$1;

    invoke-direct {v0, p0}, Lcom/youku/player/goplay/GetVideoAdvService$1;-><init>(Lcom/youku/player/goplay/GetVideoAdvService;)V

    iput-object v0, p0, Lcom/youku/player/goplay/GetVideoAdvService;->handler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/youku/player/goplay/GetVideoAdvService;->mVideoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/goplay/GetVideoAdvService;)J
    .locals 2
    .param p0, "x0"    # Lcom/youku/player/goplay/GetVideoAdvService;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/youku/player/goplay/GetVideoAdvService;->mAdVideoGetTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/youku/player/goplay/GetVideoAdvService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/goplay/GetVideoAdvService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/player/goplay/GetVideoAdvService;->mVid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/goplay/GetVideoAdvService;)Lcom/youku/player/module/VideoUrlInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/goplay/GetVideoAdvService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/player/goplay/GetVideoAdvService;->mVideoInfo:Lcom/youku/player/module/VideoUrlInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/goplay/GetVideoAdvService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/goplay/GetVideoAdvService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/youku/player/goplay/GetVideoAdvService;->isGetADVideo:Z

    return v0
.end method


# virtual methods
.method public getVideoAdv(Lcom/youku/player/ad/AdGetInfo;Landroid/content/Context;Lcom/youku/player/goplay/IGetAdvCallBack;)V
    .locals 8
    .param p1, "adGetInfo"    # Lcom/youku/player/ad/AdGetInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "getAdvCallBack"    # Lcom/youku/player/goplay/IGetAdvCallBack;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 59
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v3, p1, Lcom/youku/player/ad/AdGetInfo;->vid:Ljava/lang/String;

    iput-object v3, p0, Lcom/youku/player/goplay/GetVideoAdvService;->mVid:Ljava/lang/String;

    .line 63
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/player/goplay/GetVideoAdvService;->mContext:Landroid/content/Context;

    .line 64
    iget v3, p1, Lcom/youku/player/ad/AdGetInfo;->position:I

    const/16 v6, 0xa

    if-eq v3, v6, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/youku/player/goplay/GetVideoAdvService;->isGetADVideo:Z

    .line 65
    iput-object p3, p0, Lcom/youku/player/goplay/GetVideoAdvService;->getAdvCallBack:Lcom/youku/player/goplay/IGetAdvCallBack;

    .line 67
    invoke-static {p1, p2}, Lcom/youku/player/util/URLContainer;->getVideoAdv(Lcom/youku/player/ad/AdGetInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "url":Ljava/lang/String;
    iget v3, p1, Lcom/youku/player/ad/AdGetInfo;->position:I

    const/4 v6, 0x7

    if-ne v3, v6, :cond_2

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youku/player/goplay/GetVideoAdvService;->mAdVideoGetTime:J

    .line 70
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u524d\u8d34\u5e7f\u544a\u8bf7\u6c42\u5730\u5740url-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_2
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v6, "user_agent"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "userAgent":Ljava/lang/String;
    new-instance v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;

    invoke-direct {v0, v1, v2}, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, "getVideoAdv":Lcom/youku/player/goplay/TaskGetVideoAdvUrl;
    invoke-virtual {v0, v4}, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->setSuccess(I)V

    .line 81
    invoke-virtual {v0, v5}, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->setFail(I)V

    .line 82
    new-array v3, v4, [Landroid/os/Handler;

    iget-object v4, p0, Lcom/youku/player/goplay/GetVideoAdvService;->handler:Landroid/os/Handler;

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->execute([Ljava/lang/Object;)Lcom/baseproject/network/YoukuAsyncTask;

    goto :goto_0

    .end local v0    # "getVideoAdv":Lcom/youku/player/goplay/TaskGetVideoAdvUrl;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "userAgent":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 64
    goto :goto_1

    .line 71
    .restart local v1    # "url":Ljava/lang/String;
    :cond_2
    iget v3, p1, Lcom/youku/player/ad/AdGetInfo;->position:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youku/player/goplay/GetVideoAdvService;->mAdVideoGetTime:J

    .line 73
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u4e2d\u63d2\u5e7f\u544a\u8bf7\u6c42\u5730\u5740url-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 75
    :cond_3
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6682\u505c\u5e7f\u544a\u8bf7\u6c42\u5730\u5740url-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getVideoAdv(Lcom/youku/player/ad/AdGetInfo;Landroid/content/Context;Ljava/lang/String;Lcom/youku/player/goplay/IGetAdvCallBack;)V
    .locals 8
    .param p1, "adGetInfo"    # Lcom/youku/player/ad/AdGetInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "adext"    # Ljava/lang/String;
    .param p4, "getAdvCallBack"    # Lcom/youku/player/goplay/IGetAdvCallBack;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 87
    if-nez p1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v3, p1, Lcom/youku/player/ad/AdGetInfo;->vid:Ljava/lang/String;

    iput-object v3, p0, Lcom/youku/player/goplay/GetVideoAdvService;->mVid:Ljava/lang/String;

    .line 91
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/player/goplay/GetVideoAdvService;->mContext:Landroid/content/Context;

    .line 92
    iget v3, p1, Lcom/youku/player/ad/AdGetInfo;->position:I

    const/16 v6, 0xa

    if-eq v3, v6, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/youku/player/goplay/GetVideoAdvService;->isGetADVideo:Z

    .line 93
    iput-object p4, p0, Lcom/youku/player/goplay/GetVideoAdvService;->getAdvCallBack:Lcom/youku/player/goplay/IGetAdvCallBack;

    .line 95
    invoke-static {p1, p2, p3}, Lcom/youku/player/util/URLContainer;->getVideoAdv(Lcom/youku/player/ad/AdGetInfo;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "url":Ljava/lang/String;
    iget v3, p1, Lcom/youku/player/ad/AdGetInfo;->position:I

    const/4 v6, 0x7

    if-ne v3, v6, :cond_2

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youku/player/goplay/GetVideoAdvService;->mAdVideoGetTime:J

    .line 98
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u524d\u8d34\u5e7f\u544a\u8bf7\u6c42\u5730\u5740url-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_2
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v6, "user_agent"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "userAgent":Ljava/lang/String;
    new-instance v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;

    invoke-direct {v0, v1, v2}, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v0, "getVideoAdv":Lcom/youku/player/goplay/TaskGetVideoAdvUrl;
    invoke-virtual {v0, v4}, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->setSuccess(I)V

    .line 108
    invoke-virtual {v0, v5}, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->setFail(I)V

    .line 109
    new-array v3, v4, [Landroid/os/Handler;

    iget-object v4, p0, Lcom/youku/player/goplay/GetVideoAdvService;->handler:Landroid/os/Handler;

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->execute([Ljava/lang/Object;)Lcom/baseproject/network/YoukuAsyncTask;

    goto :goto_0

    .end local v0    # "getVideoAdv":Lcom/youku/player/goplay/TaskGetVideoAdvUrl;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "userAgent":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 92
    goto :goto_1

    .line 99
    .restart local v1    # "url":Ljava/lang/String;
    :cond_2
    iget v3, p1, Lcom/youku/player/ad/AdGetInfo;->position:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3

    .line 100
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u4e2d\u63d2\u5e7f\u544a\u8bf7\u6c42\u5730\u5740url-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 102
    :cond_3
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6682\u505c\u5e7f\u544a\u8bf7\u6c42\u5730\u5740url-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
