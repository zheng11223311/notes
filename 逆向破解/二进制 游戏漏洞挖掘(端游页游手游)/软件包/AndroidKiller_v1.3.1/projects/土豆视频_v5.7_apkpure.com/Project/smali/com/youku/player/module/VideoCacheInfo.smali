.class public final Lcom/youku/player/module/VideoCacheInfo;
.super Ljava/lang/Object;
.source "VideoCacheInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static compareBySeq:Z


# instance fields
.field public adPointArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;"
        }
    .end annotation
.end field

.field public episodemode:Ljava/lang/String;

.field public exclusiveLogo:Z

.field public format:I

.field public isVerticalVideo:Z

.field public language:Ljava/lang/String;

.field public lastPlayTime:J

.field public lastUpdateTime:J

.field public licenseNum:Ljava/lang/String;

.field public mMediaType:Ljava/lang/String;

.field public nextVid:Ljava/lang/String;

.field public picUrl:Ljava/lang/String;

.field public playTime:I

.field public points:Lorg/json/JSONArray;

.field public progress:D

.field public quality:I

.field public registerNum:Ljava/lang/String;

.field public savePath:Ljava/lang/String;

.field public seconds:I

.field public segCount:I

.field public segId:I

.field public segSize:J

.field public segUrl:Ljava/lang/String;

.field public segsSeconds:[I

.field public segsSize:[J

.field public segsUrl:[Ljava/lang/String;

.field public show_videoseq:I

.field public showepisode_total:I

.field public showid:Ljava/lang/String;

.field public showname:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public videoid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/player/module/VideoCacheInfo;->compareBySeq:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/player/module/VideoCacheInfo;->progress:D

    .line 47
    iput-wide v4, p0, Lcom/youku/player/module/VideoCacheInfo;->lastUpdateTime:J

    .line 50
    iput v2, p0, Lcom/youku/player/module/VideoCacheInfo;->segCount:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/player/module/VideoCacheInfo;->segId:I

    .line 54
    iput-wide v4, p0, Lcom/youku/player/module/VideoCacheInfo;->segSize:J

    .line 73
    iput-boolean v2, p0, Lcom/youku/player/module/VideoCacheInfo;->isVerticalVideo:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoCacheInfo;->adPointArray:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized getAdPoints()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->adPointArray:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->adPointArray:Ljava/util/ArrayList;

    .line 148
    :goto_0
    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->points:Lorg/json/JSONArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->points:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->points:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 150
    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->points:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 151
    .local v2, "point":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 152
    new-instance v1, Lcom/youku/player/goplay/Point;

    invoke-direct {v1}, Lcom/youku/player/goplay/Point;-><init>()V

    .line 153
    .local v1, "p":Lcom/youku/player/goplay/Point;
    const-string/jumbo v3, "start"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    iput-wide v4, v1, Lcom/youku/player/goplay/Point;->start:D

    .line 154
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    .line 156
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/player/goplay/Point;->title:Ljava/lang/String;

    .line 157
    const-string v3, "desc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/player/goplay/Point;->desc:Ljava/lang/String;

    .line 158
    iget-object v3, v1, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    const-string/jumbo v4, "standard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->adPointArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v1    # "p":Lcom/youku/player/goplay/Point;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "i":I
    .end local v2    # "point":Lorg/json/JSONObject;
    :cond_1
    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->adPointArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 165
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->adPointArray:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 91
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v1, "o":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v2, "vid"

    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v2, "showid"

    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->showid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v2, "format"

    iget v3, p0, Lcom/youku/player/module/VideoCacheInfo;->format:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v2, "show_videoseq"

    iget v3, p0, Lcom/youku/player/module/VideoCacheInfo;->show_videoseq:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v2, "showepisode_total"

    iget v3, p0, Lcom/youku/player/module/VideoCacheInfo;->showepisode_total:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v2, "seconds"

    iget v3, p0, Lcom/youku/player/module/VideoCacheInfo;->seconds:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->segUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v2, "segcount"

    iget v3, p0, Lcom/youku/player/module/VideoCacheInfo;->segCount:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v2, "segsize"

    iget-wide v4, p0, Lcom/youku/player/module/VideoCacheInfo;->segSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v2, "segsseconds"

    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->segsSeconds:[I

    invoke-static {v3}, Lcom/baseproject/utils/Util;->join([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string/jumbo v2, "segssize"

    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->segsSize:[J

    invoke-static {v3}, Lcom/baseproject/utils/Util;->join([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v2, "segstep"

    iget v3, p0, Lcom/youku/player/module/VideoCacheInfo;->segId:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v2, "savepath"

    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string/jumbo v3, "segsUrl"

    iget-object v2, p0, Lcom/youku/player/module/VideoCacheInfo;->segsUrl:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/module/VideoCacheInfo;->segsUrl:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_4

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v2, "progress"

    iget-wide v4, p0, Lcom/youku/player/module/VideoCacheInfo;->progress:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 110
    iget-object v2, p0, Lcom/youku/player/module/VideoCacheInfo;->language:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    const-string v2, "language"

    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->language:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/youku/player/module/VideoCacheInfo;->showname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    const-string/jumbo v2, "showname"

    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->showname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :cond_2
    const-string v2, "playTime"

    iget v3, p0, Lcom/youku/player/module/VideoCacheInfo;->playTime:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string v2, "lastPlayTime"

    iget-wide v4, p0, Lcom/youku/player/module/VideoCacheInfo;->lastPlayTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    iget-object v2, p0, Lcom/youku/player/module/VideoCacheInfo;->points:Lorg/json/JSONArray;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/youku/player/module/VideoCacheInfo;->points:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    const-string v2, "points"

    iget-object v3, p0, Lcom/youku/player/module/VideoCacheInfo;->points:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :cond_3
    :goto_1
    return-object v1

    .line 107
    :cond_4
    iget-object v2, p0, Lcom/youku/player/module/VideoCacheInfo;->segsUrl:[Ljava/lang/String;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/baseproject/utils/Util;->join([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/youku/player/module/VideoCacheInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    .local v0, "o":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
