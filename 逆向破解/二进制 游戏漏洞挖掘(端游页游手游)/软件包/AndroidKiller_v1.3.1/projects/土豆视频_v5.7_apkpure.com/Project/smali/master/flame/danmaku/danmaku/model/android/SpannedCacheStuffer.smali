.class public Lmaster/flame/danmaku/danmaku/model/android/SpannedCacheStuffer;
.super Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;
.source "SpannedCacheStuffer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 101
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 104
    :cond_0
    return-void
.end method

.method public clearCaches()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->clearCaches()V

    .line 95
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 96
    return-void
.end method

.method public drawStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "lineText"    # Ljava/lang/String;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "left"    # F
    .param p5, "top"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 43
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 44
    invoke-super/range {p0 .. p6}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->drawStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 46
    :cond_0
    return-void
.end method

.method public drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V
    .locals 14
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "lineText"    # Ljava/lang/String;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "left"    # F
    .param p5, "top"    # F
    .param p6, "paint"    # Landroid/text/TextPaint;
    .param p7, "fromWorkerThread"    # Z

    .prologue
    .line 50
    iget-object v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 51
    invoke-super/range {p0 .. p7}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v11, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/ref/SoftReference;

    .line 55
    .local v11, "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/text/StaticLayout;>;"
    invoke-virtual {v11}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/StaticLayout;

    .line 56
    .local v2, "staticLayout":Landroid/text/StaticLayout;
    iget v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    const/4 v13, 0x1

    .line 57
    .local v13, "requestRemeasure":Z
    :goto_1
    iget v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    const/4 v12, 0x1

    .line 59
    .local v12, "requestInvalidate":Z
    :goto_2
    if-nez v12, :cond_2

    if-nez v2, :cond_4

    .line 60
    :cond_2
    if-eqz v12, :cond_8

    .line 61
    iget v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    .line 65
    :cond_3
    :goto_3
    iget-object v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 66
    .local v3, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 67
    if-eqz v13, :cond_9

    .line 68
    new-instance v2, Landroid/text/StaticLayout;

    .end local v2    # "staticLayout":Landroid/text/StaticLayout;
    iget-object v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, p6

    invoke-static {v4, v0}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-int v5, v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 69
    .restart local v2    # "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 70
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 71
    iget v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    .line 75
    :goto_4
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    .line 80
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_4
    const/4 v10, 0x0

    .line 81
    .local v10, "needRestore":Z
    const/4 v4, 0x0

    cmpl-float v4, p4, v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    cmpl-float v4, p5, v4

    if-eqz v4, :cond_5

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 83
    invoke-virtual/range {p6 .. p6}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float v4, v4, p5

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    const/4 v10, 0x1

    .line 86
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 87
    if-eqz v10, :cond_0

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 56
    .end local v10    # "needRestore":Z
    .end local v12    # "requestInvalidate":Z
    .end local v13    # "requestRemeasure":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_1

    .line 57
    .restart local v13    # "requestRemeasure":Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 62
    .restart local v12    # "requestInvalidate":Z
    :cond_8
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/SpannedCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    if-eqz v4, :cond_3

    .line 63
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/SpannedCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    move/from16 v0, p7

    invoke-virtual {v4, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;->prepareDrawing(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    goto :goto_3

    .line 73
    .restart local v3    # "text":Ljava/lang/CharSequence;
    :cond_9
    new-instance v2, Landroid/text/StaticLayout;

    .end local v2    # "staticLayout":Landroid/text/StaticLayout;
    iget v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    float-to-int v5, v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .restart local v2    # "staticLayout":Landroid/text/StaticLayout;
    goto :goto_4
.end method

.method public measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V
    .locals 8
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "fromWorkerThread"    # Z

    .prologue
    .line 25
    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 26
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/SpannedCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    if-eqz v2, :cond_0

    .line 27
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/SpannedCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    invoke-virtual {v2, p1, p3}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;->prepareDrawing(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 29
    :cond_0
    iget-object v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 30
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 31
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-static {v2, p2}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-int v3, v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 32
    .local v0, "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 33
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 34
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    .line 39
    .end local v0    # "staticLayout":Landroid/text/StaticLayout;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V

    goto :goto_0
.end method

.method public releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 0
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/SpannedCacheStuffer;->clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 109
    invoke-super {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 110
    return-void
.end method
