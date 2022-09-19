.class public Lio/rong/push/PushConst$PushAction;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushAction"
.end annotation


# static fields
.field public static final ACTION_CONNECT:Ljava/lang/String; = "io.rong.push.Connect"

.field public static final ACTION_DISCONNECT:Ljava/lang/String; = "io.rong.push.Disconnect"

.field public static final ACTION_HEARTBEAT:Ljava/lang/String; = "io.rong.push.HeartBeat"

.field public static final ACTION_PUSH_COMMAND:Ljava/lang/String; = "io.rong.command"

.field public static final ACTION_PUSH_MESSAGE_ARRIVED:Ljava/lang/String; = "io.rong.push.message"

.field public static final ACTION_STOP_HEART:Ljava/lang/String; = "io.rong.push.StopHeartBeat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
