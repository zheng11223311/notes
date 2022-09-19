.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;
.super Landroid/os/Handler;
.source "PluginFullScreenVertical.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private wr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V
    .locals 1
    .param p1, "outerClass"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 227
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    .line 228
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .line 234
    .local v0, "outerClass":Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 254
    .end local v0    # "outerClass":Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v0    # "outerClass":Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 244
    .local v1, "start":I
    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/widget/SeekBar;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 245
    iget-object v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/tudou/ui/activity/DetailActivity;->seekTo(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v0    # "outerClass":Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .end local v1    # "start":I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0xcc
        :pswitch_0
    .end packed-switch
.end method
