.class Lio/rong/voipkit/activity/CalledSideActivity$MySendMessageCallback;
.super Lio/rong/imlib/RongIMClient$SendMessageCallback;
.source "CalledSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/voipkit/activity/CalledSideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MySendMessageCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/CalledSideActivity;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/CalledSideActivity;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lio/rong/voipkit/activity/CalledSideActivity$MySendMessageCallback;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/Integer;
    .param p2, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 436
    const-string v0, "SendMessageBroadcast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================onError=============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 441
    const-string v0, "SendMessageBroadcast"

    const-string v1, "=================onSucces===================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 432
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/voipkit/activity/CalledSideActivity$MySendMessageCallback;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
