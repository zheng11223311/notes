.class public Lcom/youku/player/NewSurfaceView;
.super Landroid/view/SurfaceView;
.source "NewSurfaceView.java"


# static fields
.field private static final RESIZE_RATE:F = 0.01f

.field private static TAG:Ljava/lang/String;


# instance fields
.field public isFullScreen:Z

.field private mLayoutChangeListener:Lcom/youku/player/base/YoukuPlayerView$LayoutChangeListener;

.field private mOrientation:I

.field private mParentHeight:I

.field private mParentWidth:I

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mViewPercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/LogTag;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/NewSurfaceView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 17
    const/16 v0, 0x64

    iput v0, p0, Lcom/youku/player/NewSurfaceView;->mViewPercent:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/16 v0, 0x64

    iput v0, p0, Lcom/youku/player/NewSurfaceView;->mViewPercent:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/16 v0, 0x64

    iput v0, p0, Lcom/youku/player/NewSurfaceView;->mViewPercent:I

    .line 29
    return-void
.end method

.method protected static sizeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 122
    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    .line 123
    const-string/jumbo v0, "wrap-content"

    .line 128
    :goto_0
    return-object v0

    .line 125
    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 126
    const-string v0, "match-parent"

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/youku/player/NewSurfaceView;->mOrientation:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/youku/player/NewSurfaceView;->mLayoutChangeListener:Lcom/youku/player/base/YoukuPlayerView$LayoutChangeListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/youku/player/NewSurfaceView;->mLayoutChangeListener:Lcom/youku/player/base/YoukuPlayerView$LayoutChangeListener;

    invoke-interface {v0}, Lcom/youku/player/base/YoukuPlayerView$LayoutChangeListener;->onLayoutChange()V

    .line 144
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x1

    .line 60
    iget v6, p0, Lcom/youku/player/NewSurfaceView;->mVideoWidth:I

    invoke-static {v6, p1}, Lcom/youku/player/NewSurfaceView;->getDefaultSize(II)I

    move-result v4

    .line 61
    .local v4, "width":I
    iget v6, p0, Lcom/youku/player/NewSurfaceView;->mVideoHeight:I

    invoke-static {v6, p2}, Lcom/youku/player/NewSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 62
    .local v0, "height":I
    iget v3, p0, Lcom/youku/player/NewSurfaceView;->mVideoWidth:I

    .line 63
    .local v3, "videoWidth":I
    iget v2, p0, Lcom/youku/player/NewSurfaceView;->mVideoHeight:I

    .line 64
    .local v2, "videoHeight":I
    iget v6, p0, Lcom/youku/player/NewSurfaceView;->mOrientation:I

    if-eq v6, v9, :cond_0

    iget v6, p0, Lcom/youku/player/NewSurfaceView;->mOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 65
    :cond_0
    iget v2, p0, Lcom/youku/player/NewSurfaceView;->mVideoWidth:I

    .line 66
    iget v3, p0, Lcom/youku/player/NewSurfaceView;->mVideoHeight:I

    .line 73
    :cond_1
    iget v6, p0, Lcom/youku/player/NewSurfaceView;->mViewPercent:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/youku/player/NewSurfaceView;->isFullScreen:Z

    if-nez v6, :cond_6

    .line 74
    :cond_2
    if-lez v3, :cond_6

    if-lez v2, :cond_6

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 78
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 81
    .local v1, "heightSpecSize":I
    move v4, v5

    .line 82
    move v0, v1

    .line 84
    iget-boolean v6, p0, Lcom/youku/player/NewSurfaceView;->isFullScreen:Z

    if-eqz v6, :cond_3

    .line 85
    iget v4, p0, Lcom/youku/player/NewSurfaceView;->mParentWidth:I

    .line 86
    iget v0, p0, Lcom/youku/player/NewSurfaceView;->mParentHeight:I

    .line 87
    iget v6, p0, Lcom/youku/player/NewSurfaceView;->mViewPercent:I

    const/16 v7, 0x4b

    if-ne v6, v7, :cond_7

    .line 88
    div-int/lit8 v6, v4, 0x4

    mul-int/lit8 v4, v6, 0x3

    .line 89
    div-int/lit8 v6, v0, 0x4

    mul-int/lit8 v0, v6, 0x3

    .line 98
    :cond_3
    :goto_0
    mul-int v6, v3, v0

    mul-int v7, v2, v4

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3c23d70a    # 0.01f

    int-to-float v8, v0

    mul-float/2addr v7, v8

    int-to-float v8, v2

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    .line 99
    mul-int v6, v3, v0

    mul-int v7, v2, v4

    if-ge v6, v7, :cond_8

    .line 100
    mul-int v6, v3, v0

    div-int v4, v6, v2

    .line 105
    :cond_4
    :goto_1
    rem-int/lit8 v6, v4, 0x2

    if-ne v6, v9, :cond_5

    .line 106
    add-int/lit8 v4, v4, -0x1

    .line 107
    :cond_5
    rem-int/lit8 v6, v0, 0x2

    if-ne v6, v9, :cond_6

    .line 108
    add-int/lit8 v0, v0, -0x1

    .line 118
    .end local v1    # "heightSpecSize":I
    .end local v5    # "widthSpecSize":I
    :cond_6
    invoke-virtual {p0, v4, v0}, Lcom/youku/player/NewSurfaceView;->setMeasuredDimension(II)V

    .line 119
    return-void

    .line 90
    .restart local v1    # "heightSpecSize":I
    .restart local v5    # "widthSpecSize":I
    :cond_7
    iget v6, p0, Lcom/youku/player/NewSurfaceView;->mViewPercent:I

    const/16 v7, 0x32

    if-ne v6, v7, :cond_3

    .line 91
    div-int/lit8 v4, v4, 0x2

    .line 92
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 101
    :cond_8
    mul-int v6, v3, v0

    mul-int v7, v2, v4

    if-le v6, v7, :cond_4

    .line 102
    mul-int v6, v2, v4

    div-int v0, v6, v3

    goto :goto_1
.end method

.method public recreateSurfaceHolder()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/youku/player/NewSurfaceView;->setVisibility(I)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/player/NewSurfaceView;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public setLayoutChangeListener(Lcom/youku/player/base/YoukuPlayerView$LayoutChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/player/base/YoukuPlayerView$LayoutChangeListener;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/youku/player/NewSurfaceView;->mLayoutChangeListener:Lcom/youku/player/base/YoukuPlayerView$LayoutChangeListener;

    .line 155
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/youku/player/NewSurfaceView;->mOrientation:I

    .line 53
    return-void
.end method

.method public setParentSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/youku/player/NewSurfaceView;->mParentWidth:I

    .line 48
    iput p2, p0, Lcom/youku/player/NewSurfaceView;->mParentHeight:I

    .line 49
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/youku/player/NewSurfaceView;->mVideoWidth:I

    .line 41
    iput p2, p0, Lcom/youku/player/NewSurfaceView;->mVideoHeight:I

    .line 43
    invoke-virtual {p0}, Lcom/youku/player/NewSurfaceView;->requestLayout()V

    .line 44
    return-void
.end method

.method public setViewPercent(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/youku/player/NewSurfaceView;->mViewPercent:I

    .line 57
    return-void
.end method
