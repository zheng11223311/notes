.class Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$7;
.super Ljava/lang/Object;
.source "PluginFullScreenPlayHLS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;
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
    .line 612
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$7;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$7;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$1300(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$7;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$1300(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 618
    :cond_0
    return-void
.end method
