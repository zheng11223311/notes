.class Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "ImageAdYoukuHtml5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;


# direct methods
.method public constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;JJ)V
    .locals 2
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 173
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    .line 174
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 175
    long-to-int v0, p2

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mSavedCount:I

    .line 176
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdDismiss()V

    .line 181
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 183
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    .line 185
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 189
    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-static {v2}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$000(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Landroid/widget/TextView;

    move-result-object v3

    monitor-enter v3

    .line 190
    long-to-float v2, p1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v1, v2, v4

    .line 191
    .local v1, "time":F
    :try_start_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 192
    .local v0, "count":I
    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget v2, v2, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mSavedCount:I

    if-eq v2, v0, :cond_0

    if-lez v0, :cond_0

    .line 193
    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iput v0, v2, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mSavedCount:I

    .line 194
    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-static {v2}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$000(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget v4, v4, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mSavedCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    monitor-exit v3

    .line 197
    return-void

    .line 196
    .end local v0    # "count":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
