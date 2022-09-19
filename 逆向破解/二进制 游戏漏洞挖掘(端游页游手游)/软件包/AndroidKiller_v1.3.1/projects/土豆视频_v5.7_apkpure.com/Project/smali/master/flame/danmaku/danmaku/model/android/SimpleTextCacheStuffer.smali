.class public Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;
.super Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;
.source "SimpleTextCacheStuffer.java"


# static fields
.field private static final sTextHeightCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->sTextHeightCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCaches()V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->sTextHeightCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    return-void
.end method

.method public drawBackground(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FF)V
    .locals 0
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "left"    # F
    .param p4, "top"    # F

    .prologue
    .line 85
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
    .line 61
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p3, p2, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "lineText"    # Ljava/lang/String;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "left"    # F
    .param p5, "top"    # F
    .param p6, "paint"    # Landroid/text/TextPaint;
    .param p7, "fromWorkerThread"    # Z

    .prologue
    .line 70
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p3, p2, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected getCacheHeight(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;)Ljava/lang/Float;
    .locals 5
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 21
    .local v2, "textSize":Ljava/lang/Float;
    sget-object v3, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->sTextHeightCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 22
    .local v1, "textHeight":Ljava/lang/Float;
    if-nez v1, :cond_0

    .line 23
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 24
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 25
    sget-object v3, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->sTextHeightCache:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .end local v0    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    :cond_0
    return-object v1
.end method

.method public measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V
    .locals 8
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "fromWorkerThread"    # Z

    .prologue
    .line 32
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    if-eqz v4, :cond_0

    .line 33
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    invoke-virtual {v4, p1, p3}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;->prepareDrawing(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 36
    .local v3, "w":F
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 37
    .local v1, "textHeight":Ljava/lang/Float;
    iget-object v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    if-nez v4, :cond_2

    .line 38
    iget-object v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    if-nez v4, :cond_1

    .line 39
    const/4 v3, 0x0

    .line 44
    :goto_0
    iput v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 45
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 57
    :goto_1
    return-void

    .line 41
    :cond_1
    iget-object v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 42
    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->getCacheHeight(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->getCacheHeight(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;)Ljava/lang/Float;

    move-result-object v1

    .line 48
    iget-object v5, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v6, :cond_3

    .line 54
    iput v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 55
    iget-object v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    array-length v4, v4

    int-to-float v4, v4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    goto :goto_1

    .line 48
    :cond_3
    aget-object v0, v5, v4

    .line 49
    .local v0, "tempStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 50
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 51
    .local v2, "tr":F
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 48
    .end local v2    # "tr":F
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
