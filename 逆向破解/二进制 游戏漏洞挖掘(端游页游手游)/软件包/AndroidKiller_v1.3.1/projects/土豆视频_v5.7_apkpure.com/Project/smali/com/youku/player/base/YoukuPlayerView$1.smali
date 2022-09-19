.class Lcom/youku/player/base/YoukuPlayerView$1;
.super Ljava/lang/Object;
.source "YoukuPlayerView.java"

# interfaces
.implements Lcom/youku/player/base/YoukuPlayerView$LayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/YoukuPlayerView;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/YoukuPlayerView;


# direct methods
.method constructor <init>(Lcom/youku/player/base/YoukuPlayerView;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/youku/player/base/YoukuPlayerView$1;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange()V
    .locals 5

    .prologue
    .line 211
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView$1;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v2, v2, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView$1;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v2, v2, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v2}, Lcom/youku/player/NewSurfaceView;->getMeasuredWidth()I

    move-result v1

    .line 213
    .local v1, "width":I
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView$1;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v2, v2, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v2}, Lcom/youku/player/NewSurfaceView;->getMeasuredHeight()I

    move-result v0

    .line 214
    .local v0, "height":I
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView$1;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    invoke-static {v2}, Lcom/youku/player/base/YoukuPlayerView;->access$000(Lcom/youku/player/base/YoukuPlayerView;)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView$1;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    invoke-static {v2}, Lcom/youku/player/base/YoukuPlayerView;->access$100(Lcom/youku/player/base/YoukuPlayerView;)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 216
    :cond_0
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayoutChange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView$1;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v2, v2, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v2, v1, v0}, Lcom/youku/player/BaseMediaPlayer;->changeVideoSize(II)V

    .line 220
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView$1;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    invoke-static {v2, v1}, Lcom/youku/player/base/YoukuPlayerView;->access$002(Lcom/youku/player/base/YoukuPlayerView;I)I

    .line 221
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView$1;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    invoke-static {v2, v0}, Lcom/youku/player/base/YoukuPlayerView;->access$102(Lcom/youku/player/base/YoukuPlayerView;I)I

    .line 224
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_1
    return-void
.end method
