.class Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;
.super Ljava/lang/Object;
.source "DanmakusRetainer.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RLDanmakusRetainer"
.end annotation


# instance fields
.field protected mCancelFixingFlag:Z

.field protected mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mCancelFixingFlag:Z

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mCancelFixingFlag:Z

    .line 228
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->clear()V

    .line 229
    return-void
.end method

.method public fix(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;)V
    .locals 22
    .param p1, "drawItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p3, "verifier"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    .prologue
    .line 114
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v11, 0x0

    .line 117
    .local v11, "topPos":F
    const/16 v17, 0x0

    .line 118
    .local v17, "lines":I
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v5

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    const/16 v21, 0x1

    .line 119
    .local v21, "willHit":Z
    :goto_1
    const/4 v15, 0x0

    .line 120
    .local v15, "isOutOfVertialEdge":Z
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v20

    .line 121
    .local v20, "shown":Z
    if-nez v20, :cond_6

    .line 122
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mCancelFixingFlag:Z

    .line 124
    move-object/from16 v0, p0

    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v16

    .line 125
    .local v16, "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    const/4 v14, 0x0

    .local v14, "insertItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v12, 0x0

    .local v12, "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v13, 0x0

    .local v13, "lastItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/16 v18, 0x0

    .line 126
    .local v18, "minRightRow":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/16 v19, 0x0

    .line 127
    .local v19, "overwriteInsert":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mCancelFixingFlag:Z

    if-nez v5, :cond_2

    invoke-interface/range {v16 .. v16}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_a

    :cond_2
    move/from16 v8, v19

    .line 164
    .end local v19    # "overwriteInsert":Z
    .local v8, "overwriteInsert":Z
    :goto_3
    const/4 v4, 0x1

    .line 165
    .local v4, "checkEdge":Z
    if-eqz v14, :cond_12

    .line 166
    if-eqz v13, :cond_11

    .line 167
    invoke-virtual {v13}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v11

    .line 170
    :goto_4
    move-object/from16 v0, p1

    if-eq v14, v0, :cond_3

    .line 171
    move-object/from16 v0, p0

    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v5, v14}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->removeItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 172
    const/16 v20, 0x0

    .line 188
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 189
    invoke-virtual/range {v7 .. v13}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->isOutVerticalEdge(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;FLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v15

    .line 192
    :cond_4
    if-eqz v15, :cond_5

    .line 193
    const/4 v11, 0x0

    .line 194
    const/16 v21, 0x1

    .line 196
    :cond_5
    const/4 v5, 0x0

    cmpl-float v5, v11, v5

    if-nez v5, :cond_6

    .line 197
    const/16 v20, 0x0

    .line 201
    .end local v4    # "checkEdge":Z
    .end local v8    # "overwriteInsert":Z
    .end local v12    # "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v13    # "lastItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v14    # "insertItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v16    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    .end local v18    # "minRightRow":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_6
    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v21

    invoke-interface {v0, v1, v11, v2, v3}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;->skipLayout(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;FIZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 205
    :cond_7
    if-eqz v15, :cond_8

    .line 206
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->clear()V

    .line 209
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getLeft()F

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5, v11}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->layout(Lmaster/flame/danmaku/danmaku/model/IDisplayer;FF)V

    .line 211
    if-nez v20, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    goto/16 :goto_0

    .line 118
    .end local v15    # "isOutOfVertialEdge":Z
    .end local v20    # "shown":Z
    .end local v21    # "willHit":Z
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 128
    .restart local v12    # "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v13    # "lastItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v14    # "insertItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v15    # "isOutOfVertialEdge":Z
    .restart local v16    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    .restart local v18    # "minRightRow":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v19    # "overwriteInsert":Z
    .restart local v20    # "shown":Z
    .restart local v21    # "willHit":Z
    :cond_a
    add-int/lit8 v17, v17, 0x1

    .line 129
    invoke-interface/range {v16 .. v16}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v6

    .line 130
    .local v6, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    move-object/from16 v0, p1

    if-ne v6, v0, :cond_b

    .line 131
    move-object v14, v6

    .line 132
    const/4 v13, 0x0

    .line 133
    const/16 v20, 0x1

    .line 134
    const/16 v21, 0x0

    move/from16 v8, v19

    .line 135
    .end local v19    # "overwriteInsert":Z
    .restart local v8    # "overwriteInsert":Z
    goto :goto_3

    .line 138
    .end local v8    # "overwriteInsert":Z
    .restart local v19    # "overwriteInsert":Z
    :cond_b
    if-nez v12, :cond_c

    .line 139
    move-object v12, v6

    .line 141
    :cond_c
    move-object/from16 v0, p1

    iget v5, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v7

    add-float/2addr v5, v7

    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_d

    .line 142
    const/4 v8, 0x1

    .line 143
    .end local v19    # "overwriteInsert":Z
    .restart local v8    # "overwriteInsert":Z
    goto/16 :goto_3

    .line 146
    .end local v8    # "overwriteInsert":Z
    .restart local v19    # "overwriteInsert":Z
    :cond_d
    if-nez v18, :cond_f

    .line 147
    move-object/from16 v18, v6

    .line 156
    :cond_e
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDuration()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTimer()Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v5

    iget-wide v10, v5, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    move-object/from16 v5, p2

    move-object/from16 v7, p1

    .line 155
    invoke-static/range {v5 .. v11}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->willHitInDuration(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;JJ)Z

    move-result v21

    .line 157
    if-nez v21, :cond_10

    .line 158
    move-object v14, v6

    move/from16 v8, v19

    .line 159
    .end local v19    # "overwriteInsert":Z
    .restart local v8    # "overwriteInsert":Z
    goto/16 :goto_3

    .line 149
    .end local v8    # "overwriteInsert":Z
    .restart local v19    # "overwriteInsert":Z
    :cond_f
    invoke-virtual/range {v18 .. v18}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getRight()F

    move-result v5

    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getRight()F

    move-result v7

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_e

    .line 150
    move-object/from16 v18, v6

    goto :goto_6

    .line 162
    :cond_10
    move-object v13, v6

    goto/16 :goto_2

    .line 169
    .end local v6    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v19    # "overwriteInsert":Z
    .restart local v4    # "checkEdge":Z
    .restart local v8    # "overwriteInsert":Z
    :cond_11
    invoke-virtual {v14}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v11

    goto/16 :goto_4

    .line 174
    :cond_12
    if-eqz v8, :cond_13

    if-eqz v18, :cond_13

    .line 175
    invoke-virtual/range {v18 .. v18}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v11

    .line 176
    const/4 v4, 0x0

    .line 177
    const/16 v20, 0x0

    .line 178
    goto/16 :goto_5

    :cond_13
    if-eqz v13, :cond_14

    .line 179
    invoke-virtual {v13}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v11

    .line 180
    const/16 v21, 0x0

    .line 181
    goto/16 :goto_5

    :cond_14
    if-eqz v12, :cond_15

    .line 182
    invoke-virtual {v12}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v11

    .line 183
    move-object/from16 v0, p0

    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v5, v12}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->removeItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 184
    const/16 v20, 0x0

    .line 185
    goto/16 :goto_5

    .line 186
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_5
.end method

.method protected isOutVerticalEdge(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;FLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 2
    .param p1, "overwriteInsert"    # Z
    .param p2, "drawItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p3, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p4, "topPos"    # F
    .param p5, "firstItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p6, "lastItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    const/4 v1, 0x0

    .line 219
    cmpg-float v0, p4, v1

    if-ltz v0, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float/2addr v0, p4

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 220
    :cond_1
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
