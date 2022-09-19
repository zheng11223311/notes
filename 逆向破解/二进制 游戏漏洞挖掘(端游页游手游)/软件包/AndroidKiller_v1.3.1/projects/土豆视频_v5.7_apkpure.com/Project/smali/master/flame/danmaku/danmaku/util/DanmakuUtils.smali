.class public Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;
.super Ljava/lang/Object;
.source "DanmakuUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDanmakuDrawingCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    .locals 7
    .param p0, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p1, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "cache"    # Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    .prologue
    const/4 v3, 0x0

    .line 89
    if-nez p2, :cond_0

    .line 90
    new-instance p2, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    .end local p2    # "cache":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    invoke-direct {p2}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;-><init>()V

    .line 92
    .restart local p2    # "cache":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getDensityDpi()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v1, v2, v4}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->build(IIIZ)V

    .line 93
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->get()Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    move-result-object v6

    .line 94
    .local v6, "holder":Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
    if-eqz v6, :cond_1

    move-object v0, p1

    .line 95
    check-cast v0, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v2, v6, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    const/4 v5, 0x1

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/Object;FFZ)V

    .line 96
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v1

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getMaximumCacheWidth()I

    move-result v2

    .line 98
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getMaximumCacheHeight()I

    move-result v3

    .line 97
    invoke-virtual {v6, v0, v1, v2, v3}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->splitWith(IIII)V

    .line 101
    :cond_1
    return-object p2
.end method

.method private static checkHit(II[F[F)Z
    .locals 4
    .param p0, "type1"    # I
    .param p1, "type2"    # I
    .param p2, "rectArr1"    # [F
    .param p3, "rectArr2"    # [F

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 72
    if-eq p0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    if-ne p0, v1, :cond_2

    .line 76
    aget v2, p3, v0

    aget v3, p2, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 79
    :cond_2
    const/4 v2, 0x6

    if-ne p0, v2, :cond_0

    .line 81
    aget v2, p3, v3

    aget v3, p2, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static checkHitAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;J)Z
    .locals 5
    .param p0, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p1, "d1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "d2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p3, "time"    # J

    .prologue
    .line 63
    invoke-virtual {p1, p0, p3, p4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F

    move-result-object v0

    .line 64
    .local v0, "rectArr1":[F
    invoke-virtual {p2, p0, p3, p4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F

    move-result-object v1

    .line 65
    .local v1, "rectArr2":[F
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 66
    :cond_0
    const/4 v2, 0x0

    .line 67
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v2

    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v3

    invoke-static {v2, v3, v0, v1}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->checkHit(II[F[F)Z

    move-result v2

    goto :goto_0
.end method

.method public static final compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 12
    .param p0, "obj1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p1, "obj2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 130
    if-ne p0, p1, :cond_1

    .line 131
    const/4 v4, 0x0

    .line 184
    :cond_0
    :goto_0
    return v4

    .line 134
    :cond_1
    if-eqz p0, :cond_0

    .line 138
    if-nez p1, :cond_2

    move v4, v5

    .line 139
    goto :goto_0

    .line 142
    :cond_2
    iget-wide v6, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    iget-wide v8, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    sub-long v2, v6, v8

    .line 143
    .local v2, "val":J
    cmp-long v6, v2, v10

    if-lez v6, :cond_3

    move v4, v5

    .line 144
    goto :goto_0

    .line 145
    :cond_3
    cmp-long v6, v2, v10

    if-ltz v6, :cond_0

    .line 149
    iget v6, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    iget v7, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    sub-int v1, v6, v7

    .line 150
    .local v1, "result":I
    if-lez v1, :cond_4

    move v4, v5

    .line 151
    goto :goto_0

    .line 152
    :cond_4
    if-ltz v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v6

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v7

    sub-int v1, v6, v7

    .line 157
    if-lez v1, :cond_5

    move v4, v5

    .line 158
    goto :goto_0

    .line 159
    :cond_5
    if-ltz v1, :cond_0

    .line 163
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    .line 166
    iget-object v6, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    if-nez v6, :cond_6

    move v4, v5

    .line 167
    goto :goto_0

    .line 170
    :cond_6
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, "r":I
    if-eqz v0, :cond_7

    move v4, v0

    .line 172
    goto :goto_0

    .line 175
    :cond_7
    iget v6, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    iget v7, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    sub-int v0, v6, v7

    .line 176
    if-eqz v0, :cond_8

    .line 177
    if-ltz v0, :cond_0

    move v4, v5

    goto :goto_0

    .line 179
    :cond_8
    iget v6, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    iget v7, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    sub-int v0, v6, v7

    .line 180
    if-eqz v0, :cond_9

    .line 181
    if-ltz v0, :cond_0

    move v4, v5

    goto :goto_0

    .line 183
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sub-int v0, v4, v5

    move v4, v0

    .line 184
    goto :goto_0
.end method

.method public static fillText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 192
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/n"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "lines":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 199
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCacheSize(II)I
    .locals 1
    .param p0, "w"    # I
    .param p1, "h"    # I

    .prologue
    .line 105
    mul-int v0, p0, p1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static final isDuplicate(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 4
    .param p0, "obj1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p1, "obj2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 109
    if-ne p0, p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 120
    goto :goto_0

    .line 122
    :cond_2
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 123
    goto :goto_0
.end method

.method public static final isOverSize(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 2
    .param p0, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 188
    invoke-interface {p0}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    invoke-interface {p0}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getMaximumCacheWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    invoke-interface {p0}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getMaximumCacheHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static willHitInDuration(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;JJ)Z
    .locals 9
    .param p0, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p1, "d1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "d2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p3, "duration"    # J
    .param p5, "currTime"    # J

    .prologue
    .line 38
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v2

    .line 39
    .local v2, "type1":I
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v3

    .line 41
    .local v3, "type2":I
    if-eq v2, v3, :cond_0

    .line 42
    const/4 v4, 0x0

    .line 58
    :goto_0
    return v4

    .line 44
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    const/4 v4, 0x0

    goto :goto_0

    .line 47
    :cond_1
    iget-wide v4, p2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    iget-wide v6, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    sub-long v0, v4, v6

    .line 48
    .local v0, "dTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 49
    const/4 v4, 0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-gez v4, :cond_3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 51
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 54
    :cond_4
    const/4 v4, 0x5

    if-eq v2, v4, :cond_5

    const/4 v4, 0x4

    if-ne v2, v4, :cond_6

    .line 55
    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    .line 58
    :cond_6
    invoke-static {p0, p1, p2, p5, p6}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->checkHitAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;J)Z

    move-result v4

    if-nez v4, :cond_7

    .line 59
    iget-wide v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {p0, p1, p2, v4, v5}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->checkHitAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;J)Z

    move-result v4

    if-nez v4, :cond_7

    .line 58
    const/4 v4, 0x0

    goto :goto_0

    :cond_7
    const/4 v4, 0x1

    goto :goto_0
.end method
