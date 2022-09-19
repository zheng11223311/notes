.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction$1;
.super Ljava/lang/Object;
.source "FullScreenUserAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 21
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    iget-wide v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->lastInteractTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    iget-wide v6, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->lastInteractTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    iput-wide v8, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->lastInteractTime:J

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;)Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;)Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideControllerAndSystemUI()V

    .line 32
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;)Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hidePopWindows()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method
