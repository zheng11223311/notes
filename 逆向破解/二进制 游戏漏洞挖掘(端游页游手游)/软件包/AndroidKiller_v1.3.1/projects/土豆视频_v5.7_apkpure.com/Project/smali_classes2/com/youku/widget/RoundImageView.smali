.class public Lcom/youku/widget/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# static fields
.field private static final ROUND_COLOR:I = -0x9a00


# instance fields
.field private PADING:F

.field private backPaint:Landroid/graphics/Paint;

.field private mRound_R:I

.field private mRound_width:I

.field private paint:Landroid/graphics/Paint;

.field private size:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/youku/widget/RoundImageView;->PADING:F

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/youku/widget/RoundImageView;->mRound_width:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/widget/RoundImageView;->size:F

    .line 36
    iget v0, p0, Lcom/youku/widget/RoundImageView;->PADING:F

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/youku/widget/RoundImageView;->PADING:F

    .line 37
    iget v0, p0, Lcom/youku/widget/RoundImageView;->mRound_width:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/youku/widget/RoundImageView;->mRound_width:I

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/youku/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object v0, p0, Lcom/youku/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    const v1, -0x9a00

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/youku/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/youku/widget/RoundImageView;->mRound_width:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v0, p0, Lcom/youku/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/RoundImageView;->backPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/youku/widget/RoundImageView;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object v0, p0, Lcom/youku/widget/RoundImageView;->backPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x4e000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    return-void
.end method

.method private drawRound(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 62
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/youku/widget/RoundImageView;->PADING:F

    add-float/2addr v0, v2

    iget v3, p0, Lcom/youku/widget/RoundImageView;->mRound_width:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/youku/widget/RoundImageView;->PADING:F

    add-float/2addr v3, v2

    iget v4, p0, Lcom/youku/widget/RoundImageView;->mRound_width:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/youku/widget/RoundImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/youku/widget/RoundImageView;->PADING:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/youku/widget/RoundImageView;->mRound_width:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/youku/widget/RoundImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/youku/widget/RoundImageView;->PADING:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/youku/widget/RoundImageView;->mRound_width:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v1, v0, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lcom/youku/widget/RoundImageView;->size:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/youku/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/youku/widget/RoundImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/youku/widget/RoundImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/youku/widget/RoundImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/youku/widget/RoundImageView;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 54
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/youku/widget/RoundImageView;->drawRound(Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 80
    return-void
.end method

.method public setCurSize(I)V
    .locals 1
    .param p1, "cur"    # I

    .prologue
    .line 73
    mul-int/lit16 v0, p1, 0x168

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    iput v0, p0, Lcom/youku/widget/RoundImageView;->size:F

    .line 74
    invoke-virtual {p0}, Lcom/youku/widget/RoundImageView;->invalidate()V

    .line 75
    return-void
.end method
