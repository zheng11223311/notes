.class public Lcom/youku/laifeng/libcuteroom/model/socketio/send/EnterRoom;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
.source "EnterRoom.java"


# static fields
.field private static final END_POINT_TYPE:Ljava/lang/String; = "endpointtype"

.field public static final EVENT_NAME:Ljava/lang/String; = "enter"

.field private static final ROOM_ID:Ljava/lang/String; = "roomid"

.field private static final TOKEN:Ljava/lang/String; = "token"

.field private static final UID:Ljava/lang/String; = "uid"


# instance fields
.field private args:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "roomId"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "endPointType"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;-><init>()V

    .line 18
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 20
    .local v1, "tmp":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "roomid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v2, "endpointtype"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/EnterRoom;->args:Ljava/lang/String;

    .line 25
    const-string v2, "enter"

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/EnterRoom;->args:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/EnterRoom;->makeIOSendEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
