.class Lio/rong/imkit/RongIMClientWrapper$21;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIMClientWrapper;

.field final synthetic val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

.field final synthetic val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 0

    .prologue
    .line 1642
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$21;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$21;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iput-object p3, p0, Lio/rong/imkit/RongIMClientWrapper$21;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 1658
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$21;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1659
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$21;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$21;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1661
    :cond_0
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 3
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 1645
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$21;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iput-object p1, v1, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1646
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/rong/imlib/MessageTag;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/MessageTag;

    .line 1648
    .local v0, "tag":Lio/rong/imlib/MessageTag;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1649
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$21;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v1, v1, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1652
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$21;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v1, :cond_1

    .line 1653
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$21;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v1, p1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1654
    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1642
    check-cast p1, Lio/rong/imlib/model/Message;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongIMClientWrapper$21;->onSuccess(Lio/rong/imlib/model/Message;)V

    return-void
.end method
