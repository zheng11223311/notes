.class Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;
.super Landroid/os/Handler;
.source "MediaPlayerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)V
    .locals 0

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1875
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1877
    :pswitch_0
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->access$300(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1878
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/youku/player/BaseMediaPlayer;->setEnhanceMode(ZF)V

    goto :goto_0

    .line 1883
    :pswitch_1
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->access$300(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1884
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->isFinish:Z

    goto :goto_0

    .line 1887
    :pswitch_2
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->access$300(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1888
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->isFinish:Z

    .line 1889
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    const/4 v1, 0x0

    const v2, 0x3f828f5c    # 1.02f

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/BaseMediaPlayer;->setEnhanceMode(ZF)V

    goto :goto_0

    .line 1875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
