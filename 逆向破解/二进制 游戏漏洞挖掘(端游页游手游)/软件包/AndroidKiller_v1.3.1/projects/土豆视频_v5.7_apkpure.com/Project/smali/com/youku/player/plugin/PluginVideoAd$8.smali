.class Lcom/youku/player/plugin/PluginVideoAd$8;
.super Ljava/lang/Object;
.source "PluginVideoAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginVideoAd;->onLoadingListener()V
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
    .line 308
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$8;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$8;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginVideoAd;->showLoading()V

    .line 312
    return-void
.end method
