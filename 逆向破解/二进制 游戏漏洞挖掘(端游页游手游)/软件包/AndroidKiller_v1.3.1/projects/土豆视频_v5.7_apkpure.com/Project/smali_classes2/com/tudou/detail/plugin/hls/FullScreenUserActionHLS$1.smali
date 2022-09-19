.class Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS$1;
.super Ljava/lang/Object;
.source "FullScreenUserActionHLS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;


# direct methods
.method constructor <init>(Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 21
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    iget-wide v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->lastInteractTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->access$000(Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->access$000(Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    iget-wide v6, v1, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->lastInteractTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    iput-wide v8, v0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->lastInteractTime:J

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->access$100(Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;)Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->stopUserAction:Z

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->access$100(Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;)Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideControllerAndSystemUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method
