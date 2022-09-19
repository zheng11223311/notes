.class public Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;
.super Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
.source "SpecialDanmaku.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;,
        Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;
    }
.end annotation


# instance fields
.field public alphaDuration:J

.field public beginAlpha:I

.field public beginX:F

.field public beginY:F

.field private currStateValues:[F

.field public deltaAlpha:I

.field public deltaX:F

.field public deltaY:F

.field public endAlpha:I

.field public endX:F

.field public endY:F

.field public linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

.field public pivotX:F

.field public pivotY:F

.field public rotateX:F

.field public rotateZ:F

.field public translationDuration:J

.field public translationStartDelay:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;-><init>()V

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    .line 19
    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getLeft()F
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F
    .locals 24
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "currTime"    # J

    .prologue
    .line 101
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->isMeasured()Z

    move-result v19

    if-nez v19, :cond_0

    .line 102
    const/16 v19, 0x0

    .line 172
    :goto_0
    return-object v19

    .line 104
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->time:J

    move-wide/from16 v20, v0

    sub-long v8, p2, v20

    .line 107
    .local v8, "deltaTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alphaDuration:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaAlpha:I

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 108
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alphaDuration:J

    move-wide/from16 v20, v0

    cmp-long v19, v8, v20

    if-ltz v19, :cond_4

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endAlpha:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alpha:I

    .line 118
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginX:F

    .line 119
    .local v5, "currX":F
    move-object/from16 v0, p0

    iget v6, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginY:F

    .line 120
    .local v6, "currY":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationStartDelay:J

    move-wide/from16 v20, v0

    sub-long v12, v8, v20

    .line 121
    .local v12, "dtime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_9

    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-ltz v19, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    move-wide/from16 v20, v0

    cmp-long v19, v12, v20

    if-gtz v19, :cond_9

    .line 122
    long-to-float v0, v12

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    div-float v15, v19, v20

    .line 123
    .local v15, "tranalationProgress":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 124
    const/4 v7, 0x0

    .line 125
    .local v7, "currentLinePath":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    .line 134
    :goto_3
    if-eqz v7, :cond_3

    .line 135
    iget v10, v7, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->delatX:F

    .line 136
    .local v10, "deltaX":F
    iget v11, v7, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->deltaY:F

    .line 137
    .local v11, "deltaY":F
    iget-wide v0, v7, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->beginTime:J

    move-wide/from16 v20, v0

    sub-long v20, v8, v20

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    .line 138
    iget-wide v0, v7, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->duration:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    .line 137
    div-float v15, v19, v20

    .line 139
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->pBegin:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->x:F

    .line 140
    .local v3, "beginX":F
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->pBegin:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->y:F

    .line 141
    .local v4, "beginY":F
    const/16 v19, 0x0

    cmpl-float v19, v10, v19

    if-eqz v19, :cond_2

    .line 142
    mul-float v17, v10, v15

    .line 143
    .local v17, "vectorX":F
    add-float v5, v3, v17

    .line 145
    .end local v17    # "vectorX":F
    :cond_2
    const/16 v19, 0x0

    cmpl-float v19, v11, v19

    if-eqz v19, :cond_3

    .line 146
    mul-float v18, v11, v15

    .line 147
    .local v18, "vectorY":F
    add-float v6, v4, v18

    .line 165
    .end local v3    # "beginX":F
    .end local v4    # "beginY":F
    .end local v7    # "currentLinePath":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    .end local v10    # "deltaX":F
    .end local v11    # "deltaY":F
    .end local v15    # "tranalationProgress":F
    .end local v18    # "vectorY":F
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput v6, v19, v20

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->paintWidth:F

    move/from16 v21, v0

    add-float v21, v21, v5

    aput v21, v19, v20

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->paintHeight:F

    move/from16 v21, v0

    add-float v21, v21, v6

    aput v21, v19, v20

    .line 170
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->isOutside()Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->setVisibility(Z)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    move-object/from16 v19, v0

    goto/16 :goto_0

    .line 111
    .end local v5    # "currX":F
    .end local v6    # "currY":F
    .end local v12    # "dtime":J
    :cond_4
    long-to-float v0, v8

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alphaDuration:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    div-float v2, v19, v20

    .line 112
    .local v2, "alphaProgress":F
    move-object/from16 v0, p0

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaAlpha:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v2

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 113
    .local v16, "vectorAlpha":I
    move-object/from16 v0, p0

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginAlpha:I

    move/from16 v19, v0

    add-int v19, v19, v16

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alpha:I

    goto/16 :goto_1

    .line 125
    .end local v2    # "alphaProgress":F
    .end local v16    # "vectorAlpha":I
    .restart local v5    # "currX":F
    .restart local v6    # "currY":F
    .restart local v7    # "currentLinePath":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    .restart local v12    # "dtime":J
    .restart local v15    # "tranalationProgress":F
    :cond_5
    aget-object v14, v20, v19

    .line 126
    .local v14, "line":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    iget-wide v0, v14, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->beginTime:J

    move-wide/from16 v22, v0

    cmp-long v22, v12, v22

    if-ltz v22, :cond_6

    iget-wide v0, v14, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->endTime:J

    move-wide/from16 v22, v0

    cmp-long v22, v12, v22

    if-gez v22, :cond_6

    .line 127
    move-object v7, v14

    .line 128
    goto/16 :goto_3

    .line 130
    :cond_6
    iget-object v0, v14, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->pEnd:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->x:F

    .line 131
    iget-object v0, v14, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->pEnd:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v6, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->y:F

    .line 125
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 151
    .end local v7    # "currentLinePath":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    .end local v14    # "line":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaX:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_8

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaX:F

    move/from16 v19, v0

    mul-float v17, v19, v15

    .line 153
    .restart local v17    # "vectorX":F
    move-object/from16 v0, p0

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginX:F

    move/from16 v19, v0

    add-float v5, v19, v17

    .line 155
    .end local v17    # "vectorX":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaY:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaY:F

    move/from16 v19, v0

    mul-float v18, v19, v15

    .line 157
    .restart local v18    # "vectorY":F
    move-object/from16 v0, p0

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginY:F

    move/from16 v19, v0

    add-float v6, v19, v18

    .line 160
    goto/16 :goto_4

    .end local v15    # "tranalationProgress":F
    .end local v18    # "vectorY":F
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    move-wide/from16 v20, v0

    cmp-long v19, v12, v20

    if-lez v19, :cond_3

    .line 161
    move-object/from16 v0, p0

    iget v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endX:F

    .line 162
    move-object/from16 v0, p0

    iget v6, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endY:F

    goto/16 :goto_4

    .line 170
    :cond_a
    const/16 v19, 0x1

    goto/16 :goto_5
.end method

.method public getRight()F
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getTop()F
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x7

    return v0
.end method

.method public layout(Lmaster/flame/danmaku/danmaku/model/IDisplayer;FF)V
    .locals 2
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 95
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {p0, p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F

    .line 96
    return-void
.end method

.method public setAlphaData(IIJ)V
    .locals 1
    .param p1, "beginAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "alphaDuration"    # J

    .prologue
    .line 213
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginAlpha:I

    .line 214
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endAlpha:I

    .line 215
    sub-int v0, p2, p1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaAlpha:I

    .line 216
    iput-wide p3, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alphaDuration:J

    .line 217
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaAlpha:I

    if-eqz v0, :cond_0

    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    if-eq p1, v0, :cond_0

    .line 218
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alpha:I

    .line 220
    :cond_0
    return-void
.end method

.method public setLinePathData([[F)V
    .locals 12
    .param p1, "points"    # [[F

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 223
    if-eqz p1, :cond_0

    .line 224
    array-length v2, p1

    .line 225
    .local v2, "length":I
    aget-object v6, p1, v5

    aget v6, v6, v5

    iput v6, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginX:F

    .line 226
    aget-object v6, p1, v5

    aget v6, v6, v11

    iput v6, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginY:F

    .line 227
    add-int/lit8 v6, v2, -0x1

    aget-object v6, p1, v6

    aget v6, v6, v5

    iput v6, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endX:F

    .line 228
    add-int/lit8 v6, v2, -0x1

    aget-object v6, p1, v6

    aget v6, v6, v11

    iput v6, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endY:F

    .line 229
    array-length v6, p1

    if-le v6, v11, :cond_0

    .line 230
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    iput-object v6, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    array-length v6, v6

    if-lt v0, v6, :cond_1

    .line 236
    const/4 v4, 0x0

    .line 237
    .local v4, "totalDistance":F
    iget-object v7, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    array-length v8, v7

    move v6, v5

    :goto_1
    if-lt v6, v8, :cond_2

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "lastLine":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    iget-object v8, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    array-length v9, v8

    :goto_2
    if-lt v5, v9, :cond_3

    .line 250
    .end local v0    # "i":I
    .end local v1    # "lastLine":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    .end local v2    # "length":I
    .end local v4    # "totalDistance":F
    :cond_0
    return-void

    .line 232
    .restart local v0    # "i":I
    .restart local v2    # "length":I
    :cond_1
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    new-instance v7, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    invoke-direct {v7, p0}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;-><init>(Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;)V

    aput-object v7, v6, v0

    .line 233
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    aget-object v6, v6, v0

    new-instance v7, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    aget-object v8, p1, v0

    aget v8, v8, v5

    aget-object v9, p1, v0

    aget v9, v9, v11

    invoke-direct {v7, p0, v8, v9}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;-><init>(Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;FF)V

    new-instance v8, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    .line 234
    add-int/lit8 v9, v0, 0x1

    aget-object v9, p1, v9

    aget v9, v9, v5

    add-int/lit8 v10, v0, 0x1

    aget-object v10, p1, v10

    aget v10, v10, v11

    invoke-direct {v8, p0, v9, v10}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;-><init>(Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;FF)V

    .line 233
    invoke-virtual {v6, v7, v8}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->setPoints(Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .restart local v4    # "totalDistance":F
    :cond_2
    aget-object v3, v7, v6

    .line 238
    .local v3, "line":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->getDistance()F

    move-result v9

    add-float/2addr v4, v9

    .line 237
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 241
    .end local v3    # "line":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    .restart local v1    # "lastLine":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    :cond_3
    aget-object v3, v8, v5

    .line 242
    .restart local v3    # "line":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->getDistance()F

    move-result v6

    div-float/2addr v6, v4

    iget-wide v10, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    long-to-float v7, v10

    mul-float/2addr v6, v7

    float-to-long v6, v6

    iput-wide v6, v3, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->duration:J

    .line 243
    if-nez v1, :cond_4

    const-wide/16 v6, 0x0

    :goto_3
    iput-wide v6, v3, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->beginTime:J

    .line 244
    iget-wide v6, v3, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->beginTime:J

    iget-wide v10, v3, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->duration:J

    add-long/2addr v6, v10

    iput-wide v6, v3, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->endTime:J

    .line 245
    move-object v1, v3

    .line 241
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 243
    :cond_4
    iget-wide v6, v1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->endTime:J

    goto :goto_3
.end method

.method public setTranslationData(FFFFJJ)V
    .locals 1
    .param p1, "beginX"    # F
    .param p2, "beginY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F
    .param p5, "translationDuration"    # J
    .param p7, "translationStartDelay"    # J

    .prologue
    .line 202
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginX:F

    .line 203
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginY:F

    .line 204
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endX:F

    .line 205
    iput p4, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endY:F

    .line 206
    sub-float v0, p3, p1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaX:F

    .line 207
    sub-float v0, p4, p2

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaY:F

    .line 208
    iput-wide p5, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    .line 209
    iput-wide p7, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationStartDelay:J

    .line 210
    return-void
.end method

.method public updateData(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 254
    return-void
.end method
