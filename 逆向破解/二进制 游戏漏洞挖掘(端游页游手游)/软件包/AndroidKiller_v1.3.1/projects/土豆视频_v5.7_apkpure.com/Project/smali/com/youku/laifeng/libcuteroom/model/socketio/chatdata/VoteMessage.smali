.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "VoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;
    }
.end annotation


# static fields
.field private static final BODY_OPTIONS:Ljava/lang/String; = "options"

.field private static final BODY_OPTIONS_OI:Ljava/lang/String; = "oi"

.field private static final BODY_OPTIONS_PC:Ljava/lang/String; = "pc"

.field private static final BODY_OPTIONS_Q:Ljava/lang/String; = "q"

.field private static final BODY_OQ:Ljava/lang/String; = "oq"

.field private static final BODY_PI:Ljava/lang/String; = "pi"

.field private static final BODY_PR:Ljava/lang/String; = "pr"

.field private static final BODY_Q:Ljava/lang/String; = "q"

.field private static final BODY_U:Ljava/lang/String; = "u"

.field private static final BODY_VI:Ljava/lang/String; = "vi"

.field public static final VOTE_MSG:Ljava/lang/String; = "vote"


# instance fields
.field private options:[Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;

.field private oq:I

.field private pi:I

.field private pr:I

.field private q:I

.field private u:I

.field private vi:I

.field private voteOptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->voteOptionsList:Ljava/util/List;

    .line 35
    const/16 v6, 0x22

    iput v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->type:I

    .line 36
    const/4 v3, 0x0

    .line 38
    .local v3, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "root":Lorg/json/JSONObject;
    .local v4, "root":Lorg/json/JSONObject;
    move-object v3, v4

    .line 42
    .end local v4    # "root":Lorg/json/JSONObject;
    .restart local v3    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 63
    :cond_1
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v6, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v6, "roomid"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->mRoomId:Ljava/lang/String;

    .line 46
    const-string v6, "body"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->mBody:Lorg/json/JSONObject;

    .line 47
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->mBody:Lorg/json/JSONObject;

    if-eqz v6, :cond_1

    .line 50
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v7, "vi"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->vi:I

    .line 51
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->mBody:Lorg/json/JSONObject;

    const-string v7, "q"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->q:I

    .line 52
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v7, "u"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->u:I

    .line 53
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->mBody:Lorg/json/JSONObject;

    const-string v7, "pr"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->pr:I

    .line 54
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->mBody:Lorg/json/JSONObject;

    const-string v7, "pi"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->pi:I

    .line 55
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->mBody:Lorg/json/JSONObject;

    const-string v7, "oq"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->oq:I

    .line 56
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->mBody:Lorg/json/JSONObject;

    const-string v7, "options"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 57
    .local v2, "op":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;

    iput-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->options:[Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 59
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 60
    .local v5, "tmp":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->options:[Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;

    new-instance v7, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;

    const-string v8, "oi"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "q"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "pc"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;-><init>(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;III)V

    aput-object v7, v6, v1

    .line 61
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->voteOptionsList:Ljava/util/List;

    new-instance v7, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;

    const-string v8, "oi"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "q"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "pc"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;-><init>(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;III)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getOptions()[Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->options:[Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;

    return-object v0
.end method

.method public getOq()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->oq:I

    return v0
.end method

.method public getPi()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->pi:I

    return v0
.end method

.method public getPr()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->pr:I

    return v0
.end method

.method public getQ()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->q:I

    return v0
.end method

.method public getU()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->u:I

    return v0
.end method

.method public getVi()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->vi:I

    return v0
.end method

.method public getVoteOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->voteOptionsList:Ljava/util/List;

    return-object v0
.end method
