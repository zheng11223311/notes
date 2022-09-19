.class public Lcom/youku/gamecenter/widgets/YoukuGallery;
.super Landroid/widget/Gallery;
.source "YoukuGallery.java"


# static fields
.field private static final MSG_SLIDE:I = 0x1

.field private static final PERIOD:J = 0x1770L


# instance fields
.field handler:Landroid/os/Handler;

.field private isAutoSlideMode:Z

.field private myX1:F

.field private myX2:F

.field private task:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->timer:Ljava/util/Timer;

    .line 34
    new-instance v0, Lcom/youku/gamecenter/widgets/YoukuGallery$1;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/widgets/YoukuGallery$1;-><init>(Lcom/youku/gamecenter/widgets/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->task:Ljava/util/TimerTask;

    .line 45
    new-instance v0, Lcom/youku/gamecenter/widgets/YoukuGallery$2;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/widgets/YoukuGallery$2;-><init>(Lcom/youku/gamecenter/widgets/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->handler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->timer:Ljava/util/Timer;

    .line 34
    new-instance v0, Lcom/youku/gamecenter/widgets/YoukuGallery$1;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/widgets/YoukuGallery$1;-><init>(Lcom/youku/gamecenter/widgets/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->task:Ljava/util/TimerTask;

    .line 45
    new-instance v0, Lcom/youku/gamecenter/widgets/YoukuGallery$2;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/widgets/YoukuGallery$2;-><init>(Lcom/youku/gamecenter/widgets/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->handler:Landroid/os/Handler;

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/YoukuGallery;->setSoundEffectsEnabled(Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->timer:Ljava/util/Timer;

    .line 34
    new-instance v0, Lcom/youku/gamecenter/widgets/YoukuGallery$1;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/widgets/YoukuGallery$1;-><init>(Lcom/youku/gamecenter/widgets/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->task:Ljava/util/TimerTask;

    .line 45
    new-instance v0, Lcom/youku/gamecenter/widgets/YoukuGallery$2;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/widgets/YoukuGallery$2;-><init>(Lcom/youku/gamecenter/widgets/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->handler:Landroid/os/Handler;

    .line 73
    return-void
.end method


# virtual methods
.method public cancelAutoSlide()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->timer:Ljava/util/Timer;

    .line 123
    :cond_0
    return-void
.end method

.method public isAutoSlideMode()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->isAutoSlideMode:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->myX1:F

    .line 78
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

    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->myX2:F

    .line 91
    iget v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->myX2:F

    iget v1, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->myX1:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/YoukuGallery;->scrollToRight()V

    .line 96
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->isAutoSlideMode:Z

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/YoukuGallery;->startAutoSlide()V

    .line 99
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 93
    :cond_2
    iget v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->myX2:F

    iget v1, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->myX1:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/YoukuGallery;->scrollToLeft()V

    goto :goto_0
.end method

.method public resetSlideDatas()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->isAutoSlideMode:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/YoukuGallery;->cancelAutoSlide()V

    .line 84
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/YoukuGallery;->startAutoSlide()V

    .line 86
    :cond_0
    return-void
.end method

.method public scrollToLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/youku/gamecenter/widgets/YoukuGallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 104
    const/16 v0, 0x15

    invoke-super {p0, v0, v2}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 105
    return-void
.end method

.method public scrollToRight()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/youku/gamecenter/widgets/YoukuGallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0, v4}, Lcom/youku/gamecenter/widgets/YoukuGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 115
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startAutoSlide()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1770

    .line 132
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->timer:Ljava/util/Timer;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->task:Ljava/util/TimerTask;

    .line 140
    :cond_1
    new-instance v0, Lcom/youku/gamecenter/widgets/YoukuGallery$3;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/widgets/YoukuGallery$3;-><init>(Lcom/youku/gamecenter/widgets/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->task:Ljava/util/TimerTask;

    .line 150
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->task:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery;->isAutoSlideMode:Z

    .line 152
    return-void
.end method
