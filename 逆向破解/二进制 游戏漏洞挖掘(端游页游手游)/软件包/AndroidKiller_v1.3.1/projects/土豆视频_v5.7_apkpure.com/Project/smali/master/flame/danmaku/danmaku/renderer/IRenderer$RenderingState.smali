.class public Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
.super Ljava/lang/Object;
.source "IRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/IRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderingState"
.end annotation


# static fields
.field public static final UNKNOWN_TIME:I = -0x1


# instance fields
.field public beginTime:J

.field public cacheHitCount:J

.field public cacheMissCount:J

.field public consumingTime:J

.field public endTime:J

.field public fbDanmakuCount:I

.field public ftDanmakuCount:I

.field public incrementCount:I

.field public l2rDanmakuCount:I

.field public nothingRendered:Z

.field public r2lDanmakuCount:I

.field public specialDanmakuCount:I

.field public sysTime:J

.field public totalDanmakuCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCount(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "count"    # I

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    .line 100
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 85
    :pswitch_1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->r2lDanmakuCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->r2lDanmakuCount:I

    .line 86
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->r2lDanmakuCount:I

    goto :goto_0

    .line 88
    :pswitch_2
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->l2rDanmakuCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->l2rDanmakuCount:I

    .line 89
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->l2rDanmakuCount:I

    goto :goto_0

    .line 91
    :pswitch_3
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->ftDanmakuCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->ftDanmakuCount:I

    .line 92
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->ftDanmakuCount:I

    goto :goto_0

    .line 94
    :pswitch_4
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->fbDanmakuCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->fbDanmakuCount:I

    .line 95
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->fbDanmakuCount:I

    goto :goto_0

    .line 97
    :pswitch_5
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->specialDanmakuCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->specialDanmakuCount:I

    .line 98
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->specialDanmakuCount:I

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public addTotalCount(I)I
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 78
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    .line 79
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    iput v2, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    iput v2, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->specialDanmakuCount:I

    iput v2, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->fbDanmakuCount:I

    iput v2, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->ftDanmakuCount:I

    iput v2, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->l2rDanmakuCount:I

    iput v2, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->r2lDanmakuCount:I

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->consumingTime:J

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->sysTime:J

    .line 106
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    .line 107
    return-void
.end method

.method public set(Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;)V
    .locals 2
    .param p1, "other"    # Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 112
    :cond_0
    iget v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->r2lDanmakuCount:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->r2lDanmakuCount:I

    .line 113
    iget v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->l2rDanmakuCount:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->l2rDanmakuCount:I

    .line 114
    iget v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->ftDanmakuCount:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->ftDanmakuCount:I

    .line 115
    iget v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->fbDanmakuCount:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->fbDanmakuCount:I

    .line 116
    iget v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->specialDanmakuCount:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->specialDanmakuCount:I

    .line 117
    iget v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    .line 118
    iget v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->incrementCount:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->incrementCount:I

    .line 119
    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->consumingTime:J

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->consumingTime:J

    .line 120
    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    .line 121
    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    .line 122
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    .line 123
    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->sysTime:J

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->sysTime:J

    .line 124
    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    .line 125
    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    goto :goto_0
.end method
