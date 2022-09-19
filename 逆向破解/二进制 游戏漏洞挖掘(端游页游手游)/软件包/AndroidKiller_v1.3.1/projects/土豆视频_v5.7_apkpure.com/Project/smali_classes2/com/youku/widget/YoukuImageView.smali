.class public Lcom/youku/widget/YoukuImageView;
.super Lcom/youku/widget/BaseImageView;
.source "YoukuImageView.java"


# static fields
.field private static bit:Landroid/graphics/Bitmap;


# instance fields
.field private isHight:Ljava/lang/Boolean;

.field private minstyle:I

.field private pHeight:F

.field private pWidth:F

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/youku/widget/BaseImageView;-><init>(Landroid/content/Context;)V

    .line 14
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/youku/widget/YoukuImageView;->pHeight:F

    .line 15
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/youku/widget/YoukuImageView;->pWidth:F

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/YoukuImageView;->isHight:Ljava/lang/Boolean;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0d00d2

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/youku/widget/BaseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/youku/widget/YoukuImageView;->pHeight:F

    .line 15
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/youku/widget/YoukuImageView;->pWidth:F

    .line 17
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/YoukuImageView;->isHight:Ljava/lang/Boolean;

    .line 45
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pheight"

    const/16 v2, 0x9

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/youku/widget/YoukuImageView;->pHeight:F

    .line 47
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pwidth"

    const/16 v2, 0x10

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/youku/widget/YoukuImageView;->pWidth:F

    .line 49
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "minstyle"

    invoke-interface {p2, v0, v1, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/youku/widget/YoukuImageView;->minstyle:I

    .line 51
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "usedown"

    const/4 v2, 0x1

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/widget/YoukuImageView;->isUseDowndrawable:Z

    .line 53
    invoke-virtual {p0}, Lcom/youku/widget/YoukuImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203d2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/youku/widget/YoukuImageView;->bit:Landroid/graphics/Bitmap;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/YoukuImageView;->paint:Landroid/graphics/Paint;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSetHomeDefultAdSize"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/youku/widget/BaseImageView;-><init>(Landroid/content/Context;)V

    .line 14
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/youku/widget/YoukuImageView;->pHeight:F

    .line 15
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/youku/widget/YoukuImageView;->pWidth:F

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/YoukuImageView;->isHight:Ljava/lang/Boolean;

    .line 30
    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/youku/widget/YoukuImageView;->setHW()V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 68
    :try_start_0
    invoke-super {p0, p1}, Lcom/youku/widget/BaseImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/youku/widget/YoukuImageView;->isHight:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lcom/youku/widget/YoukuImageView;->bit:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    sget-object v1, Lcom/youku/widget/YoukuImageView;->bit:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/youku/widget/YoukuImageView;->getWidth()I

    move-result v2

    sget-object v3, Lcom/youku/widget/YoukuImageView;->bit:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/youku/widget/YoukuImageView;->getHeight()I

    move-result v3

    sget-object v4, Lcom/youku/widget/YoukuImageView;->bit:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/youku/widget/YoukuImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    :cond_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 87
    iget v2, p0, Lcom/youku/widget/YoukuImageView;->minstyle:I

    if-nez v2, :cond_1

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 89
    .local v1, "w":I
    int-to-float v2, v1

    iget v3, p0, Lcom/youku/widget/YoukuImageView;->pHeight:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/youku/widget/YoukuImageView;->pWidth:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 90
    .local v0, "h":I
    invoke-virtual {p0, v1, v0}, Lcom/youku/widget/YoukuImageView;->setMeasuredDimension(II)V

    .line 101
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget v2, p0, Lcom/youku/widget/YoukuImageView;->minstyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 93
    .restart local v1    # "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 94
    .restart local v0    # "h":I
    if-le v1, v0, :cond_2

    .line 95
    int-to-float v2, v0

    iget v3, p0, Lcom/youku/widget/YoukuImageView;->pWidth:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/youku/widget/YoukuImageView;->pHeight:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 99
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/youku/widget/YoukuImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 97
    :cond_2
    int-to-float v2, v1

    iget v3, p0, Lcom/youku/widget/YoukuImageView;->pHeight:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/youku/widget/YoukuImageView;->pWidth:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_1
.end method

.method public setHW()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const/high16 v0, 0x44870000    # 1080.0f

    iput v0, p0, Lcom/youku/widget/YoukuImageView;->pWidth:F

    .line 36
    const v0, 0x44094000    # 549.0f

    iput v0, p0, Lcom/youku/widget/YoukuImageView;->pHeight:F

    .line 37
    iput v1, p0, Lcom/youku/widget/YoukuImageView;->minstyle:I

    .line 38
    iput-boolean v1, p0, Lcom/youku/widget/YoukuImageView;->isUseDowndrawable:Z

    .line 39
    invoke-virtual {p0}, Lcom/youku/widget/YoukuImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203d2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/youku/widget/YoukuImageView;->bit:Landroid/graphics/Bitmap;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/YoukuImageView;->paint:Landroid/graphics/Paint;

    .line 41
    return-void
.end method

.method public setIsHight(Z)V
    .locals 1
    .param p1, "ishight"    # Z

    .prologue
    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/YoukuImageView;->isHight:Ljava/lang/Boolean;

    .line 82
    invoke-virtual {p0}, Lcom/youku/widget/YoukuImageView;->requestLayout()V

    .line 83
    return-void
.end method
