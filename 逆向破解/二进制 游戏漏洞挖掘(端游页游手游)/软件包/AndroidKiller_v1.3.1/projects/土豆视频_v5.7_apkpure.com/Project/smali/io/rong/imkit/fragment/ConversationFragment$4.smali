.class Lio/rong/imkit/fragment/ConversationFragment$4;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationFragment;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationFragment;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 216
    new-instance v3, Lio/rong/message/SuspendMessage;

    invoke-direct {v3}, Lio/rong/message/SuspendMessage;-><init>()V

    .line 217
    .local v3, "msg":Lio/rong/message/SuspendMessage;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lio/rong/imkit/RongIMClientWrapper;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    .line 218
    return-void
.end method
