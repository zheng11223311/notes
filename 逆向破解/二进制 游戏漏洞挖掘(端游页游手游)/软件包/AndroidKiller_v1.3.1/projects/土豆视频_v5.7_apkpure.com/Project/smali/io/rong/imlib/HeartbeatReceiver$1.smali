.class Lio/rong/imlib/HeartbeatReceiver$1;
.super Ljava/lang/Object;
.source "HeartbeatReceiver.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$PingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/HeartbeatReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/HeartbeatReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/rong/imlib/HeartbeatReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lio/rong/imlib/HeartbeatReceiver$1;->this$0:Lio/rong/imlib/HeartbeatReceiver;

    iput-object p2, p0, Lio/rong/imlib/HeartbeatReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "PING"

    const-string v1, "fail"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lio/rong/imlib/HeartbeatReceiver$1;->this$0:Lio/rong/imlib/HeartbeatReceiver;

    iget-object v1, p0, Lio/rong/imlib/HeartbeatReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/rong/imlib/HeartbeatReceiver;->access$000(Lio/rong/imlib/HeartbeatReceiver;Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "PING"

    const-string/jumbo v1, "success"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method
