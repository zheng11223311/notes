.class public Lcom/youku/widget/YoukuGallery;
.super Landroid/widget/Gallery;
.source "YoukuGallery.java"


# static fields
.field private static final MSG_SLIDE:I = 0x1

.field private static final PERIOD:J = 0x1770L


# instance fields
.field private canScroll:Z

.field handler:Landroid/os/Handler;

.field private isAutoSlideMode:Z

.field public mIsAutoSlide:Z

.field private myX1:F

.field private myX2:F

.field private task:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->timer:Ljava/util/Timer;

    .line 33
    new-instance v0, Lcom/youku/widget/YoukuGallery$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuGallery$1;-><init>(Lcom/youku/widget/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->task:Ljava/util/TimerTask;

    .line 44
    new-instance v0, Lcom/youku/widget/YoukuGallery$2;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuGallery$2;-><init>(Lcom/youku/widget/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->handler:Landroid/os/Handler;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/YoukuGallery;->mIsAutoSlide:Z

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/YoukuGallery;->canScroll:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->timer:Ljava/util/Timer;

    .line 33
    new-instance v0, Lcom/youku/widget/YoukuGallery$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuGallery$1;-><init>(Lcom/youku/widget/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->task:Ljava/util/TimerTask;

    .line 44
    new-instance v0, Lcom/youku/widget/YoukuGallery$2;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuGallery$2;-><init>(Lcom/youku/widget/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->handler:Landroid/os/Handler;

    .line 123
    iput-boolean v1, p0, Lcom/youku/widget/YoukuGallery;->mIsAutoSlide:Z

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/YoukuGallery;->canScroll:Z

    .line 67
    invoke-virtual {p0, v1}, Lcom/youku/widget/YoukuGallery;->setSoundEffectsEnabled(Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->timer:Ljava/util/Timer;

    .line 33
    new-instance v0, Lcom/youku/widget/YoukuGallery$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuGallery$1;-><init>(Lcom/youku/widget/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->task:Ljava/util/TimerTask;

    .line 44
    new-instance v0, Lcom/youku/widget/YoukuGallery$2;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuGallery$2;-><init>(Lcom/youku/widget/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->handler:Landroid/os/Handler;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/YoukuGallery;->mIsAutoSlide:Z

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/YoukuGallery;->canScroll:Z

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/YoukuGallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/YoukuGallery;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/youku/widget/YoukuGallery;->scrollToRight()V

    return-void
.end method

.method private scrollToLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/youku/widget/YoukuGallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 100
    const/16 v0, 0x15

    invoke-super {p0, v0, v2}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 101
    return-void
.end method

.method private scrollToRight()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/youku/widget/YoukuGallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0, v4}, Lcom/youku/widget/YoukuGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 111
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancelAutoSlide()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/youku/widget/YoukuGallery;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/youku/widget/YoukuGallery;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->timer:Ljava/util/Timer;

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/YoukuGallery;->mIsAutoSlide:Z

    .line 120
    return-void
.end method

.method public isAutoSlideMode()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/youku/widget/YoukuGallery;->isAutoSlideMode:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/youku/widget/YoukuGallery;->isAutoSlideMode:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/youku/widget/YoukuGallery;->cancelAutoSlide()V

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/youku/widget/YoukuGallery;->myX1:F

    .line 80
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

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/youku/widget/YoukuGallery;->myX2:F

    .line 87
    iget v0, p0, Lcom/youku/widget/YoukuGallery;->myX2:F

    iget v1, p0, Lcom/youku/widget/YoukuGallery;->myX1:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 88
    invoke-direct {p0}, Lcom/youku/widget/YoukuGallery;->scrollToRight()V

    .line 92
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/youku/widget/YoukuGallery;->isAutoSlideMode:Z

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/youku/widget/YoukuGallery;->startAutoSlide()V

    .line 95
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_2
    iget v0, p0, Lcom/youku/widget/YoukuGallery;->myX2:F

    iget v1, p0, Lcom/youku/widget/YoukuGallery;->myX1:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/youku/widget/YoukuGallery;->scrollToLeft()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 179
    .local v0, "action":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/youku/widget/YoukuGallery;->canScroll:Z

    if-nez v2, :cond_0

    .line 180
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ACTION_MOVE"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    :goto_0
    return v1

    .line 184
    :cond_0
    if-ne v0, v1, :cond_1

    .line 185
    iget-boolean v1, p0, Lcom/youku/widget/YoukuGallery;->isAutoSlideMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/widget/YoukuGallery;->timer:Ljava/util/Timer;

    if-nez v1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/youku/widget/YoukuGallery;->startAutoSlide()V

    .line 189
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setCanScroll(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/youku/widget/YoukuGallery;->canScroll:Z

    .line 197
    return-void
.end method

.method public startAutoSlide()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x1770

    const/4 v6, 0x1

    .line 130
    iget-boolean v0, p0, Lcom/youku/widget/YoukuGallery;->mIsAutoSlide:Z

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/YoukuGallery;->timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->timer:Ljava/util/Timer;

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/YoukuGallery;->task:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/youku/widget/YoukuGallery;->task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->task:Ljava/util/TimerTask;

    .line 141
    :cond_2
    new-instance v0, Lcom/youku/widget/YoukuGallery$3;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuGallery$3;-><init>(Lcom/youku/widget/YoukuGallery;)V

    iput-object v0, p0, Lcom/youku/widget/YoukuGallery;->task:Ljava/util/TimerTask;

    .line 151
    iget-object v0, p0, Lcom/youku/widget/YoukuGallery;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/youku/widget/YoukuGallery;->task:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 152
    iput-boolean v6, p0, Lcom/youku/widget/YoukuGallery;->isAutoSlideMode:Z

    .line 153
    iput-boolean v6, p0, Lcom/youku/widget/YoukuGallery;->mIsAutoSlide:Z

    goto :goto_0
.end method
