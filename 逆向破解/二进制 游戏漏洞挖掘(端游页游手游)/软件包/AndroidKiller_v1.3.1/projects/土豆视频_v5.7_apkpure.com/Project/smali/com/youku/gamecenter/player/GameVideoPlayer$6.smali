.class Lcom/youku/gamecenter/player/GameVideoPlayer$6;
.super Ljava/lang/Object;
.source "GameVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 371
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$6;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v3, -0x1

    .line 373
    const-string v0, "VideoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$6;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v0, v3}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$502(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 375
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$6;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v0, v3}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1002(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 376
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$6;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1200(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$6;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1200(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 379
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
