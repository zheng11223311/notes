.class public Lcom/tudou/detail/vo/VideoState;
.super Ljava/lang/Object;
.source "VideoState.java"


# instance fields
.field private mBuryNum:I

.field private mCommentNum:I

.field private mCommentTm:I

.field private mCt:I

.field private mDigNum:I

.field private mFavorNum:I

.field private mFavored:Z

.field private mHasGoods:Z

.field private mHasHD:Z

.field private mM:I

.field private mPlayNum:I

.field private mVideoId:Ljava/lang/String;

.field private mW:I

.field private mZt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Ljava/lang/String;)Lcom/tudou/detail/vo/VideoState;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, "ret":Lcom/tudou/detail/vo/VideoState;
    if-eqz p0, :cond_0

    .line 31
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v3, "root":Lorg/json/JSONObject;
    const-string v7, "data"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 33
    .local v4, "state":Lorg/json/JSONObject;
    new-instance v2, Lcom/tudou/detail/vo/VideoState;

    invoke-direct {v2}, Lcom/tudou/detail/vo/VideoState;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1    # "ret":Lcom/tudou/detail/vo/VideoState;
    .local v2, "ret":Lcom/tudou/detail/vo/VideoState;
    :try_start_1
    const-string v7, "hasHd"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v7, v5

    :goto_0
    iput-boolean v7, v2, Lcom/tudou/detail/vo/VideoState;->mHasHD:Z

    .line 35
    const-string v7, "hasGoods"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_2

    :goto_1
    iput-boolean v5, v2, Lcom/tudou/detail/vo/VideoState;->mHasGoods:Z

    .line 36
    const-string v5, "commentTm"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/tudou/detail/vo/VideoState;->mCommentTm:I

    .line 37
    const-string v5, "playNum"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/tudou/detail/vo/VideoState;->mPlayNum:I

    .line 38
    const-string v5, "commentNum"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/tudou/detail/vo/VideoState;->mCommentNum:I

    .line 39
    const-string v5, "favorNum"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/tudou/detail/vo/VideoState;->mFavorNum:I

    .line 40
    const-string v5, "m"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/tudou/detail/vo/VideoState;->mM:I

    .line 41
    const-string v5, "digNum"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/tudou/detail/vo/VideoState;->mDigNum:I

    .line 42
    const-string v5, "favor"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/tudou/detail/vo/VideoState;->mFavored:Z

    .line 43
    const-string v5, "w"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/tudou/detail/vo/VideoState;->mW:I

    .line 44
    const-string v5, "zt"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/tudou/detail/vo/VideoState;->mZt:I

    .line 45
    const-string v5, "ct"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/tudou/detail/vo/VideoState;->mCt:I

    .line 46
    const-string v5, "buryNum"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/tudou/detail/vo/VideoState;->mBuryNum:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 51
    .end local v2    # "ret":Lcom/tudou/detail/vo/VideoState;
    .end local v3    # "root":Lorg/json/JSONObject;
    .end local v4    # "state":Lorg/json/JSONObject;
    .restart local v1    # "ret":Lcom/tudou/detail/vo/VideoState;
    :cond_0
    :goto_2
    return-object v1

    .end local v1    # "ret":Lcom/tudou/detail/vo/VideoState;
    .restart local v2    # "ret":Lcom/tudou/detail/vo/VideoState;
    .restart local v3    # "root":Lorg/json/JSONObject;
    .restart local v4    # "state":Lorg/json/JSONObject;
    :cond_1
    move v7, v6

    .line 34
    goto :goto_0

    :cond_2
    move v5, v6

    .line 35
    goto :goto_1

    .line 47
    .end local v2    # "ret":Lcom/tudou/detail/vo/VideoState;
    .end local v3    # "root":Lorg/json/JSONObject;
    .end local v4    # "state":Lorg/json/JSONObject;
    .restart local v1    # "ret":Lcom/tudou/detail/vo/VideoState;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/json/JSONException;
    :goto_3
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v0}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 47
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "ret":Lcom/tudou/detail/vo/VideoState;
    .restart local v2    # "ret":Lcom/tudou/detail/vo/VideoState;
    .restart local v3    # "root":Lorg/json/JSONObject;
    .restart local v4    # "state":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "ret":Lcom/tudou/detail/vo/VideoState;
    .restart local v1    # "ret":Lcom/tudou/detail/vo/VideoState;
    goto :goto_3
.end method


# virtual methods
.method public getBuryNum()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/tudou/detail/vo/VideoState;->mBuryNum:I

    return v0
.end method

.method public getCommentNum()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/tudou/detail/vo/VideoState;->mCommentNum:I

    return v0
.end method

.method public getCommentTm()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/tudou/detail/vo/VideoState;->mCommentTm:I

    return v0
.end method

.method public getCt()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/tudou/detail/vo/VideoState;->mCt:I

    return v0
.end method

.method public getDigNum()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/tudou/detail/vo/VideoState;->mDigNum:I

    return v0
.end method

.method public getFavorNum()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/tudou/detail/vo/VideoState;->mFavorNum:I

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/tudou/detail/vo/VideoState;->mM:I

    return v0
.end method

.method public getPlayNum()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/tudou/detail/vo/VideoState;->mPlayNum:I

    return v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoState;->mVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/tudou/detail/vo/VideoState;->mW:I

    return v0
.end method

.method public getZt()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/tudou/detail/vo/VideoState;->mZt:I

    return v0
.end method

.method public increaseDigNum(Z)V
    .locals 2
    .param p1, "login"    # Z

    .prologue
    .line 55
    iget v1, p0, Lcom/tudou/detail/vo/VideoState;->mDigNum:I

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/tudou/detail/vo/VideoState;->mDigNum:I

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFavored()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/tudou/detail/vo/VideoState;->mFavored:Z

    return v0
.end method

.method public isHasGoods()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/tudou/detail/vo/VideoState;->mHasGoods:Z

    return v0
.end method

.method public isHasHD()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/tudou/detail/vo/VideoState;->mHasHD:Z

    return v0
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoState;->mVideoId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoState{mVideoId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/vo/VideoState;->mVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasHD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tudou/detail/vo/VideoState;->mHasHD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasGoods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tudou/detail/vo/VideoState;->mHasGoods:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCommentTm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/detail/vo/VideoState;->mCommentTm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlayNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/detail/vo/VideoState;->mPlayNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCommentNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/detail/vo/VideoState;->mCommentNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFavorNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/detail/vo/VideoState;->mFavorNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/detail/vo/VideoState;->mM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDigNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/detail/vo/VideoState;->mDigNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFavored="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tudou/detail/vo/VideoState;->mFavored:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/detail/vo/VideoState;->mW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mZt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/detail/vo/VideoState;->mZt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/detail/vo/VideoState;->mCt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBuryNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/detail/vo/VideoState;->mBuryNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
