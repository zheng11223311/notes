.class Lio/rong/imkit/widget/adapter/ConversationListAdapter$3;
.super Ljava/lang/Object;
.source "ConversationListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/adapter/ConversationListAdapter;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

.field final synthetic val$data:Lio/rong/imkit/model/UIConversation;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/adapter/ConversationListAdapter;Lio/rong/imkit/model/UIConversation;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$3;->this$0:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iput-object p2, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$3;->val$data:Lio/rong/imkit/model/UIConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$3;->this$0:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v1, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$3;->val$data:Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$3;->val$data:Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lio/rong/imkit/RongIM$ConversationListBehaviorListener;->onConversationPortraitClick(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    .line 201
    :cond_0
    return-void
.end method
