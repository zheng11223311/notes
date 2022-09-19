.class Lcom/youku/player/plugin/PluginSimplePlayer$23;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->OnTimeoutListener()V
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
    .line 1123
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$23;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$23;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2700(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 1127
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$23;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2900(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 1128
    return-void
.end method
