.class Lcom/youku/player/plugin/PluginSimplePlayer$21$1;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/plugin/PluginSimplePlayer$21;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginSimplePlayer$21;)V
    .locals 0

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$21$1;->this$1:Lcom/youku/player/plugin/PluginSimplePlayer$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$21$1;->this$1:Lcom/youku/player/plugin/PluginSimplePlayer$21;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer$21;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2700(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 1081
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$21$1;->this$1:Lcom/youku/player/plugin/PluginSimplePlayer$21;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer$21;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2900(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 1082
    return-void
.end method
