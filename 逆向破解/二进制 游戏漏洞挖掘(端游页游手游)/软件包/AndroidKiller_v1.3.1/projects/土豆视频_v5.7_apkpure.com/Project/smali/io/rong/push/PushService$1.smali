.class final Lio/rong/push/PushService$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    const-string/jumbo v0, "runnable"

    const-string v1, "no PINGRESP received. connect again!!!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lio/rong/push/PushService;->access$000()Lio/rong/push/PushService$PushHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/rong/push/PushService$PushHandler;->disConnect(Landroid/content/Intent;)V

    .line 82
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/push/PushContext;->cancelHeartbeat()V

    .line 83
    invoke-static {}, Lio/rong/push/PushService;->access$000()Lio/rong/push/PushService$PushHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/rong/push/PushService$PushHandler;->connect(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
