.class Lcom/youku/player/plugin/PluginSimplePlayer$6;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->initEndPage()V
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
    .line 311
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$6;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 315
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$6;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$600(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 318
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$6;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$700(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 319
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$6;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$800(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    goto :goto_0
.end method
