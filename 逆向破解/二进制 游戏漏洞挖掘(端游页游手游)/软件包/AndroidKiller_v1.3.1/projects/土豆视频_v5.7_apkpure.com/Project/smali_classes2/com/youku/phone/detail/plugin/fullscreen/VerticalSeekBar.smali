.class public Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar.java"


# instance fields
.field public isFromUser:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->isFromUser:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->isFromUser:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->isFromUser:Z

    .line 26
    return-void
.end method


# virtual methods
.method public declared-synchronized getMaximum()I
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getMax()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 43
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 44
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 39
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 33
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 34
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    :goto_0
    return v1

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    move v1, v2

    .line 72
    goto :goto_0

    .line 57
    :pswitch_0
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->isFromUser:Z

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getMax()I

    move-result v3

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 60
    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgress(I)V

    .line 61
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4, v1, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 62
    const-string v1, "\u64ad\u653e\u9875\u58f0\u97f3\u8c03\u8282"

    const-class v3, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u58f0\u97f3\u6309\u94ae"

    invoke-static {v1, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setMaximum(I)V
    .locals 1
    .param p1, "maximum"    # I

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgressAndThumb(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgressAndThumb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->invalidate()V

    .line 80
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getMax()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgress(I)V

    .line 81
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->isFromUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
