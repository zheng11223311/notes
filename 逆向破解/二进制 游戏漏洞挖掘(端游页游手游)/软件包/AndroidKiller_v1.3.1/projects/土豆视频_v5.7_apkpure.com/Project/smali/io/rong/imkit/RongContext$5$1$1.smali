.class Lio/rong/imkit/RongContext$5$1$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "RongContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongContext$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Discussion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lio/rong/imkit/RongContext$5$1;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongContext$5$1;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lio/rong/imkit/RongContext$5$1$1;->this$2:Lio/rong/imkit/RongContext$5$1;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 505
    iget-object v0, p0, Lio/rong/imkit/RongContext$5$1$1;->this$2:Lio/rong/imkit/RongContext$5$1;

    iget-object v0, v0, Lio/rong/imkit/RongContext$5$1;->this$1:Lio/rong/imkit/RongContext$5;

    iget-object v0, v0, Lio/rong/imkit/RongContext$5;->mRequests:Ljava/util/Vector;

    iget-object v1, p0, Lio/rong/imkit/RongContext$5$1$1;->this$2:Lio/rong/imkit/RongContext$5$1;

    iget-object v1, v1, Lio/rong/imkit/RongContext$5$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 506
    iget-object v0, p0, Lio/rong/imkit/RongContext$5$1$1;->this$2:Lio/rong/imkit/RongContext$5$1;

    iget-object v0, v0, Lio/rong/imkit/RongContext$5$1;->this$1:Lio/rong/imkit/RongContext$5;

    iget-object v0, v0, Lio/rong/imkit/RongContext$5;->this$0:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/RongContext$5$1$1;->this$2:Lio/rong/imkit/RongContext$5$1;

    iget-object v1, v1, Lio/rong/imkit/RongContext$5$1;->val$key:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;->obtain(Ljava/lang/String;)Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 507
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Discussion;)V
    .locals 2
    .param p1, "discussion"    # Lio/rong/imlib/model/Discussion;

    .prologue
    .line 494
    if-eqz p1, :cond_0

    .line 495
    iget-object v0, p0, Lio/rong/imkit/RongContext$5$1$1;->this$2:Lio/rong/imkit/RongContext$5$1;

    iget-object v0, v0, Lio/rong/imkit/RongContext$5$1;->this$1:Lio/rong/imkit/RongContext$5;

    iget-object v0, v0, Lio/rong/imkit/RongContext$5;->mRequests:Ljava/util/Vector;

    iget-object v1, p0, Lio/rong/imkit/RongContext$5$1$1;->this$2:Lio/rong/imkit/RongContext$5$1;

    iget-object v1, v1, Lio/rong/imkit/RongContext$5$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lio/rong/imkit/RongContext$5$1$1;->this$2:Lio/rong/imkit/RongContext$5$1;

    iget-object v0, v0, Lio/rong/imkit/RongContext$5$1;->this$1:Lio/rong/imkit/RongContext$5;

    invoke-static {v0}, Lio/rong/imkit/RongContext$5;->access$300(Lio/rong/imkit/RongContext$5;)Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lio/rong/imkit/RongContext$5$1$1;->this$2:Lio/rong/imkit/RongContext$5$1;

    iget-object v0, v0, Lio/rong/imkit/RongContext$5$1;->this$1:Lio/rong/imkit/RongContext$5;

    iget-object v1, p0, Lio/rong/imkit/RongContext$5$1$1;->this$2:Lio/rong/imkit/RongContext$5$1;

    iget-object v1, v1, Lio/rong/imkit/RongContext$5$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lio/rong/imkit/RongContext$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongContext$5$1$1;->this$2:Lio/rong/imkit/RongContext$5$1;

    iget-object v0, v0, Lio/rong/imkit/RongContext$5$1;->this$1:Lio/rong/imkit/RongContext$5;

    iget-object v0, v0, Lio/rong/imkit/RongContext$5;->this$0:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/RongContext$5$1$1;->this$2:Lio/rong/imkit/RongContext$5$1;

    iget-object v1, v1, Lio/rong/imkit/RongContext$5$1;->val$key:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;->obtain(Ljava/lang/String;)Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 489
    check-cast p1, Lio/rong/imlib/model/Discussion;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongContext$5$1$1;->onSuccess(Lio/rong/imlib/model/Discussion;)V

    return-void
.end method
