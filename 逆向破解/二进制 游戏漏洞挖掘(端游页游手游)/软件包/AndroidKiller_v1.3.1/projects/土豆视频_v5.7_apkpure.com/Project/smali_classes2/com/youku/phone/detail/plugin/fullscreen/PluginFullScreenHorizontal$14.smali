.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$14;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$14;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1128
    const-string v1, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v2, 0x190

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1134
    :goto_0
    return-void

    .line 1131
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$14;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideController(Z)V

    .line 1132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1133
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$14;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    move-result-object v1

    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->MORE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$14;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v2, v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->initialize(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    goto :goto_0
.end method
