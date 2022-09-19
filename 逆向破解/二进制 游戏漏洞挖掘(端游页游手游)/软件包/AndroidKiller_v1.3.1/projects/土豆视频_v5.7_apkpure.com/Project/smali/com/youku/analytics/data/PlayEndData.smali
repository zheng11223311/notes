.class public Lcom/youku/analytics/data/PlayEndData;
.super Lcom/youku/analytics/data/PlayActionData;
.source "PlayEndData.java"


# direct methods
.method public constructor <init>(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/analytics/data/ActionBaseData;)V
    .locals 0
    .param p1, "builder"    # Lcom/youku/analytics/data/PlayActionData$Builder;
    .param p2, "data"    # Lcom/youku/analytics/data/ActionBaseData;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/youku/analytics/data/PlayActionData;-><init>(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/analytics/data/ActionBaseData;)V

    .line 11
    return-void
.end method


# virtual methods
.method public write(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/youku/analytics/data/PlayActionData;->write(Lorg/json/JSONObject;)V

    .line 16
    const-string v0, "ad"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mAdvBeforeDuration:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v0, "bd"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mBeforeDuration:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string/jumbo v0, "v1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mVideoTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v0, "d1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mDuration:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v0, "pe"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mPlayLoadEvents:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string v0, "pr"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mPlayRates:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v0, "px"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mPlayExperience:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v0, "pt1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mPlaySDTimes:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v0, "pd1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mPlaySDDuration:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v0, "pt2"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mPlayHDTimes:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v0, "pd2"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mPlayHDDuration:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v0, "pt3"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mPlayHD2Times:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v0, "pd3"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mPlayHD2Duration:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v0, "c1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mComplete:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v0, "cf"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mCurrentFormat:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v0, "ct"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mCurrentPlaytime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v0, p0, Lcom/youku/analytics/data/PlayEndData;->mLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "ln"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :cond_0
    const-string/jumbo v0, "ss"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mScreenState:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v0, "fu"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mFull:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    iget-object v0, p0, Lcom/youku/analytics/data/PlayEndData;->mSid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    const-string/jumbo v0, "s3"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/youku/analytics/data/PlayEndData;->mCtype:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    const-string v0, "ct1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mCtype:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/youku/analytics/data/PlayEndData;->mEv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    const-string v0, "ev1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mEv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/youku/analytics/data/PlayEndData;->mToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    const-string/jumbo v0, "tk1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/youku/analytics/data/PlayEndData;->mOip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 59
    const-string v0, "oip1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mOip:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/youku/analytics/data/PlayEndData;->mFreeTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 63
    const-string v0, "ft1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mFreeTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_6
    const-string v0, "pv1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayEndData;->mP2PVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v1, "ip1"

    iget-boolean v0, p0, Lcom/youku/analytics/data/PlayEndData;->isP2P:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    return-void

    .line 66
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method
