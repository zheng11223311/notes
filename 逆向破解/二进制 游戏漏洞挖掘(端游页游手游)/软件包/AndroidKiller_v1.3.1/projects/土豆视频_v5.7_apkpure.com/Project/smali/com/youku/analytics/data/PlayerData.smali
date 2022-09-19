.class public Lcom/youku/analytics/data/PlayerData;
.super Lcom/youku/analytics/data/PlayActionData;
.source "PlayerData.java"


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
    const-string/jumbo v0, "v1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayerData;->mVideoTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v0, p0, Lcom/youku/analytics/data/PlayerData;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    const-string v0, "c2"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayerData;->mChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/youku/analytics/data/PlayerData;->mPlaylistId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    const-string v0, "p4"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayerData;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/youku/analytics/data/PlayerData;->mPlaylistChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    const-string v0, "p5"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayerData;->mPlaylistChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/youku/analytics/data/PlayerData;->mShowId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 25
    const-string/jumbo v0, "s4"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayerData;->mShowId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/youku/analytics/data/PlayerData;->mShowChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 27
    const-string/jumbo v0, "s5"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayerData;->mShowChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    :cond_4
    iget-object v0, p0, Lcom/youku/analytics/data/PlayerData;->mFreeTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 29
    const-string v0, "ft1"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayerData;->mFreeTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_5
    const-string/jumbo v0, "ss"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayerData;->mScreenState:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v0, "e2"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayerData;->mEvent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v0, "pg"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayerData;->mPlayGestures:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v0, "ab"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayerData;->mActionBegin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v0, "ae"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayerData;->mActionEnd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    return-void
.end method
