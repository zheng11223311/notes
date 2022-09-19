.class Lio/rong/imkit/fragment/ConversationListFragment$6;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationListFragment;->onEventMainThread(Lio/rong/imkit/model/Event$ConversationRemoveEvent;)V
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
        "Lio/rong/imlib/model/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationListFragment;

.field final synthetic val$removedIndex:I


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationListFragment;I)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationListFragment$6;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    iput p2, p0, Lio/rong/imkit/fragment/ConversationListFragment$6;->val$removedIndex:I

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 782
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 769
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$6;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 773
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 774
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 775
    iget v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$6;->val$removedIndex:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 776
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$6;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 777
    return-void
.end method
