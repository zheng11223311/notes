.class public Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;
.super Ljava/lang/Object;
.source "GlobalFlagValues.java"


# instance fields
.field public FILTER_RESET_FLAG:I

.field public MEASURE_RESET_FLAG:I

.field public VISIBLE_RESET_FLAG:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    .line 6
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    .line 7
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    .line 3
    return-void
.end method


# virtual methods
.method public resetAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    .line 11
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    .line 12
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    .line 13
    return-void
.end method

.method public updateFilterFlag()V
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    .line 25
    return-void
.end method

.method public updateMeasureFlag()V
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    .line 21
    return-void
.end method

.method public updateVisibleFlag()V
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    .line 17
    return-void
.end method
