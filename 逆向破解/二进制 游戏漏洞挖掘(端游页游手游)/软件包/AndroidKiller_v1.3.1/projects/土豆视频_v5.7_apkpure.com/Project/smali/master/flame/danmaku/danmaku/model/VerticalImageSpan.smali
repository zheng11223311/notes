.class public Lmaster/flame/danmaku/danmaku/model/VerticalImageSpan;
.super Landroid/text/style/ImageSpan;
.source "VerticalImageSpan.java"


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/VerticalImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    .line 15
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 42
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/VerticalImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    sub-int v2, p8, p6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v1, v2, p6

    .line 45
    .local v1, "transY":I
    int-to-float v2, v1

    invoke-virtual {p1, p5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 48
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 9
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fontMetricsInt"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 19
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/VerticalImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 20
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 21
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/VerticalImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    .line 23
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 24
    .local v5, "rect":Landroid/graphics/Rect;
    if-eqz p5, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 26
    .local v3, "fmPaint":Landroid/graphics/Paint$FontMetricsInt;
    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v8, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v4, v7, v8

    .line 27
    .local v4, "fontHeight":I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int v1, v7, v8

    .line 29
    .local v1, "drHeight":I
    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v4, 0x4

    sub-int v6, v7, v8

    .line 30
    .local v6, "top":I
    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v4, 0x4

    add-int v0, v7, v8

    .line 32
    .local v0, "bottom":I
    neg-int v7, v0

    iput v7, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 33
    neg-int v7, v0

    iput v7, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 34
    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 35
    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 37
    .end local v0    # "bottom":I
    .end local v1    # "drHeight":I
    .end local v3    # "fmPaint":Landroid/graphics/Paint$FontMetricsInt;
    .end local v4    # "fontHeight":I
    .end local v6    # "top":I
    :cond_1
    iget v7, v5, Landroid/graphics/Rect;->right:I

    return v7
.end method
