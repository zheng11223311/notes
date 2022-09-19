.class Lcom/tudou/android/chat/ChatConversationView$3;
.super Ljava/lang/Object;
.source "ChatConversationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatConversationView;->resetConversationFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatConversationView;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatConversationView;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/tudou/android/chat/ChatConversationView$3;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 161
    iget-object v2, p0, Lcom/tudou/android/chat/ChatConversationView$3;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    invoke-static {v2}, Lcom/tudou/android/chat/ChatConversationView;->access$200(Lcom/tudou/android/chat/ChatConversationView;)Lio/rong/imkit/fragment/ConversationFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/android/chat/ChatConversationView$3;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    invoke-static {v2}, Lcom/tudou/android/chat/ChatConversationView;->access$200(Lcom/tudou/android/chat/ChatConversationView;)Lio/rong/imkit/fragment/ConversationFragment;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/fragment/ConversationFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/tudou/android/chat/ChatConversationView$3;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    invoke-static {v2}, Lcom/tudou/android/chat/ChatConversationView;->access$200(Lcom/tudou/android/chat/ChatConversationView;)Lio/rong/imkit/fragment/ConversationFragment;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/fragment/ConversationFragment;->getMessageListFragment()Lio/rong/imkit/fragment/UriFragment;

    move-result-object v1

    .line 163
    .local v1, "uriFragment":Lio/rong/imkit/fragment/UriFragment;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 164
    check-cast v0, Lio/rong/imkit/fragment/MessageListFragment;

    .line 165
    .local v0, "messageListFragment":Lio/rong/imkit/fragment/MessageListFragment;
    invoke-virtual {v0}, Lio/rong/imkit/fragment/MessageListFragment;->scrollToEnd()V

    .line 168
    .end local v0    # "messageListFragment":Lio/rong/imkit/fragment/MessageListFragment;
    .end local v1    # "uriFragment":Lio/rong/imkit/fragment/UriFragment;
    :cond_0
    return-void
.end method
