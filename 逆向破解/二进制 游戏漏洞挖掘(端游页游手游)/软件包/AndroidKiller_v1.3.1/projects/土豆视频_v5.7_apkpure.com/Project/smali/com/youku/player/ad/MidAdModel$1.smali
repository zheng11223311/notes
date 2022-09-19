.class Lcom/youku/player/ad/MidAdModel$1;
.super Landroid/os/Handler;
.source "MidAdModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/MidAdModel;->setMidADUrl(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/MidAdModel;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/MidAdModel;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/youku/player/ad/MidAdModel$1;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 342
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 356
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 346
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 347
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$1;->this$0:Lcom/youku/player/ad/MidAdModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/player/ad/MidAdModel;->access$002(Lcom/youku/player/ad/MidAdModel;I)I

    .line 349
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$1;->this$0:Lcom/youku/player/ad/MidAdModel;

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel$1;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v2}, Lcom/youku/player/ad/MidAdModel;->access$200(Lcom/youku/player/ad/MidAdModel;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/youku/player/ad/MidAdModel;->access$102(Lcom/youku/player/ad/MidAdModel;I)I

    .line 350
    sget-object v1, Lcom/youku/player/LogTag;->TAG_WO_VIDEO:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MidADFinalURL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$1;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$300(Lcom/youku/player/ad/MidAdModel;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/youku/player/BaseMediaPlayer;->setMidADDataSource(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$1;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$300(Lcom/youku/player/ad/MidAdModel;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v1}, Lcom/youku/player/BaseMediaPlayer;->prepareMidAD()V

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
