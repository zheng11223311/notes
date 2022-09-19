.class public Lcom/youku/widget/YoukuImageViewReverse;
.super Lcom/youku/widget/BaseImageView;
.source "YoukuImageViewReverse.java"


# instance fields
.field private bit:Landroid/graphics/Bitmap;

.field private isHight:Ljava/lang/Boolean;

.field private pHeight:F

.field private pWidth:F

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/youku/widget/BaseImageView;-><init>(Landroid/content/Context;)V

    .line 15
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->pHeight:F

    .line 16
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->pWidth:F

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->isHight:Ljava/lang/Boolean;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v3, 0x7f0d00d2

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/youku/widget/BaseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->pHeight:F

    .line 16
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->pWidth:F

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->isHight:Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pheight"

    const/16 v2, 0x9

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->pHeight:F

    .line 30
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pwidth"

    const/16 v2, 0x10

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->pWidth:F

    .line 32
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "usedown"

    const/4 v2, 0x1

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->isUseDowndrawable:Z

    .line 34
    invoke-virtual {p0}, Lcom/youku/widget/YoukuImageViewReverse;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203d2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->bit:Landroid/graphics/Bitmap;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->paint:Landroid/graphics/Paint;

    .line 41
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/youku/widget/BaseImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget-object v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->isHight:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->bit:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/youku/widget/YoukuImageViewReverse;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/youku/widget/YoukuImageViewReverse;->bit:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/youku/widget/YoukuImageViewReverse;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/youku/widget/YoukuImageViewReverse;->bit:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/youku/widget/YoukuImageViewReverse;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 59
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 62
    .local v0, "h":I
    int-to-float v2, v0

    iget v3, p0, Lcom/youku/widget/YoukuImageViewReverse;->pWidth:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/youku/widget/YoukuImageViewReverse;->pHeight:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 67
    .local v1, "w":I
    invoke-virtual {p0, v1, v0}, Lcom/youku/widget/YoukuImageViewReverse;->setMeasuredDimension(II)V

    .line 69
    return-void
.end method

.method public setIsHight(Z)V
    .locals 1
    .param p1, "ishight"    # Z

    .prologue
    .line 54
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/YoukuImageViewReverse;->isHight:Ljava/lang/Boolean;

    .line 55
    invoke-virtual {p0}, Lcom/youku/widget/YoukuImageViewReverse;->requestLayout()V

    .line 56
    return-void
.end method
