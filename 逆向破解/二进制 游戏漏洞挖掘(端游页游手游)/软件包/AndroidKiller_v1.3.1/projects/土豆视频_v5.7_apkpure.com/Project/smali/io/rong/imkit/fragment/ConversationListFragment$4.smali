.class Lio/rong/imkit/fragment/ConversationListFragment$4;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationListFragment;->onEventMainThread(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationListFragment;

.field final synthetic val$status:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationListFragment;Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    iput-object p2, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->val$status:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->val$status:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne v0, v1, :cond_1

    .line 402
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_network_unavailable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/fragment/ConversationListFragment;->showNotification(Ljava/lang/CharSequence;)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->val$status:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->KICKED_OFFLINE_BY_OTHER_CLIENT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne v0, v1, :cond_2

    .line 404
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_tick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/fragment/ConversationListFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 405
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->val$status:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne v0, v1, :cond_3

    .line 406
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-virtual {v0}, Lio/rong/imkit/fragment/ConversationListFragment;->hiddenNotification()V

    goto :goto_0

    .line 408
    :cond_3
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->val$status:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne v0, v1, :cond_4

    .line 409
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_disconnect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/fragment/ConversationListFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 410
    :cond_4
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->val$status:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTING:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$4;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_connecting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/fragment/ConversationListFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
