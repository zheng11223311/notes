.class Lio/rong/imkit/fragment/ConversationFragment$2;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationFragment;->initFragment(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationFragment;

.field final synthetic val$targetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iput-object p2, p0, Lio/rong/imkit/fragment/ConversationFragment$2;->val$targetId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 161
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v2}, Lio/rong/imkit/fragment/ConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$color;->rc_notice_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Lio/rong/imkit/R$drawable;->rc_ic_notice_loading:I

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v4}, Lio/rong/imkit/fragment/ConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lio/rong/imkit/R$string;->rc_notice_enter_chatroom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lio/rong/imkit/fragment/ConversationFragment;->showNotification(IILjava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$integer;->rc_chatroom_first_pull_message_count:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 165
    .local v0, "pullCount":I
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment$2;->val$targetId:Ljava/lang/String;

    new-instance v3, Lio/rong/imkit/fragment/ConversationFragment$2$1;

    invoke-direct {v3, p0}, Lio/rong/imkit/fragment/ConversationFragment$2$1;-><init>(Lio/rong/imkit/fragment/ConversationFragment$2;)V

    invoke-virtual {v1, v2, v0, v3}, Lio/rong/imkit/RongIMClientWrapper;->joinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 180
    return-void
.end method
