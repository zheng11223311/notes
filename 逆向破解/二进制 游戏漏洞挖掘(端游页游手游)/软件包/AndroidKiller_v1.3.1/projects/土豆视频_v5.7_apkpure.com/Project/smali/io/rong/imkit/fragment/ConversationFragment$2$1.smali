.class Lio/rong/imkit/fragment/ConversationFragment$2$1;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "ConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/ConversationFragment$2;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationFragment$2;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment$2$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$2;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 173
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->KICKED_FROM_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p1, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment$2$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$2;

    iget-object v0, v0, Lio/rong/imkit/fragment/ConversationFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$2$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$2;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_kicked_from_chatroom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/fragment/ConversationFragment;->showNotification(Ljava/lang/CharSequence;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment$2$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$2;

    iget-object v0, v0, Lio/rong/imkit/fragment/ConversationFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v0}, Lio/rong/imkit/fragment/ConversationFragment;->hiddenNotification()V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment$2$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$2;

    iget-object v0, v0, Lio/rong/imkit/fragment/ConversationFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v0}, Lio/rong/imkit/fragment/ConversationFragment;->hiddenNotification()V

    .line 169
    return-void
.end method
