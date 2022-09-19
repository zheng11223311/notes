.class public Lcom/youku/vo/HistoryVideo;
.super Ljava/lang/Object;
.source "HistoryVideo.java"


# static fields
.field public static final Time:I = 0x1


# instance fields
.field public aid:I

.field public device:I

.field public done:I

.field public hwclassStr:Ljava/lang/String;

.field public img_hd:Ljava/lang/String;

.field public isCached:Z

.field public isChecked:Z

.field public isEdit:Z

.field public isstage:I

.field public itemCode:Ljava/lang/String;

.field public lvt:I

.field public picUrl:Ljava/lang/String;

.field public picUrl_t:Ljava/lang/String;

.field public playListCode:Ljava/lang/String;

.field public playtype:I

.field public pointStr:Ljava/lang/String;

.field public showid:Ljava/lang/String;

.field public stage:I

.field public title:Ljava/lang/String;

.field public title_new:Ljava/lang/String;

.field public totalTime:I

.field public type:Lcom/tudou/android/Youku$Type;

.field public vcode:Ljava/lang/String;

.field public view_at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/youku/vo/HistoryVideo;->isEdit:Z

    .line 34
    iput-boolean v0, p0, Lcom/youku/vo/HistoryVideo;->isChecked:Z

    return-void
.end method

.method public static parseLocalPlayHistory(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/VideoInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "tempVideos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/VideoInfo;>;"
    const/4 v8, 0x1

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "historyVideos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/VideoInfo;

    .line 90
    .local v3, "tempVideo":Lcom/youku/vo/VideoInfo;
    new-instance v0, Lcom/youku/vo/HistoryVideo;

    invoke-direct {v0}, Lcom/youku/vo/HistoryVideo;-><init>()V

    .line 91
    .local v0, "historyVideo":Lcom/youku/vo/HistoryVideo;
    iget v4, v3, Lcom/youku/vo/VideoInfo;->playTime:I

    iput v4, v0, Lcom/youku/vo/HistoryVideo;->lvt:I

    .line 92
    iget-object v4, v3, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    .line 94
    iget-object v4, v3, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/vo/HistoryVideo;->title_new:Ljava/lang/String;

    .line 95
    iget-object v4, v3, Lcom/youku/vo/VideoInfo;->showid:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/vo/HistoryVideo;->showid:Ljava/lang/String;

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lcom/youku/vo/VideoInfo;->lastPlayTime:J

    invoke-static {v6, v7}, Lcom/youku/util/Util;->timeConversion(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/youku/vo/HistoryVideo;->view_at:Ljava/lang/String;

    .line 97
    iget v4, v3, Lcom/youku/vo/VideoInfo;->isStage:I

    iput v4, v0, Lcom/youku/vo/HistoryVideo;->isstage:I

    .line 98
    iget v4, v3, Lcom/youku/vo/VideoInfo;->stage:I

    iput v4, v0, Lcom/youku/vo/HistoryVideo;->stage:I

    .line 99
    iget-object v4, v3, Lcom/youku/vo/VideoInfo;->videotype:Lcom/tudou/android/Youku$Type;

    iput-object v4, v0, Lcom/youku/vo/HistoryVideo;->type:Lcom/tudou/android/Youku$Type;

    .line 100
    iget-object v4, v3, Lcom/youku/vo/VideoInfo;->vcode:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/vo/HistoryVideo;->vcode:Ljava/lang/String;

    .line 101
    iget-object v4, v3, Lcom/youku/vo/VideoInfo;->small_img:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/vo/HistoryVideo;->picUrl_t:Ljava/lang/String;

    .line 103
    iget-object v4, v3, Lcom/youku/vo/VideoInfo;->playlist_code:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/vo/HistoryVideo;->playListCode:Ljava/lang/String;

    .line 106
    iget v4, v3, Lcom/youku/vo/VideoInfo;->isStage:I

    if-ne v4, v8, :cond_0

    .line 107
    iput v8, v0, Lcom/youku/vo/HistoryVideo;->aid:I

    .line 112
    :goto_1
    :try_start_0
    iget-object v4, v3, Lcom/youku/vo/VideoInfo;->duration:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, v0, Lcom/youku/vo/HistoryVideo;->totalTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    const/4 v4, 0x0

    iput v4, v0, Lcom/youku/vo/HistoryVideo;->aid:I

    goto :goto_1

    .line 117
    .end local v0    # "historyVideo":Lcom/youku/vo/HistoryVideo;
    .end local v3    # "tempVideo":Lcom/youku/vo/VideoInfo;
    :cond_1
    return-object v1

    .line 113
    .restart local v0    # "historyVideo":Lcom/youku/vo/HistoryVideo;
    .restart local v3    # "tempVideo":Lcom/youku/vo/VideoInfo;
    :catch_0
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public getHomeIsPaint()Z
    .locals 2

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/vo/HistoryVideo;->getPlayProportion()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0x5f

    if-ge v0, v1, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsPlaytEnd()Z
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/youku/vo/HistoryVideo;->done:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/youku/vo/HistoryVideo;->totalTime:I

    div-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/youku/vo/HistoryVideo;->lvt:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayProportion()I
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/youku/vo/HistoryVideo;->lvt:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/youku/vo/HistoryVideo;->totalTime:I

    div-int/lit16 v1, v1, 0x3e8

    div-int/2addr v0, v1

    return v0
.end method

.method public getPlaytype()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    iget v0, p0, Lcom/youku/vo/HistoryVideo;->done:I

    if-nez v0, :cond_1

    .line 51
    iget v0, p0, Lcom/youku/vo/HistoryVideo;->totalTime:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/vo/HistoryVideo;->totalTime:I

    div-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/youku/vo/HistoryVideo;->lvt:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 52
    iput v2, p0, Lcom/youku/vo/HistoryVideo;->playtype:I

    .line 61
    :goto_0
    iget v0, p0, Lcom/youku/vo/HistoryVideo;->playtype:I

    return v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/vo/HistoryVideo;->playtype:I

    goto :goto_0

    .line 56
    :cond_1
    iget v0, p0, Lcom/youku/vo/HistoryVideo;->isstage:I

    if-nez v0, :cond_2

    .line 57
    iput v2, p0, Lcom/youku/vo/HistoryVideo;->playtype:I

    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/vo/HistoryVideo;->playtype:I

    goto :goto_0
.end method
