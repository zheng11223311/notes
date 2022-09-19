.class Lio/rong/imkit/fragment/ConversationListFragment$8;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationListFragment;->onEventMainThread(Lio/rong/imkit/model/Event$MessageDeleteEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationListFragment;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationListFragment;I)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationListFragment$8;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    iput p2, p0, Lio/rong/imkit/fragment/ConversationListFragment$8;->val$index:I

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 833
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Conversation;)V
    .locals 3
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;

    .prologue
    .line 818
    if-nez p1, :cond_0

    .line 819
    const-string v1, "onEventMainThread"

    const-string v2, "getConversation : onSuccess, conversation = null"

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :goto_0
    return-void

    .line 823
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 824
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 825
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 826
    iget v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$8;->val$index:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 827
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$8;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 815
    check-cast p1, Lio/rong/imlib/model/Conversation;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$8;->onSuccess(Lio/rong/imlib/model/Conversation;)V

    return-void
.end method
