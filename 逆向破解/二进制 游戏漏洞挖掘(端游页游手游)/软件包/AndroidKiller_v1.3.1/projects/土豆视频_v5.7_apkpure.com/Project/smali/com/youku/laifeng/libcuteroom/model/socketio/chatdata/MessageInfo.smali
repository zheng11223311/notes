.class public abstract Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"


# static fields
.field public static final ANCHOR_LV_RES_BASE:Ljava/lang/String; = "a_lv_"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final MSG_GET:I = 0x1

.field public static final MSG_POST:I = 0x2

.field public static final ROOM_ID:Ljava/lang/String; = "roomid"

.field public static final TARGET_USER_ID:Ljava/lang/String; = "targetuserid"

.field public static final TYPE_ATTENTION:I = 0x16

.field public static final TYPE_BIG_GIFT:I = 0x12

.field public static final TYPE_CHAT:I = 0x10

.field public static final TYPE_ENTER:I = 0x13

.field public static final TYPE_FLASHINFO:I = 0x15

.field public static final TYPE_GIFT:I = 0x11

.field public static final TYPE_GUARD:I = 0x25

.field public static final TYPE_HORN:I = 0x19

.field public static final TYPE_KICK_OUT:I = 0x17

.field public static final TYPE_LEVEL:I = 0x21

.field public static final TYPE_LUCKY_GIFT_WIN:I = 0x18

.field public static final TYPE_STAR:I = 0x14

.field public static final TYPE_TOP_NOTICE:I = 0x20

.field public static final TYPE_VOTE:I = 0x22

.field public static final TYPE_VOTE_STATUS:I = 0x24

.field public static final TYPE_VOTE_TOP:I = 0x23

.field public static final USER_LV_RES_BASE:Ljava/lang/String; = "user_lv_"


# instance fields
.field protected mBody:Lorg/json/JSONObject;

.field protected mGetOrPost:I

.field protected mIsAnchor:Z

.field protected mMessageDetail:Ljava/lang/String;

.field protected mRoomId:Ljava/lang/String;

.field protected mTargetuserId:Ljava/lang/String;

.field protected type:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mGetOrPost:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mMessageDetail:Ljava/lang/String;

    .line 34
    const/16 v0, 0x10

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->type:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mIsAnchor:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mBody:Lorg/json/JSONObject;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mRoomId:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mTargetuserId:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, ""

    .line 77
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mBody:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    move-object v1, v0

    .line 91
    :goto_0
    return-object v1

    .line 81
    :cond_0
    if-nez p1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 91
    goto :goto_0

    .line 89
    :cond_2
    const-string v0, "0"

    goto :goto_1
.end method

.method public getMesasgeSource()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mGetOrPost:I

    return v0
.end method

.method public getMessageDetail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p2, "regular"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 62
    .local v0, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/text/SpannableString;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mMessageDetail:Ljava/lang/String;

    invoke-static {v2, p2, p3}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->getExpressionString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 64
    .local v1, "spannableString":Landroid/text/SpannableString;
    move-object v0, v1

    .line 68
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    .end local v1    # "spannableString":Landroid/text/SpannableString;
    :cond_0
    :goto_0
    return-object v0

    .line 65
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mMessageDetail:Ljava/lang/String;

    .local v0, "result":Ljava/lang/String;, "TT;"
    goto :goto_0
.end method

.method public getMessageDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mMessageDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mRoomId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->type:I

    return v0
.end method

.method public isAnchor()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->mIsAnchor:Z

    return v0
.end method
