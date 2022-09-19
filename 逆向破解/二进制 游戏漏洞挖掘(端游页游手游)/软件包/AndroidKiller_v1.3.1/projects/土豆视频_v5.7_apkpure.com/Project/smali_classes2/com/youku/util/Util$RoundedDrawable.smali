.class public Lcom/youku/util/Util$RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedDrawable"
.end annotation


# instance fields
.field protected final bitmapShader:Landroid/graphics/BitmapShader;

.field protected final cornerRadius:F

.field protected final defaultMargin:I

.field protected final defaultRadius:F

.field protected final mBitmapRect:Landroid/graphics/RectF;

.field protected final mRect:Landroid/graphics/RectF;

.field protected final margin:I

.field protected final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 399
    const/high16 v0, 0x44070000    # 540.0f

    iput v0, p0, Lcom/youku/util/Util$RoundedDrawable;->defaultRadius:F

    .line 400
    iput v2, p0, Lcom/youku/util/Util$RoundedDrawable;->defaultMargin:I

    .line 402
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    .line 408
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/youku/util/Util$RoundedDrawable;->cornerRadius:F

    .line 410
    iput v2, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    .line 412
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 413
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 415
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->paint:Landroid/graphics/Paint;

    .line 416
    iget-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 417
    iget-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/youku/util/Util$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 418
    return-void

    .line 408
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cornerRadius"    # I

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 399
    const/high16 v0, 0x44070000    # 540.0f

    iput v0, p0, Lcom/youku/util/Util$RoundedDrawable;->defaultRadius:F

    .line 400
    iput v1, p0, Lcom/youku/util/Util$RoundedDrawable;->defaultMargin:I

    .line 402
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    .line 421
    int-to-float v0, p2

    iput v0, p0, Lcom/youku/util/Util$RoundedDrawable;->cornerRadius:F

    .line 422
    iput v1, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    .line 424
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 425
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 427
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->paint:Landroid/graphics/Paint;

    .line 428
    iget-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 429
    iget-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/youku/util/Util$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 430
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cornerRadius"    # I
    .param p3, "margin"    # I

    .prologue
    .line 432
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 399
    const/high16 v0, 0x44070000    # 540.0f

    iput v0, p0, Lcom/youku/util/Util$RoundedDrawable;->defaultRadius:F

    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/util/Util$RoundedDrawable;->defaultMargin:I

    .line 402
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    .line 433
    int-to-float v0, p2

    iput v0, p0, Lcom/youku/util/Util$RoundedDrawable;->cornerRadius:F

    .line 434
    iput p3, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    .line 436
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 437
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

    iput-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 439
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->paint:Landroid/graphics/Paint;

    .line 440
    iget-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 441
    iget-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/youku/util/Util$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 442
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/youku/util/Util$RoundedDrawable;->cornerRadius:F

    iget v2, p0, Lcom/youku/util/Util$RoundedDrawable;->cornerRadius:F

    iget-object v3, p0, Lcom/youku/util/Util$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 459
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 463
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 446
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 447
    iget-object v1, p0, Lcom/youku/util/Util$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/youku/util/Util$RoundedDrawable;->margin:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 450
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 451
    .local v0, "shaderMatrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/youku/util/Util$RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/youku/util/Util$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 452
    iget-object v1, p0, Lcom/youku/util/Util$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 454
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 469
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/youku/util/Util$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 474
    return-void
.end method
