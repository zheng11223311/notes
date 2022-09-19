.class Lcom/youku/gamecenter/player/GameVideoPlayer$2;
.super Ljava/lang/Object;
.source "GameVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/player/GameVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/player/GameVideoPlayer;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$2;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 290
    const-string v0, "VideoTest"

    const-string v1, "===GameVideoPlayer onVideoSizeChanged==="

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$2;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$302(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 292
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$2;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$402(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 293
    return-void
.end method
