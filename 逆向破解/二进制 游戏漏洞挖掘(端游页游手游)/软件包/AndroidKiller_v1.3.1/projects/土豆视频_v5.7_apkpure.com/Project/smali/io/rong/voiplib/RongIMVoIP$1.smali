.class final Lio/rong/voiplib/RongIMVoIP$1;
.super Ljava/lang/Object;
.source "RongIMVoIP.java"

# interfaces
.implements Lio/rong/voiplib/NativeObject$AcceptVoIPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voiplib/RongIMVoIP;->endVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorcode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, "HYJ"

    const-string v1, "java enter OnError"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public OnSuccess()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "HYJ"

    const-string v1, "java enter OnSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method
