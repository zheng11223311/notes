.class Lio/rong/imkit/fragment/ConversationListFragment$13;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationListFragment;->buildSingleDialog(Lio/rong/imkit/model/UIConversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationListFragment;

.field final synthetic val$uiConversation:Lio/rong/imkit/model/UIConversation;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationListFragment;Lio/rong/imkit/model/UIConversation;)V
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationListFragment$13;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    iput-object p2, p0, Lio/rong/imkit/fragment/ConversationListFragment$13;->val$uiConversation:Lio/rong/imkit/model/UIConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnArraysDialogItemClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1108
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/fragment/ConversationListFragment$13$1;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/ConversationListFragment$13$1;-><init>(Lio/rong/imkit/fragment/ConversationListFragment$13;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lio/rong/imlib/model/Conversation$ConversationType;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment$13;->val$uiConversation:Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lio/rong/imkit/RongIMClientWrapper;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1122
    return-void
.end method
