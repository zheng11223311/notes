.class public Lcom/sea_monster/widget/CircleBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/widget/CircleBitmapDrawable$1;,
        Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x6


# instance fields
.field private mApplyGravity:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

.field private mBitmapWidth:I

.field private final mDstRect:Landroid/graphics/Rect;

.field private mMutated:Z

.field private mRebuildShader:Z

.field private mTargetDensity:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 39
    new-instance v1, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 43
    new-instance v1, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    .line 44
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget v1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mTargetDensity:I

    iput v1, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTargetDensity:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    invoke-direct {v0, p2}, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 54
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget v1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mTargetDensity:I

    iput v1, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTargetDensity:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    .line 95
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 96
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget v1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mTargetDensity:I

    iput v1, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTargetDensity:I

    .line 97
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 98
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 70
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget v1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mTargetDensity:I

    iput v1, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTargetDensity:I

    .line 71
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    invoke-direct {v0, p1}, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 310
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 311
    iput-object p1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    .line 312
    if-eqz p2, :cond_0

    .line 313
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mTargetDensity:I

    .line 319
    :goto_0
    iget-object v0, p1, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sea_monster/widget/CircleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    return-void

    .line 314
    :cond_0
    if-eqz p1, :cond_1

    .line 315
    iget v0, p1, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTargetDensity:I

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mTargetDensity:I

    goto :goto_0

    .line 317
    :cond_1
    const/16 v0, 0xa0

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mTargetDensity:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;Landroid/content/res/Resources;Lcom/sea_monster/widget/CircleBitmapDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Lcom/sea_monster/widget/CircleBitmapDrawable$1;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 86
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 60
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method private computeBitmapSize()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapWidth:I

    .line 112
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapHeight:I

    .line 113
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/sea_monster/widget/CircleBitmapDrawable;->computeBitmapSize()V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapHeight:I

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 204
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 206
    iget v7, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapWidth:I

    iget v8, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapHeight:I

    if-le v7, v8, :cond_4

    iget v7, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapHeight:I

    div-int/lit8 v1, v7, 0x2

    .line 208
    .local v1, "radius":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 210
    iget-object v4, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    .line 211
    .local v4, "state":Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;
    iget-object v5, v4, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 212
    .local v5, "tmx":Landroid/graphics/Shader$TileMode;
    iget-object v6, v4, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 214
    .local v6, "tmy":Landroid/graphics/Shader$TileMode;
    new-instance v2, Landroid/graphics/BitmapShader;

    if-nez v5, :cond_0

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .end local v5    # "tmx":Landroid/graphics/Shader$TileMode;
    :cond_0
    if-nez v6, :cond_1

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .end local v6    # "tmy":Landroid/graphics/Shader$TileMode;
    :cond_1
    invoke-direct {v2, v0, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 215
    .local v2, "s":Landroid/graphics/Shader;
    iget-object v7, v4, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 216
    iget-object v7, v4, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    iget-object v7, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sea_monster/widget/CircleBitmapDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 220
    iget-object v7, v4, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    .line 222
    .local v3, "shader":Landroid/graphics/Shader;
    iget-boolean v7, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mApplyGravity:Z

    if-eqz v7, :cond_2

    .line 223
    iget-object v7, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sea_monster/widget/CircleBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 224
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mApplyGravity:Z

    .line 226
    :cond_2
    iget v7, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    int-to-float v9, v1

    iget-object v10, v4, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 229
    .end local v1    # "radius":I
    .end local v2    # "s":Landroid/graphics/Shader;
    .end local v3    # "shader":Landroid/graphics/Shader;
    .end local v4    # "state":Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;
    :cond_3
    return-void

    .line 206
    :cond_4
    iget v7, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapWidth:I

    div-int/lit8 v1, v7, 0x2

    goto :goto_0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget v1, v1, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mChangingConfigurations:I

    .line 267
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget v0, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mGravity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    const/4 v1, -0x3

    .line 257
    iget-object v2, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget v2, v2, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mGravity:I

    const/16 v3, 0x77

    if-eq v2, v3, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 261
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget-object v2, v2, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-lt v2, v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 239
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget-object v1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    invoke-direct {v0, v1}, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;-><init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;)V

    iput-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mMutated:Z

    .line 242
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mApplyGravity:Z

    .line 198
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 325
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 234
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 163
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 158
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iput p1, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mGravity:I

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mApplyGravity:Z

    .line 149
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 136
    if-nez p1, :cond_0

    const/16 p1, 0xa0

    .end local p1    # "density":I
    :cond_0
    iput p1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mTargetDensity:I

    .line 137
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/sea_monster/widget/CircleBitmapDrawable;->computeBitmapSize()V

    .line 140
    :cond_1
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sea_monster/widget/CircleBitmapDrawable;->setTargetDensity(I)V

    .line 126
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 129
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mTargetDensity:I

    .line 130
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/sea_monster/widget/CircleBitmapDrawable;->computeBitmapSize()V

    .line 133
    :cond_0
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/widget/CircleBitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 175
    return-void
.end method

.method public setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2
    .param p1, "xmode"    # Landroid/graphics/Shader$TileMode;
    .param p2, "ymode"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    .line 183
    .local v0, "state":Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;
    iget-object v1, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-ne v1, p1, :cond_0

    iget-object v1, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-eq v1, p2, :cond_1

    .line 184
    :cond_0
    iput-object p1, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 185
    iput-object p2, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 187
    :cond_1
    return-void
.end method

.method public final setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable;->mBitmapState:Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v0, p1}, Lcom/sea_monster/widget/CircleBitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 179
    return-void
.end method
