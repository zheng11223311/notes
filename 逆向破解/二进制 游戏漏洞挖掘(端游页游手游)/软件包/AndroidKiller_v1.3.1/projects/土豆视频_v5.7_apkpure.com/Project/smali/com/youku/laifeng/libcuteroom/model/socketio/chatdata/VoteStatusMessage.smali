.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "VoteStatusMessage.java"


# static fields
.field private static final BODY_ST:Ljava/lang/String; = "st"

.field private static final BODY_VI:Ljava/lang/String; = "vi"

.field public static final BODY_VOTE:Ljava/lang/String; = "v"

.field private static final BODY_VOTE_ID:Ljava/lang/String; = "id"

.field private static final BODY_VOTE_IS_FREE:Ljava/lang/String; = "isFree"

.field private static final BODY_VOTE_OWNER:Ljava/lang/String; = "owner"

.field private static final BODY_VOTE_PRICE:Ljava/lang/String; = "price"

.field private static final BODY_VOTE_STATUS:Ljava/lang/String; = "status"

.field private static final BODY_VOTE_TEMPLATE:Ljava/lang/String; = "template"

.field private static final BODY_VOTE_TITLE:Ljava/lang/String; = "title"

.field private static final BODY_VOTE_TOTAL_NUM:Ljava/lang/String; = "totalNum"

.field private static final BODY_VOTE_VOTED:Ljava/lang/String; = "voted"

.field public static final VOTE_STATUS_MSG:Ljava/lang/String; = "voteStatus"


# instance fields
.field private id:I

.field private isFree:I

.field private owner:I

.field private price:I

.field private show:Z

.field private status:I

.field private template:I

.field private title:Ljava/lang/String;

.field private totalNum:I

.field private v:Lorg/json/JSONObject;

.field private voted:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 45
    const/16 v3, 0x24

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->type:I

    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "root":Lorg/json/JSONObject;
    .local v2, "root":Lorg/json/JSONObject;
    move-object v1, v2

    .line 52
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 60
    :goto_1
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string/jumbo v3, "roomid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->mRoomId:Ljava/lang/String;

    .line 56
    const-string v3, "body"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->mBody:Lorg/json/JSONObject;

    .line 57
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v4, "v"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    goto :goto_1
.end method

.method private getPrice()I
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    const-string v1, "price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    const-string v0, ""

    .line 71
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 79
    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 74
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 79
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 77
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getOwner()I
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    const-string v1, "owner"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getSt()I
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->mBody:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v1, "st"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getTemplate()I
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    const-string/jumbo v1, "template"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 105
    const-string v0, ""

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTotalNum()I
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    const-string/jumbo v1, "totalNum"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getVi()I
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->mBody:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v1, "vi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getVoteListItem()Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;-><init>(Lorg/json/JSONObject;)V

    .line 64
    .local v0, "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    return-object v0
.end method

.method public getVoted()Z
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    const-string/jumbo v1, "voted"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFree()I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->v:Lorg/json/JSONObject;

    const-string v1, "isFree"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
