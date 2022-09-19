.class Lio/rong/imkit/widget/adapter/MessageListAdapter$6;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/adapter/MessageListAdapter;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/adapter/MessageListAdapter;

.field final synthetic val$data:Lio/rong/imkit/model/UIMessage;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;I)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;->this$0:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iput-object p2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;->val$data:Lio/rong/imkit/model/UIMessage;

    iput p3, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 468
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getConversationBehaviorListener()Lio/rong/imkit/RongIM$ConversationBehaviorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getConversationBehaviorListener()Lio/rong/imkit/RongIM$ConversationBehaviorListener;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;->this$0:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v2, v2, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;->val$data:Lio/rong/imkit/model/UIMessage;

    invoke-interface {v1, v2, p1, v3}, Lio/rong/imkit/RongIM$ConversationBehaviorListener;->onMessageLongClick(Landroid/content/Context;Landroid/view/View;Lio/rong/imlib/model/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    :goto_0
    return v4

    .line 472
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;->val$data:Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v0

    .line 473
    .local v0, "provider":Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    iget v1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;->val$position:I

    iget-object v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;->val$data:Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;->val$data:Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v0, p1, v1, v2, v3}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V

    goto :goto_0
.end method
