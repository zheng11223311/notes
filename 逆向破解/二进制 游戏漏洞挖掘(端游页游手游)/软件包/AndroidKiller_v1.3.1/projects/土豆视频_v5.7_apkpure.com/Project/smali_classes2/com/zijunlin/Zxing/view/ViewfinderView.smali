.class public final Lcom/zijunlin/Zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x64L

.field private static final OPAQUE:I = 0xff

.field private static final SCANNER_ALPHA:[I


# instance fields
.field private final frameColor:I

.field private final laserColor:I

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zijunlin/Zxing/view/ViewfinderView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 67
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f090143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->maskColor:I

    .line 69
    const v1, 0x7f09010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->resultColor:I

    .line 70
    const v1, 0x7f090141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->frameColor:I

    .line 71
    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->laserColor:I

    .line 72
    const v1, 0x7f0900f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->resultPointColor:I

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->scannerAlpha:I

    .line 74
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 75
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 165
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/view/ViewfinderView;->invalidate()V

    .line 166
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 153
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/view/ViewfinderView;->invalidate()V

    .line 154
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v6, 0xff

    .line 79
    invoke-static {}, Lcom/zijunlin/Zxing/camera/CameraManager;->get()Lcom/zijunlin/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 80
    .local v10, "frame":Landroid/graphics/Rect;
    if-nez v10, :cond_0

    .line 149
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    iget-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->frameColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    iget v0, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v1, Lcom/zijunlin/Zxing/view/ViewfinderView;->SCANNER_ALPHA:[I

    iget v2, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->scannerAlpha:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->scannerAlpha:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/zijunlin/Zxing/view/ViewfinderView;->SCANNER_ALPHA:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->scannerAlpha:I

    .line 120
    iget-object v9, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 121
    .local v9, "currentPossible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    iget-object v8, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 122
    .local v8, "currentLast":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 134
    :cond_2
    if-eqz v8, :cond_4

    .line 135
    iget-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    iget-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/ResultPoint;

    .line 138
    .local v12, "point":Lcom/google/zxing/ResultPoint;
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 125
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "point":Lcom/google/zxing/ResultPoint;
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 126
    iput-object v9, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 127
    iget-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    iget-object v0, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/ResultPoint;

    .line 130
    .restart local v12    # "point":Lcom/google/zxing/ResultPoint;
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    iget-object v3, p0, Lcom/zijunlin/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 146
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "point":Lcom/google/zxing/ResultPoint;
    :cond_4
    const-wide/16 v2, 0x64

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    iget v6, v10, Landroid/graphics/Rect;->right:I

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/zijunlin/Zxing/view/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method
