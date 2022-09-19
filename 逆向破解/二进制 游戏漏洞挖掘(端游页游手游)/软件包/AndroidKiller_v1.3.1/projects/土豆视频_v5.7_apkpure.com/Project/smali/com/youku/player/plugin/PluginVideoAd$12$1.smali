.class Lcom/youku/player/plugin/PluginVideoAd$12$1;
.super Ljava/lang/Object;
.source "PluginVideoAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginVideoAd$12;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/plugin/PluginVideoAd$12;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginVideoAd$12;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$12$1;->this$1:Lcom/youku/player/plugin/PluginVideoAd$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 588
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$12$1;->this$1:Lcom/youku/player/plugin/PluginVideoAd$12;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd$12;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$900(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 589
    return-void
.end method
