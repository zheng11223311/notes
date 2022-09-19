.class Lio/rong/imkit/fragment/SetConversationNotificationFragment$2;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "SetConversationNotificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/SetConversationNotificationFragment;->toggleSwitch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/SetConversationNotificationFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/SetConversationNotificationFragment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lio/rong/imkit/fragment/SetConversationNotificationFragment$2;->this$0:Lio/rong/imkit/fragment/SetConversationNotificationFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 103
    iget-object v1, p0, Lio/rong/imkit/fragment/SetConversationNotificationFragment$2;->this$0:Lio/rong/imkit/fragment/SetConversationNotificationFragment;

    iget-object v0, p0, Lio/rong/imkit/fragment/SetConversationNotificationFragment$2;->this$0:Lio/rong/imkit/fragment/SetConversationNotificationFragment;

    invoke-virtual {v0}, Lio/rong/imkit/fragment/SetConversationNotificationFragment;->getSwitchBtnStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lio/rong/imkit/fragment/SetConversationNotificationFragment;->setSwitchBtnStatus(Z)V

    .line 105
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSuccess(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V
    .locals 2
    .param p1, "status"    # Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .prologue
    .line 98
    const-string v0, "SetConversationNotificationFragment"

    const-string v1, "onSuccess--"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/SetConversationNotificationFragment$2;->onSuccess(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    return-void
.end method
