.class Lcom/mobisage/android/MobiSageVideoView;
.super Landroid/widget/VideoView;
.source "MobiSageVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;
    }
.end annotation


# instance fields
.field mediaPlayPauseListener:Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 55
    iget-object v0, p0, Lcom/mobisage/android/MobiSageVideoView;->mediaPlayPauseListener:Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mobisage/android/MobiSageVideoView;->mediaPlayPauseListener:Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;

    invoke-interface {v0}, Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;->onMediaPause()V

    .line 58
    :cond_0
    return-void
.end method

.method public setMediaPlayPauseListener(Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;)V
    .locals 0
    .param p1, "mediaPlayPauseListener"    # Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mobisage/android/MobiSageVideoView;->mediaPlayPauseListener:Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;

    .line 50
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 63
    iget-object v0, p0, Lcom/mobisage/android/MobiSageVideoView;->mediaPlayPauseListener:Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/mobisage/android/MobiSageVideoView;->mediaPlayPauseListener:Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;

    invoke-interface {v0}, Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;->onMediaPlay()V

    .line 66
    :cond_0
    return-void
.end method
