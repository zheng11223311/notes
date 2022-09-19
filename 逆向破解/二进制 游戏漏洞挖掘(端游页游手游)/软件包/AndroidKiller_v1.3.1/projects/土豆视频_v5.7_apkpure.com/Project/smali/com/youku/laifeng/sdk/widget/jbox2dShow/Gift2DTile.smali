.class public Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;
.super Ljava/lang/Object;
.source "Gift2DTile.java"


# instance fields
.field private angle:F

.field private bitmap:Landroid/graphics/Bitmap;

.field public giftalpha:I

.field public giftscale:F

.field private h:F

.field private w:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FFIFFLandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "angle"    # I
    .param p4, "w"    # F
    .param p5, "h"    # F
    .param p6, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0xff

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->giftalpha:I

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->giftscale:F

    .line 24
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->x:F

    .line 25
    iput p2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->y:F

    .line 26
    iput p4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->w:F

    .line 27
    iput p5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->h:F

    .line 28
    iput-object p6, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->bitmap:Landroid/graphics/Bitmap;

    .line 29
    int-to-float v0, p3

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->angle:F

    .line 30
    return-void
.end method


# virtual methods
.method public drawStone(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    iget v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->angle:F

    iget v6, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->x:F

    iget v7, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->w:F

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget v7, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->y:F

    iget v8, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->h:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 94
    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v2

    .line 95
    .local v2, "length":I
    iget v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->x:F

    float-to-int v5, v5

    int-to-float v6, v2

    iget v7, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->giftscale:F

    sub-float v7, v10, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v9

    float-to-int v6, v6

    add-int v1, v5, v6

    .line 96
    .local v1, "left":I
    iget v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->y:F

    float-to-int v5, v5

    int-to-float v6, v2

    iget v7, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->giftscale:F

    sub-float v7, v10, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v9

    float-to-int v6, v6

    add-int v4, v5, v6

    .line 97
    .local v4, "top":I
    iget v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->x:F

    float-to-int v5, v5

    int-to-float v6, v2

    iget v7, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->giftscale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 98
    .local v3, "right":I
    iget v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->y:F

    float-to-int v5, v5

    int-to-float v6, v2

    iget v7, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->giftscale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v0, v5, v6

    .line 99
    .local v0, "bottom":I
    iget v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->giftalpha:I

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->bitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v1

    int-to-float v9, v4

    int-to-float v10, v3

    int-to-float v11, v0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v5, v6, v7, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    return-void
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->angle:F

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGiftalpha()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->giftalpha:I

    return v0
.end method

.method public getGiftscale()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->giftscale:F

    return v0
.end method

.method public getH()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->h:F

    return v0
.end method

.method public getW()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->w:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->y:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->angle:F

    .line 72
    return-void
.end method

.method public setGiftalpha(I)V
    .locals 0
    .param p1, "giftalpha"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->giftalpha:I

    .line 80
    return-void
.end method

.method public setGiftscale(F)V
    .locals 0
    .param p1, "giftscale"    # F

    .prologue
    .line 87
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->giftscale:F

    .line 88
    return-void
.end method

.method public setH(F)V
    .locals 0
    .param p1, "h"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->h:F

    .line 64
    return-void
.end method

.method public setW(F)V
    .locals 0
    .param p1, "w"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->w:F

    .line 56
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->x:F

    .line 40
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;->y:F

    .line 48
    return-void
.end method
