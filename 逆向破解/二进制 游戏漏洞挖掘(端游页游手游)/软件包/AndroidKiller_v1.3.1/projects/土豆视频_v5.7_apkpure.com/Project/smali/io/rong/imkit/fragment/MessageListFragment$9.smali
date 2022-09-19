.class Lio/rong/imkit/fragment/MessageListFragment$9;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lio/rong/imkit/model/UIMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/MessageListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$9;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 574
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$9;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    const-string v1, "IPC:getConversationMessage"

    invoke-virtual {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 566
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/MessageListFragment$9;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/UIMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$9;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-virtual {v0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 570
    return-void
.end method
