.class Lcom/youku/player/plugin/PluginVideoAd$13;
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
    .line 601
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$13;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 606
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd$13;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginVideoAd;->access$1000(Lcom/youku/player/plugin/PluginVideoAd;)I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 607
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd$13;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginVideoAd;->access$1008(Lcom/youku/player/plugin/PluginVideoAd;)I

    .line 608
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd$13;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginVideoAd;->access$800(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd$13;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginVideoAd;->access$1000(Lcom/youku/player/plugin/PluginVideoAd;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 609
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$13$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$13$1;-><init>(Lcom/youku/player/plugin/PluginVideoAd$13;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 616
    .local v0, "temp":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 619
    .end local v0    # "temp":Ljava/lang/Thread;
    :cond_0
    return-void
.end method
