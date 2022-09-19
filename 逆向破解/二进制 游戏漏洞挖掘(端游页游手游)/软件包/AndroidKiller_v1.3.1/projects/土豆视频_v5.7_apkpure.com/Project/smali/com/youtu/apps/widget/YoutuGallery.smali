.class public Lcom/youtu/apps/widget/YoutuGallery;
.super Landroid/widget/Gallery;
.source "YoutuGallery.java"


# instance fields
.field private final MSG_SLIDE:I

.field private final PERIOD:J

.field handler:Landroid/os/Handler;

.field private isAutoSlideMode:Z

.field private myX1:F

.field private myX2:F

.field private task:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->MSG_SLIDE:I

    .line 26
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->PERIOD:J

    .line 30
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->timer:Ljava/util/Timer;

    .line 32
    new-instance v0, Lcom/youtu/apps/widget/YoutuGallery$1;

    invoke-direct {v0, p0}, Lcom/youtu/apps/widget/YoutuGallery$1;-><init>(Lcom/youtu/apps/widget/YoutuGallery;)V

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->task:Ljava/util/TimerTask;

    .line 43
    new-instance v0, Lcom/youtu/apps/widget/YoutuGallery$2;

    invoke-direct {v0, p0}, Lcom/youtu/apps/widget/YoutuGallery$2;-><init>(Lcom/youtu/apps/widget/YoutuGallery;)V

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->handler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->MSG_SLIDE:I

    .line 26
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->PERIOD:J

    .line 30
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->timer:Ljava/util/Timer;

    .line 32
    new-instance v0, Lcom/youtu/apps/widget/YoutuGallery$1;

    invoke-direct {v0, p0}, Lcom/youtu/apps/widget/YoutuGallery$1;-><init>(Lcom/youtu/apps/widget/YoutuGallery;)V

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->task:Ljava/util/TimerTask;

    .line 43
    new-instance v0, Lcom/youtu/apps/widget/YoutuGallery$2;

    invoke-direct {v0, p0}, Lcom/youtu/apps/widget/YoutuGallery$2;-><init>(Lcom/youtu/apps/widget/YoutuGallery;)V

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->handler:Landroid/os/Handler;

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/YoutuGallery;->setSoundEffectsEnabled(Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->MSG_SLIDE:I

    .line 26
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->PERIOD:J

    .line 30
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->timer:Ljava/util/Timer;

    .line 32
    new-instance v0, Lcom/youtu/apps/widget/YoutuGallery$1;

    invoke-direct {v0, p0}, Lcom/youtu/apps/widget/YoutuGallery$1;-><init>(Lcom/youtu/apps/widget/YoutuGallery;)V

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->task:Ljava/util/TimerTask;

    .line 43
    new-instance v0, Lcom/youtu/apps/widget/YoutuGallery$2;

    invoke-direct {v0, p0}, Lcom/youtu/apps/widget/YoutuGallery$2;-><init>(Lcom/youtu/apps/widget/YoutuGallery;)V

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->handler:Landroid/os/Handler;

    .line 71
    return-void
.end method


# virtual methods
.method public cancelAutoSlide()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->timer:Ljava/util/Timer;

    .line 125
    :cond_0
    return-void
.end method

.method public isAutoSlideMode()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->isAutoSlideMode:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->myX1:F

    .line 76
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->myX2:F

    .line 90
    iget v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->myX2:F

    iget v1, p0, Lcom/youtu/apps/widget/YoutuGallery;->myX1:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuGallery;->scrollToRight()V

    .line 95
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_1
    iget v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->myX2:F

    iget v1, p0, Lcom/youtu/apps/widget/YoutuGallery;->myX1:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuGallery;->scrollToLeft()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->isAutoSlideMode:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuGallery;->startAutoSlide()V

    .line 84
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public scrollToLeft()V
    .locals 2

    .prologue
    .line 106
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 107
    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuGallery;->startAutoSlide()V

    .line 108
    return-void
.end method

.method public scrollToRight()V
    .locals 2

    .prologue
    .line 115
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 116
    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuGallery;->startAutoSlide()V

    .line 117
    return-void
.end method

.method public startAutoSlide()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1770

    .line 134
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->timer:Ljava/util/Timer;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->task:Ljava/util/TimerTask;

    .line 141
    :cond_1
    new-instance v0, Lcom/youtu/apps/widget/YoutuGallery$3;

    invoke-direct {v0, p0}, Lcom/youtu/apps/widget/YoutuGallery$3;-><init>(Lcom/youtu/apps/widget/YoutuGallery;)V

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->task:Ljava/util/TimerTask;

    .line 151
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/youtu/apps/widget/YoutuGallery;->task:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youtu/apps/widget/YoutuGallery;->isAutoSlideMode:Z

    .line 153
    return-void
.end method
