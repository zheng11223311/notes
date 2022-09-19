.class Lcom/youku/player/plugin/PluginVideoAd$12;
.super Landroid/os/Handler;
.source "PluginVideoAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/plugin/PluginVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginVideoAd;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginVideoAd;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$12;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x32

    .line 581
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd$12;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginVideoAd;->access$1000(Lcom/youku/player/plugin/PluginVideoAd;)I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 582
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd$12;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginVideoAd;->access$1008(Lcom/youku/player/plugin/PluginVideoAd;)I

    .line 583
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd$12;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginVideoAd;->access$800(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd$12;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginVideoAd;->access$1000(Lcom/youku/player/plugin/PluginVideoAd;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 584
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$12$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$12$1;-><init>(Lcom/youku/player/plugin/PluginVideoAd$12;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 591
    .local v0, "temp":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 596
    .end local v0    # "temp":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd$12;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginVideoAd;->access$800(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
