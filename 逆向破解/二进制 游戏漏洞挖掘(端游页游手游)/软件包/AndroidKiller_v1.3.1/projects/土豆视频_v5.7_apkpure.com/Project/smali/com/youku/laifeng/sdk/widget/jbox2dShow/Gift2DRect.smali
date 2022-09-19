.class public Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;
.super Ljava/lang/Object;
.source "Gift2DRect.java"


# instance fields
.field private angle:F

.field private h:F

.field private w:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->x:F

    .line 18
    iput p2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->y:F

    .line 19
    iput p3, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->w:F

    .line 20
    iput p4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->h:F

    .line 21
    return-void
.end method


# virtual methods
.method public drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 26
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->angle:F

    iget v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->x:F

    iget v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->w:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->y:F

    iget v3, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->h:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 27
    iget v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->x:F

    iget v2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->y:F

    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->x:F

    iget v3, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->w:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->y:F

    iget v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->h:F

    add-float/2addr v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 30
    return-void
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->angle:F

    return v0
.end method

.method public getH()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->h:F

    return v0
.end method

.method public getW()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->w:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->y:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->angle:F

    .line 65
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->x:F

    .line 38
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;->y:F

    .line 46
    return-void
.end method
