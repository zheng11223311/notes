.class Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;
.super Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FBDanmakusRetainer"
.end annotation


# instance fields
.field protected mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;)V

    .line 248
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mCancelFixingFlag:Z

    .line 338
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->clear()V

    .line 339
    return-void
.end method

.method public fix(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;)V
    .locals 20
    .param p1, "drawItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p3, "verifier"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    .prologue
    .line 252
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v17

    .line 255
    .local v17, "shown":Z
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v18

    .line 256
    .local v18, "topPos":F
    const/4 v15, 0x0

    .line 257
    .local v15, "lines":I
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v19, 0x1

    .line 258
    .local v19, "willHit":Z
    :goto_1
    const/4 v4, 0x0

    .line 259
    .local v4, "isOutOfVerticalEdge":Z
    const/4 v5, 0x0

    cmpg-float v5, v18, v5

    if-gez v5, :cond_2

    .line 260
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget v7, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    sub-float v18, v5, v7

    .line 262
    :cond_2
    const/16 v16, 0x0

    .local v16, "removeItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v12, 0x0

    .line 263
    .local v12, "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-nez v17, :cond_4

    .line 264
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mCancelFixingFlag:Z

    .line 265
    move-object/from16 v0, p0

    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v14

    .line 266
    .local v14, "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mCancelFixingFlag:Z

    if-nez v5, :cond_3

    invoke-interface {v14}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 300
    :cond_3
    :goto_3
    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, v18

    invoke-virtual/range {v7 .. v13}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->isOutVerticalEdge(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;FLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v4

    .line 301
    if-eqz v4, :cond_d

    .line 302
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget v7, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    sub-float v18, v5, v7

    .line 303
    const/16 v19, 0x1

    .line 310
    .end local v14    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_4
    :goto_4
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v15, v3}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;->skipLayout(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;FIZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 314
    :cond_5
    if-eqz v4, :cond_6

    .line 315
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->clear()V

    .line 318
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getLeft()F

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v5, v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->layout(Lmaster/flame/danmaku/danmaku/model/IDisplayer;FF)V

    .line 320
    if-nez v17, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->removeItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 322
    move-object/from16 v0, p0

    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    goto/16 :goto_0

    .line 257
    .end local v4    # "isOutOfVerticalEdge":Z
    .end local v12    # "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v16    # "removeItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v19    # "willHit":Z
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 267
    .restart local v4    # "isOutOfVerticalEdge":Z
    .restart local v12    # "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v14    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    .restart local v16    # "removeItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v19    # "willHit":Z
    :cond_8
    add-int/lit8 v15, v15, 0x1

    .line 268
    invoke-interface {v14}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v6

    .line 269
    .local v6, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    move-object/from16 v0, p1

    if-ne v6, v0, :cond_9

    .line 270
    const/16 v16, 0x0

    .line 271
    const/16 v19, 0x0

    .line 272
    goto :goto_3

    .line 275
    :cond_9
    if-nez v12, :cond_a

    .line 276
    move-object v12, v6

    .line 277
    invoke-virtual {v12}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v5

    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-nez v5, :cond_3

    .line 282
    :cond_a
    const/4 v5, 0x0

    cmpg-float v5, v18, v5

    if-gez v5, :cond_b

    .line 283
    const/16 v16, 0x0

    .line 284
    goto :goto_3

    .line 289
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDuration()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTimer()Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v5

    iget-wide v10, v5, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    move-object/from16 v5, p2

    move-object/from16 v7, p1

    .line 288
    invoke-static/range {v5 .. v11}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->willHitInDuration(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;JJ)Z

    move-result v19

    .line 290
    if-nez v19, :cond_c

    .line 291
    move-object/from16 v16, v6

    .line 293
    goto/16 :goto_3

    .line 296
    :cond_c
    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v5

    move-object/from16 v0, p1

    iget v7, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    sub-float v18, v5, v7

    goto/16 :goto_2

    .line 304
    .end local v6    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_d
    const/4 v5, 0x0

    cmpl-float v5, v18, v5

    if-ltz v5, :cond_4

    .line 305
    const/16 v19, 0x0

    goto/16 :goto_4
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
    .line 329
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v0

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    const/4 v0, 0x1

    .line 332
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
