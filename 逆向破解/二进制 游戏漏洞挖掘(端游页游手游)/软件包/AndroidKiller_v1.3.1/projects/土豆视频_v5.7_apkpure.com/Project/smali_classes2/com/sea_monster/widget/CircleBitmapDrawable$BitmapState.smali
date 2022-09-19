.class final Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "CircleBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/widget/CircleBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitmapState"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mChangingConfigurations:I

.field mGravity:I

.field mPaint:Landroid/graphics/Paint;

.field mTargetDensity:I

.field mTileModeX:Landroid/graphics/Shader$TileMode;

.field mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 279
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 273
    const/16 v0, 0x77

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mGravity:I

    .line 274
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 277
    const/16 v0, 0xa0

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTargetDensity:I

    .line 280
    iput-object p1, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 281
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 282
    return-void
.end method

.method constructor <init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;)V
    .locals 2
    .param p1, "bitmapState"    # Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;

    .prologue
    .line 285
    iget-object v0, p1, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    .line 286
    iget v0, p1, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mChangingConfigurations:I

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mChangingConfigurations:I

    .line 287
    iget v0, p1, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mGravity:I

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mGravity:I

    .line 288
    iget-object v0, p1, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 289
    iget-object v0, p1, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 290
    iget v0, p1, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTargetDensity:I

    iput v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mTargetDensity:I

    .line 291
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 292
    iget-object v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 293
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable;

    invoke-direct {v0, p0, v1, v1}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;Landroid/content/res/Resources;Lcom/sea_monster/widget/CircleBitmapDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 301
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Lcom/sea_monster/widget/CircleBitmapDrawable$BitmapState;Landroid/content/res/Resources;Lcom/sea_monster/widget/CircleBitmapDrawable$1;)V

    return-object v0
.end method
