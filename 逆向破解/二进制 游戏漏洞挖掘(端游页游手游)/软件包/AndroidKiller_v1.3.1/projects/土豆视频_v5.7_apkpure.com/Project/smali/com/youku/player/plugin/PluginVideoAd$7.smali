.class Lcom/youku/player/plugin/PluginVideoAd$7;
.super Ljava/lang/Object;
.source "PluginVideoAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginVideoAd;->onLoadedListener()V
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
    .line 297
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$7;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$7;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->play_adButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$7;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginVideoAd;->hideLoading()V

    .line 302
    return-void
.end method
