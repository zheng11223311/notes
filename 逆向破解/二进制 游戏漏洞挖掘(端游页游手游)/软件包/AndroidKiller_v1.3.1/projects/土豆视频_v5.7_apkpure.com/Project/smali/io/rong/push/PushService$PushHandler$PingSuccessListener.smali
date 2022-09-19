.class Lio/rong/push/PushService$PushHandler$PingSuccessListener;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lio/rong/push/PushClient$PingSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushService$PushHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingSuccessListener"
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/push/PushService$PushHandler;


# direct methods
.method private constructor <init>(Lio/rong/push/PushService$PushHandler;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lio/rong/push/PushService$PushHandler$PingSuccessListener;->this$1:Lio/rong/push/PushService$PushHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/push/PushService$PushHandler;Lio/rong/push/PushService$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/push/PushService$PushHandler;
    .param p2, "x1"    # Lio/rong/push/PushService$1;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lio/rong/push/PushService$PushHandler$PingSuccessListener;-><init>(Lio/rong/push/PushService$PushHandler;)V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 430
    const-string v0, "PingSuccessListener"

    const-string v1, "Receive PingResp. Cancel the runnable."

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler$PingSuccessListener;->this$1:Lio/rong/push/PushService$PushHandler;

    iget-object v0, v0, Lio/rong/push/PushService$PushHandler;->this$0:Lio/rong/push/PushService;

    invoke-static {v0}, Lio/rong/push/PushService;->access$600(Lio/rong/push/PushService;)Lio/rong/push/PushService$ServiceHandler;

    move-result-object v0

    invoke-static {}, Lio/rong/push/PushService;->access$500()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/push/PushService$ServiceHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method
