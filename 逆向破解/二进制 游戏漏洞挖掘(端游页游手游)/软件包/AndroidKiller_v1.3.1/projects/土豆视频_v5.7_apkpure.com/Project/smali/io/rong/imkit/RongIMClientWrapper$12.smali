.class Lio/rong/imkit/RongIMClientWrapper$12;
.super Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIMClientWrapper;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$userIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V
    .locals 0

    .prologue
    .line 1210
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$12;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$12;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lio/rong/imkit/RongIMClientWrapper$12;->val$userIdList:Ljava/util/List;

    iput-object p4, p0, Lio/rong/imkit/RongIMClientWrapper$12;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 1221
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$12;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$12;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1223
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1210
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongIMClientWrapper$12;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "discussionId"    # Ljava/lang/String;

    .prologue
    .line 1213
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$12;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/model/Event$CreateDiscussionEvent;

    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper$12;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imkit/RongIMClientWrapper$12;->val$userIdList:Ljava/util/List;

    invoke-direct {v1, p1, v2, v3}, Lio/rong/imkit/model/Event$CreateDiscussionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1215
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$12;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$12;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;->onCallback(Ljava/lang/Object;)V

    .line 1217
    :cond_0
    return-void
.end method
