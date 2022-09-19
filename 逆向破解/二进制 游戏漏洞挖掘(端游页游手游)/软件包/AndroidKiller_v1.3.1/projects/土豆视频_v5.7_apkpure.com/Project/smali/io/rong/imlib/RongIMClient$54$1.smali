.class Lio/rong/imlib/RongIMClient$54$1;
.super Lio/rong/imlib/ILongSendMessageCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$54;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$54;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$54;)V
    .locals 0

    .prologue
    .line 3068
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$54$1;->this$1:Lio/rong/imlib/RongIMClient$54;

    invoke-direct {p0}, Lio/rong/imlib/ILongSendMessageCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(J)V
    .locals 3
    .param p1, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3073
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$54$1;->this$1:Lio/rong/imlib/RongIMClient$54;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$54;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    if-eqz v0, :cond_0

    .line 3074
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$54$1;->this$1:Lio/rong/imlib/RongIMClient$54;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$54;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onCallback(Ljava/lang/Object;)V

    .line 3076
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$54$1;->this$1:Lio/rong/imlib/RongIMClient$54;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$54;->this$0:Lio/rong/imlib/RongIMClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/rong/imlib/RongIMClient;->access$002(Lio/rong/imlib/RongIMClient;I)I

    .line 3077
    return-void
.end method

.method public onFailure(JI)V
    .locals 5
    .param p1, "result"    # J
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3082
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$54$1;->this$1:Lio/rong/imlib/RongIMClient$54;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$54;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    if-eqz v0, :cond_0

    .line 3083
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$54$1;->this$1:Lio/rong/imlib/RongIMClient$54;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$54;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onFail(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3085
    :cond_0
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1400()Ljava/util/List;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3086
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$54$1;->this$1:Lio/rong/imlib/RongIMClient$54;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$54;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->access$100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3087
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$54$1;->this$1:Lio/rong/imlib/RongIMClient$54;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$54;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3088
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$54$1;->this$1:Lio/rong/imlib/RongIMClient$54;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$54;->this$0:Lio/rong/imlib/RongIMClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/rong/imlib/RongIMClient;->access$102(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ReconnectRunnable;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 3090
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$54$1;->this$1:Lio/rong/imlib/RongIMClient$54;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$54;->this$0:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$54$1;->this$1:Lio/rong/imlib/RongIMClient$54;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient$54;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {v1, v2}, Lio/rong/imlib/RongIMClient$ReconnectRunnable;-><init>(Lio/rong/imlib/RongIMClient;)V

    invoke-static {v0, v1}, Lio/rong/imlib/RongIMClient;->access$102(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ReconnectRunnable;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 3091
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$54$1;->this$1:Lio/rong/imlib/RongIMClient$54;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$54;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3093
    :cond_2
    return-void
.end method
