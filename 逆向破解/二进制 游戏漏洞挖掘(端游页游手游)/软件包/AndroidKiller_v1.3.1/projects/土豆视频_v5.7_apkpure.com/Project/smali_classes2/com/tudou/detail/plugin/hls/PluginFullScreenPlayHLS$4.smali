.class Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$4;
.super Ljava/lang/Object;
.source "PluginFullScreenPlayHLS.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->addContainerClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;


# direct methods
.method constructor <init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$4;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 316
    const-string v0, "test3"

    const-string v1, "onTouch onTouch"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$4;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$100(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    .line 320
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$4;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$202(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;I)I

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$4;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$300(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
