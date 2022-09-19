.class Lio/rong/voipkit/activity/CalledSideActivity$6;
.super Lio/rong/imlib/RongIMClient$ConnectCallback;
.source "CalledSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/CalledSideActivity;->doPush(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/CalledSideActivity;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/CalledSideActivity;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lio/rong/voipkit/activity/CalledSideActivity$6;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ConnectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 334
    const-string v0, "fff"

    const-string v1, "=============voip.connect======onError======================"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 324
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/voipkit/activity/CalledSideActivity$6;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 328
    const-string v0, "fff"

    const-string v1, "=============voip.connect======onSuccess======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$6;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {v0}, Lio/rong/voipkit/activity/CalledSideActivity;->registerReceiveMessage()V

    .line 330
    return-void
.end method

.method public onTokenIncorrect()V
    .locals 2

    .prologue
    .line 339
    const-string v0, "fff"

    const-string v1, "=============voip.connect======onTokenIncorrect======================"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method
