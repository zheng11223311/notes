.class Lcom/youku/player/base/MediaPlayerInit$10$1;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit$10;->onCurrentPositionUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/base/MediaPlayerInit$10;

.field final synthetic val$currentPosition:I


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit$10;I)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$10$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$10;

    iput p2, p0, Lcom/youku/player/base/MediaPlayerInit$10$1;->val$currentPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$10;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$10;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget v1, p0, Lcom/youku/player/base/MediaPlayerInit$10$1;->val$currentPosition:I

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginManager;->onCurrentPositionChange(I)V

    .line 410
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$10;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$10;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$10;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$10;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$10;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$10;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getSubtitleOperate()Lcom/youku/player/subtitle/SubtitleOperate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$10;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$10;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getSubtitleOperate()Lcom/youku/player/subtitle/SubtitleOperate;

    move-result-object v0

    iget v1, p0, Lcom/youku/player/base/MediaPlayerInit$10$1;->val$currentPosition:I

    invoke-virtual {v0, v1}, Lcom/youku/player/subtitle/SubtitleOperate;->showSubtitle(I)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$10;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$10;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getSubtitleOperate()Lcom/youku/player/subtitle/SubtitleOperate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$10;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$10;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getSubtitleOperate()Lcom/youku/player/subtitle/SubtitleOperate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleOperate;->dismissSubtitle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    goto :goto_0
.end method
