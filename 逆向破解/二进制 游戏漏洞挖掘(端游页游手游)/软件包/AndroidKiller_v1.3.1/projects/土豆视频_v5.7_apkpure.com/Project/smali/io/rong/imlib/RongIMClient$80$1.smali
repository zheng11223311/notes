.class Lio/rong/imlib/RongIMClient$80$1;
.super Lio/rong/imlib/IStringCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$80;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$80;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$80;)V
    .locals 0

    .prologue
    .line 4520
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$80$1;->this$1:Lio/rong/imlib/RongIMClient$80;

    invoke-direct {p0}, Lio/rong/imlib/IStringCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4524
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$80$1;->this$1:Lio/rong/imlib/RongIMClient$80;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$GetBlacklistCallback;

    if-eqz v0, :cond_0

    .line 4525
    if-nez p1, :cond_1

    .line 4526
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$80$1;->this$1:Lio/rong/imlib/RongIMClient$80;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$GetBlacklistCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$GetBlacklistCallback;->onCallback(Ljava/lang/Object;)V

    .line 4530
    :cond_0
    :goto_0
    return-void

    .line 4528
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$80$1;->this$1:Lio/rong/imlib/RongIMClient$80;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$GetBlacklistCallback;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$GetBlacklistCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onFailure(I)V
    .locals 1
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4535
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$80$1;->this$1:Lio/rong/imlib/RongIMClient$80;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$GetBlacklistCallback;

    if-eqz v0, :cond_0

    .line 4536
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$80$1;->this$1:Lio/rong/imlib/RongIMClient$80;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$GetBlacklistCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$GetBlacklistCallback;->onFail(I)V

    .line 4538
    :cond_0
    return-void
.end method
