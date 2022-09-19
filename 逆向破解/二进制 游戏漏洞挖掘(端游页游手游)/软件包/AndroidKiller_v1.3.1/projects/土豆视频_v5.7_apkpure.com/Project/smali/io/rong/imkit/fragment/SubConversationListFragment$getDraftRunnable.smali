.class Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;
.super Ljava/lang/Object;
.source "SubConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/fragment/SubConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getDraftRunnable"
.end annotation


# instance fields
.field conversation:Lio/rong/imkit/model/UIConversation;

.field index:I

.field final synthetic this$0:Lio/rong/imkit/fragment/SubConversationListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/SubConversationListFragment;Lio/rong/imkit/model/UIConversation;I)V
    .locals 0
    .param p2, "conversation"    # Lio/rong/imkit/model/UIConversation;
    .param p3, "index"    # I

    .prologue
    .line 852
    iput-object p1, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iput-object p2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->conversation:Lio/rong/imkit/model/UIConversation;

    .line 854
    iput p3, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->index:I

    .line 855
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 859
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->conversation:Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v1}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "targetId":Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->conversation:Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;

    invoke-direct {v3, p0}, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;)V

    invoke-virtual {v1, v2, v0, v3}, Lio/rong/imlib/RongIMClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 879
    return-void
.end method
