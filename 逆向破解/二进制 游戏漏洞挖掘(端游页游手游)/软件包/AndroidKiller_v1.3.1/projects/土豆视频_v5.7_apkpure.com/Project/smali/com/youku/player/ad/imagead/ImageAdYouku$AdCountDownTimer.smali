.class Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "ImageAdYouku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/ad/imagead/ImageAdYouku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;


# direct methods
.method public constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYouku;JJ)V
    .locals 2
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 311
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    .line 312
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 313
    long-to-int v0, p2

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/youku/player/ad/imagead/ImageAdYouku;->mSavedCount:I

    .line 314
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdDismiss()V

    .line 319
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 321
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    .line 323
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 327
    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-static {v2}, Lcom/youku/player/ad/imagead/ImageAdYouku;->access$600(Lcom/youku/player/ad/imagead/ImageAdYouku;)Landroid/widget/TextView;

    move-result-object v3

    monitor-enter v3

    .line 328
    long-to-float v2, p1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v1, v2, v4

    .line 329
    .local v1, "time":F
    :try_start_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 330
    .local v0, "count":I
    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget v2, v2, Lcom/youku/player/ad/imagead/ImageAdYouku;->mSavedCount:I

    if-eq v2, v0, :cond_0

    if-lez v0, :cond_0

    .line 331
    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iput v0, v2, Lcom/youku/player/ad/imagead/ImageAdYouku;->mSavedCount:I

    .line 332
    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-static {v2}, Lcom/youku/player/ad/imagead/ImageAdYouku;->access$600(Lcom/youku/player/ad/imagead/ImageAdYouku;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget v4, v4, Lcom/youku/player/ad/imagead/ImageAdYouku;->mSavedCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :cond_0
    monitor-exit v3

    .line 335
    return-void

    .line 334
    .end local v0    # "count":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
