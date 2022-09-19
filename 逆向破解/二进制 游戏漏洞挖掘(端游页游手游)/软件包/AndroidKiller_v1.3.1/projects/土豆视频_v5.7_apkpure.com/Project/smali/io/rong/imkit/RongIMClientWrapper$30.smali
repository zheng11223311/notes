.class Lio/rong/imkit/RongIMClientWrapper$30;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->setConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V
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
.field final synthetic this$0:Lio/rong/imkit/RongIMClientWrapper;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field final synthetic val$notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

.field final synthetic val$targetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V
    .locals 0

    .prologue
    .line 2201
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$30;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput-object p3, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$targetId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iput-object p5, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 2204
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 2205
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2206
    :cond_0
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V
    .locals 5
    .param p1, "status"    # Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .prologue
    .line 2210
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$30;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/model/Event$ConversationNotificationEvent;

    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$targetId:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v4, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    invoke-direct {v1, v2, v3, v4}, Lio/rong/imkit/model/Event$ConversationNotificationEvent;-><init>(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 2211
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$targetId:Ljava/lang/String;

    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {v1, v2}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/rong/imkit/RongContext;->setConversationNotifyStatusToCache(Lio/rong/imkit/model/ConversationKey;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    .line 2213
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 2214
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$30;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 2215
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2201
    check-cast p1, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongIMClientWrapper$30;->onSuccess(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    return-void
.end method
