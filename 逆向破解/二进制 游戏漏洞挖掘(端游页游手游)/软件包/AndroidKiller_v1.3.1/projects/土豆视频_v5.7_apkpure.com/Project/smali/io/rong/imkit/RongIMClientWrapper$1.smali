.class final Lio/rong/imkit/RongIMClientWrapper$1;
.super Lio/rong/imlib/RongIMClient$ConnectCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imkit/RongIMClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$ConnectCallback;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ConnectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 125
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 129
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lio/rong/imkit/model/Event$ConnectEvent;->obtain(Z)Lio/rong/imkit/model/Event$ConnectEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 114
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongIMClientWrapper$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onSuccess(Ljava/lang/Object;)V

    .line 120
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lio/rong/imkit/model/Event$ConnectEvent;->obtain(Z)Lio/rong/imkit/model/Event$ConnectEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public onTokenIncorrect()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onTokenIncorrect()V

    .line 136
    :cond_0
    return-void
.end method
