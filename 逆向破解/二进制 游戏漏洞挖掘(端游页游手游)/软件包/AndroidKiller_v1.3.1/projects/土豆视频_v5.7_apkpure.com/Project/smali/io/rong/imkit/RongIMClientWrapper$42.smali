.class Lio/rong/imkit/RongIMClientWrapper$42;
.super Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->getNotificationQuietHours(Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIMClientWrapper;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;)V
    .locals 0

    .prologue
    .line 2656
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$42;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$42;->val$callback:Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 2668
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$42;->val$callback:Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;

    if-eqz v0, :cond_0

    .line 2669
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$42;->val$callback:Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2671
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;I)V
    .locals 1
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "spanMinutes"    # I

    .prologue
    .line 2659
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$42;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-static {v0, p1, p2}, Lio/rong/imkit/utils/CommonUtils;->saveNotificationQuietHours(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2661
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$42;->val$callback:Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;

    if-eqz v0, :cond_0

    .line 2662
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$42;->val$callback:Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;->onSuccess(Ljava/lang/String;I)V

    .line 2664
    :cond_0
    return-void
.end method
