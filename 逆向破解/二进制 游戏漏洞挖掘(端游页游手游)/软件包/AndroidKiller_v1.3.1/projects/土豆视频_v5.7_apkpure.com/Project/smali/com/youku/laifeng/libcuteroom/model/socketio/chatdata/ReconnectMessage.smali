.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ReconnectMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "ReconnectMessage.java"


# static fields
.field public static final ARGS:Ljava/lang/String; = "args"

.field public static final ARGS_ROOM_ID:Ljava/lang/String; = "roomid"

.field public static final ARGS_TIME:Ljava/lang/String; = "time"

.field public static final RECONNECT_MESSAGE:Ljava/lang/String; = "reconnect"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 15
    return-void
.end method
