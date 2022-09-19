.class Lcom/youku/uplayer/SystemMediaPlayer$8;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/uplayer/SystemMediaPlayer;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/uplayer/SystemMediaPlayer;


# direct methods
.method constructor <init>(Lcom/youku/uplayer/SystemMediaPlayer;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer$8;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/youku/uplayer/SystemMediaPlayer;->access$1200()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$8;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    const-string/jumbo v1, "release "

    invoke-static {v0, v1}, Lcom/youku/uplayer/SystemMediaPlayer;->access$000(Lcom/youku/uplayer/SystemMediaPlayer;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/youku/uplayer/SystemMediaPlayer;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "start release"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$8;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0}, Lcom/youku/uplayer/SystemMediaPlayer;->access$900(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 343
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$8;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0}, Lcom/youku/uplayer/SystemMediaPlayer;->access$900(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 344
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$8;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0}, Lcom/youku/uplayer/SystemMediaPlayer;->access$900(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 345
    invoke-static {}, Lcom/youku/uplayer/SystemMediaPlayer;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "end release"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$8;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-static {v0}, Lcom/youku/uplayer/SystemMediaPlayer;->access$1400(Lcom/youku/uplayer/SystemMediaPlayer;)V

    .line 347
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer$8;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/uplayer/SystemMediaPlayer;->access$902(Lcom/youku/uplayer/SystemMediaPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-static {}, Lcom/youku/uplayer/SystemMediaPlayer;->access$1200()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 351
    return-void

    .line 349
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/youku/uplayer/SystemMediaPlayer;->access$1200()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
