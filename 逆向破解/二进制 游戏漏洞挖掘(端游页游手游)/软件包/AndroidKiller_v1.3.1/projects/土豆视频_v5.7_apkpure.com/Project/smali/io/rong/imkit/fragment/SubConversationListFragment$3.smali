.class Lio/rong/imkit/fragment/SubConversationListFragment$3;
.super Ljava/lang/Object;
.source "SubConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/SubConversationListFragment;->onEventMainThread(Lio/rong/imkit/model/Event$MessageDeleteEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/SubConversationListFragment;I)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lio/rong/imkit/fragment/SubConversationListFragment$3;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    iput p2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 613
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$3;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-static {v2}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v2

    iget v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment$3;->val$index:I

    invoke-virtual {v2, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$3;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-static {v2}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v2

    iget v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment$3;->val$index:I

    invoke-virtual {v2, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v1

    .line 615
    .local v1, "temp":Lio/rong/imlib/model/Conversation;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 616
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 617
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 618
    iget v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$3;->val$index:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 619
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$3;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-virtual {v2}, Lio/rong/imkit/fragment/SubConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 620
    return-void
.end method
