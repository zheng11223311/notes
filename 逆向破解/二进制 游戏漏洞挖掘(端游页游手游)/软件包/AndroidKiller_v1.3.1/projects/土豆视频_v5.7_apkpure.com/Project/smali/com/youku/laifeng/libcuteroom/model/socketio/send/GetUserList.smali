.class public Lcom/youku/laifeng/libcuteroom/model/socketio/send/GetUserList;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
.source "GetUserList.java"


# static fields
.field private static final BATCH:Ljava/lang/String; = "batch"

.field public static final EVENT_COMMAND:Ljava/lang/String; = "command"

.field public static final EVENT_NAME:Ljava/lang/String; = "userlist"

.field public static final EVENT_USER_COUNT:Ljava/lang/String; = "usercount"

.field public static final EVENT_USER_LIST:Ljava/lang/String; = "userlist"

.field private static final ROOM_ID:Ljava/lang/String; = "roomid"


# instance fields
.field private args:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "batch"    # Ljava/lang/String;
    .param p2, "roomid"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;-><init>()V

    .line 18
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 20
    .local v1, "tmp":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "batch"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string/jumbo v2, "roomid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/GetUserList;->args:Ljava/lang/String;

    .line 23
    const-string/jumbo v2, "userlist"

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/GetUserList;->args:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/GetUserList;->makeIOSendEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
