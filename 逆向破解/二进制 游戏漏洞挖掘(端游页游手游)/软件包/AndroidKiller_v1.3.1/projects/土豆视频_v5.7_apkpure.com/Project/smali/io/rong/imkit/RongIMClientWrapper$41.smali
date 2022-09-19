.class Lio/rong/imkit/RongIMClientWrapper$41;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->removeNotificationQuietHours(Lio/rong/imlib/RongIMClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIMClientWrapper;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 0

    .prologue
    .line 2627
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$41;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$41;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 2639
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$41;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 2640
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$41;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2642
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 2630
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$41;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    const-string v1, "-1"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lio/rong/imkit/utils/CommonUtils;->saveNotificationQuietHours(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2632
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$41;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 2633
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$41;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onSuccess()V

    .line 2635
    :cond_0
    return-void
.end method
