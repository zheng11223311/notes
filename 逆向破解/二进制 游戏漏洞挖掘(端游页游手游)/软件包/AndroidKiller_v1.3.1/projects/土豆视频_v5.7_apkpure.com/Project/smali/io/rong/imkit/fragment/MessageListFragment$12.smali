.class Lio/rong/imkit/fragment/MessageListFragment$12;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment;->getConversation()V
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
.field final synthetic this$0:Lio/rong/imkit/fragment/MessageListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment;)V
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 994
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    const-string v1, "fail"

    invoke-virtual {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Conversation;)V
    .locals 11
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 917
    if-eqz p1, :cond_3

    .line 918
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getConversationTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getConversationTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/rong/imlib/model/Conversation;->setConversationTitle(Ljava/lang/String;)V

    .line 921
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iput-object p1, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    .line 924
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-boolean v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->isShowUnreadMessageState:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v0, v1, :cond_1

    .line 929
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getUnreadMessageCount()I

    move-result v1

    iput v1, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    .line 931
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    const/16 v1, 0x96

    if-le v0, v1, :cond_4

    .line 932
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    const-string v1, "150+\u6761\u65b0\u6d88\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 938
    :goto_0
    const/4 v9, 0x0

    .line 940
    .local v9, "readRec":Z
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 945
    :goto_1
    if-ne v9, v10, :cond_2

    .line 946
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v0, v1, :cond_2

    .line 947
    new-instance v3, Lio/rong/message/ReadReceiptMessage;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getSentTime()J

    move-result-wide v0

    invoke-direct {v3, v0, v1}, Lio/rong/message/ReadReceiptMessage;-><init>(J)V

    .line 948
    .local v3, "readRecMsg":Lio/rong/message/ReadReceiptMessage;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lio/rong/imkit/RongIMClientWrapper;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 952
    .end local v3    # "readRecMsg":Lio/rong/message/ReadReceiptMessage;
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    new-instance v1, Lio/rong/imkit/fragment/MessageListFragment$12$1;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/MessageListFragment$12$1;-><init>(Lio/rong/imkit/fragment/MessageListFragment$12;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 989
    .end local v9    # "readRec":Z
    :cond_3
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-virtual {v0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 990
    return-void

    .line 934
    :cond_4
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget v2, v2, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6761\u65b0\u6d88\u606f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 941
    .restart local v9    # "readRec":Z
    :catch_0
    move-exception v8

    .line 942
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v0, "getConversation"

    const-string v1, "rc_read_receipt not configure in rc_config.xml"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {v8}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 914
    check-cast p1, Lio/rong/imlib/model/Conversation;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/MessageListFragment$12;->onSuccess(Lio/rong/imlib/model/Conversation;)V

    return-void
.end method
