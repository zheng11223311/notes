.class Lio/rong/imlib/RongIMClient$94$1;
.super Lio/rong/imlib/IRealTimeLocationListener$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$94;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$94;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$94;)V
    .locals 0

    .prologue
    .line 6571
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$94$1;->this$1:Lio/rong/imlib/RongIMClient$94;

    invoke-direct {p0}, Lio/rong/imlib/IRealTimeLocationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 6622
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$94$1;->this$1:Lio/rong/imlib/RongIMClient$94;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$94;->val$listener:Lio/rong/imlib/RongIMClient$RealTimeLocationListener;

    if-eqz v0, :cond_0

    .line 6623
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$94$1$5;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$94$1$5;-><init>(Lio/rong/imlib/RongIMClient$94$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6630
    :cond_0
    return-void
.end method

.method public onParticipantsJoin(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 6598
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$94$1;->this$1:Lio/rong/imlib/RongIMClient$94;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$94;->val$listener:Lio/rong/imlib/RongIMClient$RealTimeLocationListener;

    if-eqz v0, :cond_0

    .line 6599
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$94$1$3;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$94$1$3;-><init>(Lio/rong/imlib/RongIMClient$94$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6606
    :cond_0
    return-void
.end method

.method public onParticipantsQuit(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 6610
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$94$1;->this$1:Lio/rong/imlib/RongIMClient$94;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$94;->val$listener:Lio/rong/imlib/RongIMClient$RealTimeLocationListener;

    if-eqz v0, :cond_0

    .line 6611
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$94$1$4;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$94$1$4;-><init>(Lio/rong/imlib/RongIMClient$94$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6618
    :cond_0
    return-void
.end method

.method public onReceiveLocation(DDLjava/lang/String;)V
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "userId"    # Ljava/lang/String;

    .prologue
    .line 6586
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$94$1;->this$1:Lio/rong/imlib/RongIMClient$94;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$94;->val$listener:Lio/rong/imlib/RongIMClient$RealTimeLocationListener;

    if-eqz v0, :cond_0

    .line 6587
    sget-object v7, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$94$1$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/rong/imlib/RongIMClient$94$1$2;-><init>(Lio/rong/imlib/RongIMClient$94$1;DDLjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6594
    :cond_0
    return-void
.end method

.method public onStatusChange(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 6574
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$94$1;->this$1:Lio/rong/imlib/RongIMClient$94;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$94;->val$listener:Lio/rong/imlib/RongIMClient$RealTimeLocationListener;

    if-eqz v0, :cond_0

    .line 6575
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$94$1$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$94$1$1;-><init>(Lio/rong/imlib/RongIMClient$94$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6582
    :cond_0
    return-void
.end method
