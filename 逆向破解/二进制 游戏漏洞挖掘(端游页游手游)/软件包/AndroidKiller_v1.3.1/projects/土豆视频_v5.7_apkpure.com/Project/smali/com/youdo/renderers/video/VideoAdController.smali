.class public Lcom/youdo/renderers/video/VideoAdController;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static CLASSTAG:Ljava/lang/String;

.field private static REWIND_INTERVAL:J


# instance fields
.field private lastRewindTime:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mVideoAdRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

.field private mVideoAdView:Lcom/youdo/renderers/video/VideoAdView;

.field private pausedByController:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "VideoAdController"

    sput-object v0, Lcom/youdo/renderers/video/VideoAdController;->CLASSTAG:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/youdo/renderers/video/VideoAdController;->REWIND_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Lcom/youdo/renderers/video/VideoAdRenderer;Lcom/youdo/renderers/video/VideoAdView;Landroid/media/MediaPlayer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdController;->pausedByController:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youdo/renderers/video/VideoAdController;->lastRewindTime:J

    iput-object p1, p0, Lcom/youdo/renderers/video/VideoAdController;->mVideoAdRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    iput-object p2, p0, Lcom/youdo/renderers/video/VideoAdController;->mVideoAdView:Lcom/youdo/renderers/video/VideoAdView;

    iput-object p3, p0, Lcom/youdo/renderers/video/VideoAdController;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdController;->mVideoAdView:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdView;->getPlayheadTime()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getDuration()I
    .locals 2

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdController;->mVideoAdView:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdView;->getDuration()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdController;->mVideoAdView:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onImprTimer()V
    .locals 2

    sget-object v0, Lcom/youdo/renderers/video/VideoAdController;->CLASSTAG:Ljava/lang/String;

    const-string v1, "onImprTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lcom/youdo/renderers/video/VideoAdController;->CLASSTAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdController;->mVideoAdView:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdView;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdController;->pausedByController:Z

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdController;->mVideoAdRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdPaused()V

    return-void
.end method

.method public seekTo(I)V
    .locals 6

    sget-object v0, Lcom/youdo/renderers/video/VideoAdController;->CLASSTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/renderers/video/VideoAdController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/youdo/renderers/video/VideoAdController;->CLASSTAG:Ljava/lang/String;

    const-string v1, "disallow seek forward"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdController;->mVideoAdView:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v0, p1}, Lcom/youdo/renderers/video/VideoAdView;->seekTo(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/youdo/renderers/video/VideoAdController;->CLASSTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", last rewind time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/youdo/renderers/video/VideoAdController;->lastRewindTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/youdo/renderers/video/VideoAdController;->lastRewindTime:J

    sget-wide v4, Lcom/youdo/renderers/video/VideoAdController;->REWIND_INTERVAL:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/youdo/renderers/video/VideoAdController;->mVideoAdRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v2}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdRewind()V

    :cond_1
    iput-wide v0, p0, Lcom/youdo/renderers/video/VideoAdController;->lastRewindTime:J

    goto :goto_0
.end method

.method public start()V
    .locals 2

    sget-object v0, Lcom/youdo/renderers/video/VideoAdController;->CLASSTAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdController;->mVideoAdView:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdView;->start()V

    iget-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdController;->pausedByController:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdController;->pausedByController:Z

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdController;->mVideoAdRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdResumed()V

    :cond_0
    return-void
.end method
