.class public Lcom/youku/analytics/data/PlayStartData;
.super Lcom/youku/analytics/data/PlayActionData;
.source "PlayStartData.java"


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
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 15
    invoke-super {p0, p1}, Lcom/youku/analytics/data/PlayActionData;->write(Lorg/json/JSONObject;)V

    .line 16
    const-string/jumbo v0, "rp1"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v0, "p2"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mPlaytype:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string/jumbo v0, "v1"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mVideoTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v0, "p3"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mPlaycode:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v0, "cf"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mCurrentFormat:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string/jumbo v0, "st"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mStartPlaytime:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string v0, "cp"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mContinuePlay:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v0, "fu"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mFull:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string/jumbo v0, "v2"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mVideoOwner:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string/jumbo v3, "rp"

    iget-boolean v0, p0, Lcom/youku/analytics/data/PlayStartData;->mReplay:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_0
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const-string v0, "c2"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mSChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    const-string/jumbo v0, "sc2"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mSChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mPlaylistId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 31
    const-string v0, "p4"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mPlaylistChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    const-string v0, "p5"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mPlaylistChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mSPlaylistChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 35
    const-string/jumbo v0, "sp5"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mSPlaylistChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    :cond_4
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mShowId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 37
    const-string/jumbo v0, "s4"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mShowId:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_5
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mShowChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 39
    const-string/jumbo v0, "s5"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mShowChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mSShowChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 41
    const-string/jumbo v0, "ss5"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mSShowChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    :cond_7
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mFreeTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 43
    const-string v0, "ft1"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mFreeTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_8
    const-string/jumbo v0, "ss"

    iget-object v3, p0, Lcom/youku/analytics/data/PlayStartData;->mScreenState:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v0, "iv"

    iget-boolean v3, p0, Lcom/youku/analytics/data/PlayStartData;->isVip:Z

    if-eqz v3, :cond_10

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string v0, "ps1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayStartData;->mPayState:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v0, "ps2"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayStartData;->mPlayState:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v0, "cr"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayStartData;->mCopyright:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string/jumbo v0, "tr"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayStartData;->mTailers:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mSid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 52
    const-string/jumbo v0, "s3"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayStartData;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_9
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mCtype:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 55
    const-string v0, "ct1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayStartData;->mCtype:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :cond_a
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mEv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 58
    const-string v0, "ev1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayStartData;->mEv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :cond_b
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 61
    const-string/jumbo v0, "tk1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayStartData;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_c
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mOip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 64
    const-string v0, "oip1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayStartData;->mOip:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_d
    iget-object v0, p0, Lcom/youku/analytics/data/PlayStartData;->mLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 68
    const-string v0, "ln"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayStartData;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_e
    return-void

    :cond_f
    move v0, v2

    .line 25
    goto/16 :goto_0

    :cond_10
    move v1, v2

    .line 45
    goto/16 :goto_1
.end method
