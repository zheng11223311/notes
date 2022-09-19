.class Lcom/youku/gamecenter/player/GameVideoPlayer$4;
.super Ljava/lang/Object;
.source "GameVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 348
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$4;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x5

    .line 350
    const-string v0, "VideoTest"

    const-string v1, "===onCompletion==="

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$4;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v0, v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$502(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 352
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$4;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v0, v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1002(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 353
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$4;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$800(Lcom/youku/gamecenter/player/GameVideoPlayer;)Lcom/youku/gamecenter/player/GameVideoBottomView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$4;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$800(Lcom/youku/gamecenter/player/GameVideoPlayer;)Lcom/youku/gamecenter/player/GameVideoBottomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->hide()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$4;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1100(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$4;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1100(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$4;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$700(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 359
    :cond_1
    return-void
.end method
