.class Lcom/youku/player/plugin/PluginSimplePlayer$24;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->onLoadedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginSimplePlayer;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$24;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$24;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideLoading()V

    .line 1168
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$24;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2800(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 1169
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$24;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$3100(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 1170
    return-void
.end method
