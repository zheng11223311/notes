.class Lio/rong/imkit/RongIMClientWrapper$32;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->syncGroup(Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIMClientWrapper;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

.field final synthetic val$groups:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 0

    .prologue
    .line 2265
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$32;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$32;->val$groups:Ljava/util/List;

    iput-object p3, p0, Lio/rong/imkit/RongIMClientWrapper$32;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 2278
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$32;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 2279
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$32;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2280
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 2269
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$32;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/model/Event$SyncGroupEvent;

    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper$32;->val$groups:Ljava/util/List;

    invoke-direct {v1, v2}, Lio/rong/imkit/model/Event$SyncGroupEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 2271
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$32;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 2272
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$32;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onSuccess()V

    .line 2273
    :cond_0
    return-void
.end method
