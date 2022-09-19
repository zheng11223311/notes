.class public Lio/rong/imkit/widget/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawable.java"


# instance fields
.field private final bitmapShader:Landroid/graphics/BitmapShader;

.field private final cornerRadius:F

.field private mBitmapRect:Landroid/graphics/RectF;

.field private final mRect:Landroid/graphics/RectF;

.field private final margin:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cornerRadius"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/rong/imkit/widget/RoundRectDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cornerRadius"    # I
    .param p3, "margin"    # I

    .prologue
    const/4 v5, 0x1

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/widget/RoundRectDrawable;->mRect:Landroid/graphics/RectF;

    .line 35
    int-to-float v0, p2

    iput v0, p0, Lio/rong/imkit/widget/RoundRectDrawable;->cornerRadius:F

    .line 36
    iput p3, p0, Lio/rong/imkit/widget/RoundRectDrawable;->margin:I

    .line 38
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lio/rong/imkit/widget/RoundRectDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, p3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, p3

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lio/rong/imkit/widget/RoundRectDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/widget/RoundRectDrawable;->paint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lio/rong/imkit/widget/RoundRectDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lio/rong/imkit/widget/RoundRectDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lio/rong/imkit/widget/RoundRectDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 44
    iget-object v0, p0, Lio/rong/imkit/widget/RoundRectDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 45
    iget-object v0, p0, Lio/rong/imkit/widget/RoundRectDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    iget-object v0, p0, Lio/rong/imkit/widget/RoundRectDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lio/rong/imkit/widget/RoundRectDrawable;->cornerRadius:F

    iget v2, p0, Lio/rong/imkit/widget/RoundRectDrawable;->cornerRadius:F

    iget-object v3, p0, Lio/rong/imkit/widget/RoundRectDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 63
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 52
    iget-object v1, p0, Lio/rong/imkit/widget/RoundRectDrawable;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lio/rong/imkit/widget/RoundRectDrawable;->margin:I

    int-to-float v2, v2

    iget v3, p0, Lio/rong/imkit/widget/RoundRectDrawable;->margin:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lio/rong/imkit/widget/RoundRectDrawable;->margin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lio/rong/imkit/widget/RoundRectDrawable;->margin:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 55
    .local v0, "shaderMatrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lio/rong/imkit/widget/RoundRectDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/rong/imkit/widget/RoundRectDrawable;->mRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 56
    iget-object v1, p0, Lio/rong/imkit/widget/RoundRectDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 58
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lio/rong/imkit/widget/RoundRectDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 77
    iget-object v0, p0, Lio/rong/imkit/widget/RoundRectDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 78
    return-void
.end method
