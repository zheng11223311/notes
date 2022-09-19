.class Lio/rong/imkit/fragment/SubConversationListFragment$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "SubConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/fragment/SubConversationListFragment;
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
.field final synthetic this$0:Lio/rong/imkit/fragment/SubConversationListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/SubConversationListFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 96
    const-string v0, "SubConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFragment onError callback, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/SubConversationListFragment$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 10
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
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    const/4 v9, 0x0

    .line 64
    const-string v6, "SubConversationListFragment"

    const-string v7, "initFragment onSuccess callback"

    invoke-static {p0, v6, v7}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v5, "uiConversationList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIConversation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Conversation;

    .line 70
    .local v0, "conversation":Lio/rong/imlib/model/Conversation;
    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-static {v6}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 71
    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-static {v6}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v6

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v3

    .line 72
    .local v3, "pos":I
    if-gez v3, :cond_2

    .line 73
    invoke-static {v0, v9}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v4

    .line 74
    .local v4, "uiConversation":Lio/rong/imkit/model/UIConversation;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    .end local v3    # "pos":I
    .end local v4    # "uiConversation":Lio/rong/imkit/model/UIConversation;
    :cond_3
    invoke-static {v0, v9}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v4

    .line 78
    .restart local v4    # "uiConversation":Lio/rong/imkit/model/UIConversation;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    .end local v0    # "conversation":Lio/rong/imlib/model/Conversation;
    .end local v4    # "uiConversation":Lio/rong/imkit/model/UIConversation;
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 83
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    new-instance v8, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;

    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/rong/imkit/model/UIConversation;

    invoke-direct {v8, v9, v6, v1}, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment;Lio/rong/imkit/model/UIConversation;I)V

    invoke-virtual {v7, v8}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_5
    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-static {v6}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->addCollection(Ljava/util/Collection;)V

    .line 88
    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-static {v6}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$100(Lio/rong/imkit/fragment/SubConversationListFragment;)Landroid/widget/ListView;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-static {v6}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$100(Lio/rong/imkit/fragment/SubConversationListFragment;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 89
    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-static {v6}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
