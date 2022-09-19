.class final Lio/rong/push/PushService$ServiceHandler;
.super Landroid/os/Handler;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/push/PushService;


# direct methods
.method public constructor <init>(Lio/rong/push/PushService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 88
    iput-object p1, p0, Lio/rong/push/PushService$ServiceHandler;->this$0:Lio/rong/push/PushService;

    .line 89
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 90
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    iget-object v1, p0, Lio/rong/push/PushService$ServiceHandler;->this$0:Lio/rong/push/PushService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lio/rong/push/PushService;->onHandleIntent(Landroid/content/Intent;)V

    .line 95
    return-void
.end method
