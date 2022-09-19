.class Lio/rong/imkit/RongIMClientWrapper$10;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIMClientWrapper;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$messageId:I

.field final synthetic val$sentStatus:Lio/rong/imlib/model/Message$SentStatus;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback;ILio/rong/imlib/model/Message$SentStatus;)V
    .locals 0

    .prologue
    .line 1036
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$10;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$10;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput p3, p0, Lio/rong/imkit/RongIMClientWrapper$10;->val$messageId:I

    iput-object p4, p0, Lio/rong/imkit/RongIMClientWrapper$10;->val$sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 1048
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$10;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$10;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1052
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 1039
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$10;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$10;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1042
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1043
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$10;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/model/Event$MessageSentStatusEvent;

    iget v2, p0, Lio/rong/imkit/RongIMClientWrapper$10;->val$messageId:I

    iget-object v3, p0, Lio/rong/imkit/RongIMClientWrapper$10;->val$sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    invoke-direct {v1, v2, v3}, Lio/rong/imkit/model/Event$MessageSentStatusEvent;-><init>(ILio/rong/imlib/model/Message$SentStatus;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1044
    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1036
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongIMClientWrapper$10;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
