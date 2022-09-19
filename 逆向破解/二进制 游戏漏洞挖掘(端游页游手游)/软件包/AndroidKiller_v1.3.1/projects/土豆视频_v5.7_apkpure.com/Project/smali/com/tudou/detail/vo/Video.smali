.class public Lcom/tudou/detail/vo/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/Video$Language;
    }
.end annotation


# instance fields
.field public isKuwo:Z

.field public mAlbumId:I

.field public mAlbumName:Ljava/lang/String;

.field public mBigImg:Ljava/lang/String;

.field public mCachedVer:I

.field public mChannelId:I

.field public mDuration:D

.field public mEpisode:I

.field public mHDType:I

.field public mIId:Ljava/lang/String;

.field public mImg:Ljava/lang/String;

.field public mIsCached:Z

.field public mIstrailer:Z

.field public mLimit:I

.field public mNickName:Ljava/lang/String;

.field public mOwnerId:I

.field public mPlaytimes:Ljava/lang/String;

.field public mPublishDate:Ljava/lang/String;

.field public mSeq:I

.field public mTItleDLSub:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mTitleDL:Ljava/lang/String;

.field public mTitlePlay:Ljava/lang/String;

.field public mVideoCode:Ljava/lang/String;

.field public playtimes_count:I

.field public t_img:Ljava/lang/String;

.field public w_img:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/tudou/detail/vo/Video;->isKuwo:Z

    .line 46
    iput-boolean v0, p0, Lcom/tudou/detail/vo/Video;->mIsCached:Z

    .line 47
    iput v0, p0, Lcom/tudou/detail/vo/Video;->mCachedVer:I

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;Lcom/tudou/android/Youku$VideoType;)Lcom/tudou/detail/vo/Video;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "type"    # Lcom/tudou/android/Youku$VideoType;

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "ret":Lcom/tudou/detail/vo/Video;
    if-eqz p0, :cond_0

    .line 96
    new-instance v0, Lcom/tudou/detail/vo/Video;

    .end local v0    # "ret":Lcom/tudou/detail/vo/Video;
    invoke-direct {v0}, Lcom/tudou/detail/vo/Video;-><init>()V

    .line 97
    .restart local v0    # "ret":Lcom/tudou/detail/vo/Video;
    const-string/jumbo v1, "vcode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mVideoCode:Ljava/lang/String;

    .line 98
    const-string/jumbo v1, "seq"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tudou/detail/vo/Video;->mSeq:I

    .line 99
    const-string v1, "playtimes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mPlaytimes:Ljava/lang/String;

    .line 100
    const-string v1, "iid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    .line 101
    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/tudou/detail/vo/Video;->mDuration:D

    .line 102
    const-string v1, "episode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tudou/detail/vo/Video;->mEpisode:I

    .line 103
    const-string v1, "img"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mImg:Ljava/lang/String;

    .line 104
    const-string/jumbo v1, "title_new"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    .line 105
    const-string v1, "hdType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tudou/detail/vo/Video;->mHDType:I

    .line 106
    const-string v1, "limit"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tudou/detail/vo/Video;->mLimit:I

    .line 107
    const-string/jumbo v1, "title_new_ohter"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mTitlePlay:Ljava/lang/String;

    .line 108
    sget-object v1, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v1, p1, :cond_1

    .line 109
    const-string v1, "channelId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tudou/detail/vo/Video;->mChannelId:I

    .line 110
    const-string v1, "publishDate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mPublishDate:Ljava/lang/String;

    .line 111
    const-string v1, "big_img"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mBigImg:Ljava/lang/String;

    .line 112
    const-string v1, "aid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tudou/detail/vo/Video;->mAlbumId:I

    .line 113
    const-string v1, "is_trailer"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tudou/detail/vo/Video;->mIstrailer:Z

    .line 114
    const-string/jumbo v1, "title_new_dl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mTitleDL:Ljava/lang/String;

    .line 115
    const-string/jumbo v1, "title_new_dl_sub"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mTItleDLSub:Ljava/lang/String;

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    sget-object v1, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v1, p1, :cond_2

    .line 117
    const-string/jumbo v1, "t_img"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->t_img:Ljava/lang/String;

    .line 118
    const-string/jumbo v1, "w_img"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->w_img:Ljava/lang/String;

    .line 119
    const-string v1, "nickname"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mNickName:Ljava/lang/String;

    .line 120
    const-string v1, "ownerId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tudou/detail/vo/Video;->mOwnerId:I

    .line 121
    const-string v1, "playtimes_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tudou/detail/vo/Video;->playtimes_count:I

    goto :goto_0

    .line 123
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public static createFromVideoDetail(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/detail/vo/Video;
    .locals 4
    .param p0, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "ret":Lcom/tudou/detail/vo/Video;
    if-eqz p0, :cond_0

    .line 76
    new-instance v0, Lcom/tudou/detail/vo/Video;

    .end local v0    # "ret":Lcom/tudou/detail/vo/Video;
    invoke-direct {v0}, Lcom/tudou/detail/vo/Video;-><init>()V

    .line 77
    .restart local v0    # "ret":Lcom/tudou/detail/vo/Video;
    const/4 v1, 0x1

    iput v1, v0, Lcom/tudou/detail/vo/Video;->mSeq:I

    .line 78
    iget-object v1, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->iid:Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->duration:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    iput-wide v2, v0, Lcom/tudou/detail/vo/Video;->mDuration:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->limit:I

    iput v1, v0, Lcom/tudou/detail/vo/Video;->mLimit:I

    .line 85
    iget-object v1, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mNickName:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    iput v1, v0, Lcom/tudou/detail/vo/Video;->mOwnerId:I

    .line 87
    iget-object v1, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->total_vv:Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/detail/vo/Video;->mPlaytimes:Ljava/lang/String;

    .line 90
    :cond_0
    return-object v0

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getCacheVer()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/tudou/detail/vo/Video;->mCachedVer:I

    return v0
.end method
