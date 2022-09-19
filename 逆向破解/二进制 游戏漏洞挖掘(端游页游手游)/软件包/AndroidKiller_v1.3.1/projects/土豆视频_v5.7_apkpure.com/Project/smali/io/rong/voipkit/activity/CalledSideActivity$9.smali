.class Lio/rong/voipkit/activity/CalledSideActivity$9;
.super Ljava/lang/Object;
.source "CalledSideActivity.java"

# interfaces
.implements Lio/rong/imlib/RongIMClient$ConnectionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/CalledSideActivity;->registerReceiveMessage()V
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
    .line 406
    iput-object p1, p0, Lio/rong/voipkit/activity/CalledSideActivity$9;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V
    .locals 2
    .param p1, "status"    # Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    .prologue
    .line 409
    sget-object v0, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->KICKED_OFFLINE_BY_OTHER_CLIENT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne v0, p1, :cond_0

    .line 410
    const-string v0, "aff"

    const-string v1, "================================\u4f60\u88ab\u8e22\u4e86==============================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$9;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v0, v0, Lio/rong/voipkit/activity/CalledSideActivity;->doPushRecevieHandler:Landroid/os/Handler;

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 413
    :cond_0
    return-void
.end method
