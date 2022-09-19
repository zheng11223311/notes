.class Lcom/youku/uplayer/UMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "UMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/uplayer/UMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field mp:Lcom/youku/uplayer/UMediaPlayer;

.field final synthetic this$0:Lcom/youku/uplayer/UMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/youku/uplayer/UMediaPlayer;Lcom/youku/uplayer/UMediaPlayer;Landroid/os/Looper;)V
    .locals 1
    .param p2, "mp"    # Lcom/youku/uplayer/UMediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    .line 602
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->mp:Lcom/youku/uplayer/UMediaPlayer;

    .line 603
    iput-object p2, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->mp:Lcom/youku/uplayer/UMediaPlayer;

    .line 604
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 607
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->mp:Lcom/youku/uplayer/UMediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->mp:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$000(Lcom/youku/uplayer/UMediaPlayer;)I

    move-result v1

    if-nez v1, :cond_2

    .line 608
    :cond_0
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediaplayer went away with unhandled events"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 615
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 810
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :sswitch_1
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$200(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$200(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->mp:Lcom/youku/uplayer/UMediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 631
    :sswitch_2
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_BUFFERING_UPDATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$300(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 633
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$300(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->mp:Lcom/youku/uplayer/UMediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v3}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto :goto_0

    .line 638
    :sswitch_3
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$400(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 639
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$400(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->mp:Lcom/youku/uplayer/UMediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 644
    :sswitch_4
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$500(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$500(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->mp:Lcom/youku/uplayer/UMediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    goto/16 :goto_0

    .line 651
    :sswitch_5
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: (arg1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", arg2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$600(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 655
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$600(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->mp:Lcom/youku/uplayer/UMediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 658
    :cond_3
    if-nez v0, :cond_1

    .line 659
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error MsgID.MEDIA_ERROR \u9519\u8bef\u4e3a\u5904\u7406  what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg.arg1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg.arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 665
    .end local v0    # "handled":Z
    :sswitch_6
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$700(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnLoadingStatusListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 666
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$700(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnLoadingStatusListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/uplayer/OnLoadingStatusListener;->onStartLoading()V

    goto/16 :goto_0

    .line 670
    :sswitch_7
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$700(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnLoadingStatusListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 671
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$700(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnLoadingStatusListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/uplayer/OnLoadingStatusListener;->onEndLoading()V

    goto/16 :goto_0

    .line 675
    :sswitch_8
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$800(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnADPlayListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$800(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnADPlayListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnADPlayListener;->onStartPlayAD(I)Z

    goto/16 :goto_0

    .line 680
    :sswitch_9
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>MEDIA_INFO_PRE_AD_END is received"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$800(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnADPlayListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 682
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$800(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnADPlayListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnADPlayListener;->onEndPlayAD(I)Z

    goto/16 :goto_0

    .line 686
    :sswitch_a
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$900(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnMidADPlayListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 687
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$900(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnMidADPlayListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnMidADPlayListener;->onStartPlayMidAD(I)Z

    goto/16 :goto_0

    .line 691
    :sswitch_b
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$900(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnMidADPlayListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 692
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$900(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnMidADPlayListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnMidADPlayListener;->onEndPlayMidAD(I)Z

    goto/16 :goto_0

    .line 696
    :sswitch_c
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$900(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnMidADPlayListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$900(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnMidADPlayListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/uplayer/OnMidADPlayListener;->onLoadingMidADStart()V

    goto/16 :goto_0

    .line 705
    :sswitch_d
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1000(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 706
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1000(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnCurrentPositionUpdateListener;->onCurrentPositionUpdate(I)V

    goto/16 :goto_0

    .line 711
    :sswitch_e
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1100(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1100(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3}, Lcom/youku/uplayer/OnVideoIndexUpdateListener;->onVideoIndexUpdate(II)V

    goto/16 :goto_0

    .line 717
    :sswitch_f
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_INFO_NETWORK_SPEED_UPDATE is received"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1200(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnNetworkSpeedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1200(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnNetworkSpeedListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnNetworkSpeedListener;->onSpeedUpdate(I)V

    goto/16 :goto_0

    .line 725
    :sswitch_10
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>MEDIA_INFO_VIDEO_START is received"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1300(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnRealVideoStartListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1300(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnRealVideoStartListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/uplayer/OnRealVideoStartListener;->onRealVideoStart()V

    goto/16 :goto_0

    .line 731
    :sswitch_11
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_END is received"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1400(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1400(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->mp:Lcom/youku/uplayer/UMediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto/16 :goto_0

    .line 738
    :sswitch_12
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1500(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnADCountListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 739
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1500(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnADCountListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnADCountListener;->onCountUpdate(I)V

    goto/16 :goto_0

    .line 744
    :sswitch_13
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>ERROR_NETWORK_CHECK_10 is received"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1600(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnTimeoutListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1600(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnTimeoutListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/uplayer/OnTimeoutListener;->onNotifyChangeVideoQuality()V

    goto/16 :goto_0

    .line 750
    :sswitch_14
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>MEDIA_INFO_NETWORK_LOW is received"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1600(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnTimeoutListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1600(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnTimeoutListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/uplayer/OnTimeoutListener;->onNotifyChangeVideoQuality()V

    goto/16 :goto_0

    .line 756
    :sswitch_15
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEDIA_INFO_HW_DECODE_ERROR is received"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1700(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnHwDecodeErrorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1700(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnHwDecodeErrorListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/uplayer/OnHwDecodeErrorListener;->OnHwDecodeError()V

    goto/16 :goto_0

    .line 762
    :sswitch_16
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEDIA_INFO_HW_PLAYER_ERROR is received"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1700(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnHwDecodeErrorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 764
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1700(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnHwDecodeErrorListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/uplayer/OnHwDecodeErrorListener;->onHwPlayError()V

    goto/16 :goto_0

    .line 768
    :sswitch_17
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEDIA_INFO_AD_CONNECT_DELAY is received"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1800(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnConnectDelayListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 770
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1800(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnConnectDelayListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnConnectDelayListener;->onAdConnectDelay(I)V

    goto/16 :goto_0

    .line 773
    :sswitch_18
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEDIA_INFO_AD_CONNECT_DELAY is received"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1800(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnConnectDelayListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 775
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1800(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnConnectDelayListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnConnectDelayListener;->onVideoConnectDelay(I)V

    goto/16 :goto_0

    .line 778
    :sswitch_19
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_INFO_NETWORK_SPEED is received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    iget-object v1, v1, Lcom/youku/uplayer/UMediaPlayer;->mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    if-eqz v1, :cond_1

    .line 780
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    iget-object v1, v1, Lcom/youku/uplayer/UMediaPlayer;->mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnNetworkSpeedPerMinute;->onSpeedUpdate(I)V

    goto/16 :goto_0

    .line 783
    :sswitch_1a
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_INFO_BUFFER_PERCENT is received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    iget-object v1, v1, Lcom/youku/uplayer/UMediaPlayer;->mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    if-eqz v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    iget-object v1, v1, Lcom/youku/uplayer/UMediaPlayer;->mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnBufferPercentUpdateListener;->onPercentUpdate(I)V

    goto/16 :goto_0

    .line 788
    :sswitch_1b
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_INFO_HTTP_AD_302_DELAY is received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1900(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnHttp302DelayListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 790
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1900(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnHttp302DelayListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnHttp302DelayListener;->onAd302Delay(I)V

    goto/16 :goto_0

    .line 793
    :sswitch_1c
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_INFO_HTTP_VIDEO_302_DELAY is received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1900(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnHttp302DelayListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 795
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$1900(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnHttp302DelayListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnHttp302DelayListener;->onVideo302Delay(I)V

    goto/16 :goto_0

    .line 798
    :sswitch_1d
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEDIA_INFO_SWITCH_FAILED is received"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$2000(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnQualityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 800
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$2000(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnQualityChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/uplayer/OnQualityChangeListener;->onQualitySmoothChangeFail()V

    goto/16 :goto_0

    .line 804
    :sswitch_1e
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEDIA_INFO_SWITCH_FINISH is received"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$2000(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnQualityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 806
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-static {v1}, Lcom/youku/uplayer/UMediaPlayer;->access$2000(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnQualityChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/uplayer/OnQualityChangeListener;->onQualityChangeSuccess()V

    goto/16 :goto_0

    .line 615
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x64 -> :sswitch_5
        0x1f7 -> :sswitch_13
        0x3eb -> :sswitch_6
        0x3ec -> :sswitch_7
        0x3f3 -> :sswitch_8
        0x3f4 -> :sswitch_9
        0x3f5 -> :sswitch_a
        0x3f6 -> :sswitch_b
        0x3f9 -> :sswitch_10
        0x3fa -> :sswitch_11
        0x3fc -> :sswitch_c
        0x3fd -> :sswitch_1e
        0x3fe -> :sswitch_1d
        0x410 -> :sswitch_12
        0x413 -> :sswitch_14
        0x44a -> :sswitch_17
        0x44b -> :sswitch_18
        0x44c -> :sswitch_1b
        0x44d -> :sswitch_1c
        0x7d0 -> :sswitch_d
        0x7d6 -> :sswitch_f
        0x7d8 -> :sswitch_e
        0x8fc -> :sswitch_19
        0x8fd -> :sswitch_1a
        0x7530 -> :sswitch_15
        0x7531 -> :sswitch_16
    .end sparse-switch
.end method
