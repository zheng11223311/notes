.class public Lio/rong/imkit/widget/AsyncImageView;
.super Lcom/sea_monster/cache/CacheableImageView;
.source "AsyncImageView.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;,
        Lio/rong/imkit/widget/AsyncImageView$PhotoThreadFactory;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final STATUS_DISPLAY:I = 0x1

.field static final STATUS_EMPTY:I

.field static final mMultiThreadExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field isAttached:Z

.field private isCircle:Z

.field mAttachedRunnable:Ljava/lang/Runnable;

.field public mCornerRadius:I

.field mCurrentRunnable:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field mResource:Lcom/sea_monster/resource/Resource;

.field private minShortSideSize:F

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 39
    .local v0, "coreNum":I
    const/4 v1, 0x1

    .line 40
    .local v1, "threadNum":I
    packed-switch v0, :pswitch_data_0

    .line 49
    const/4 v1, 0x3

    .line 52
    :goto_0
    new-instance v2, Lio/rong/imkit/widget/AsyncImageView$PhotoThreadFactory;

    invoke-direct {v2}, Lio/rong/imkit/widget/AsyncImageView$PhotoThreadFactory;-><init>()V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lio/rong/imkit/widget/AsyncImageView;->mMultiThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 53
    return-void

    .line 42
    :pswitch_0
    move v1, v0

    .line 43
    goto :goto_0

    .line 45
    :pswitch_1
    move v1, v0

    .line 46
    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/sea_monster/cache/CacheableImageView;-><init>(Landroid/content/Context;)V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/sea_monster/cache/CacheableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    iput v6, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    .line 111
    iput v4, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    .line 120
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    :goto_0
    return-void

    .line 122
    :cond_0
    sget-object v5, Lio/rong/imkit/R$styleable;->AsyncImageView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lio/rong/imkit/R$styleable;->AsyncImageView_RCDefDrawable:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 124
    .local v1, "resId":I
    sget v5, Lio/rong/imkit/R$styleable;->AsyncImageView_RCShape:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 125
    .local v2, "shape":I
    sget v5, Lio/rong/imkit/R$styleable;->AsyncImageView_RCMinShortSideSize:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    .line 126
    sget v5, Lio/rong/imkit/R$styleable;->AsyncImageView_RCCornerRadius:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    .line 128
    const-string v5, "AsyncImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "minShortSideSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-ne v2, v3, :cond_2

    :goto_1
    iput-boolean v3, p0, Lio/rong/imkit/widget/AsyncImageView;->isCircle:Z

    .line 132
    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 130
    goto :goto_1
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/AsyncImageView;)I
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/AsyncImageView;

    .prologue
    .line 32
    iget v0, p0, Lio/rong/imkit/widget/AsyncImageView;->status:I

    return v0
.end method

.method static synthetic access$002(Lio/rong/imkit/widget/AsyncImageView;I)I
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/widget/AsyncImageView;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lio/rong/imkit/widget/AsyncImageView;->status:I

    return p1
.end method

.method static synthetic access$200(Lio/rong/imkit/widget/AsyncImageView;)Z
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/AsyncImageView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lio/rong/imkit/widget/AsyncImageView;->isCircle:Z

    return v0
.end method

.method static synthetic access$300(Lio/rong/imkit/widget/AsyncImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/widget/AsyncImageView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawableSize(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setDefaultDrawableSize(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 230
    if-nez p1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    int-to-float v5, v6

    .line 234
    .local v5, "width":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    int-to-float v2, v6

    .line 236
    .local v2, "height":F
    const/4 v1, 0x0

    .line 237
    .local v1, "finalWidth":F
    const/4 v0, 0x0

    .line 239
    .local v0, "finalHeight":F
    iget v6, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 241
    iget v6, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    cmpg-float v6, v5, v6

    if-ltz v6, :cond_1

    iget v6, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    cmpg-float v6, v2, v6

    if-gez v6, :cond_5

    .line 242
    :cond_1
    div-float v4, v5, v2

    .line 244
    .local v4, "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_3

    .line 245
    iget v0, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    .line 246
    iget v6, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    mul-float v1, v6, v4

    .line 256
    :goto_1
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 257
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    float-to-int v6, v0

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 258
    float-to-int v6, v1

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 260
    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/AsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "scale":F
    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->invalidate()V

    goto :goto_0

    .line 248
    .restart local v4    # "scale":F
    :cond_3
    iget v1, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    .line 250
    cmpl-float v6, v4, v7

    if-eqz v6, :cond_4

    .line 251
    iget v6, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    div-float v0, v6, v4

    goto :goto_1

    .line 253
    :cond_4
    iget v0, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    goto :goto_1

    .line 263
    .end local v4    # "scale":F
    :cond_5
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 264
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    float-to-int v6, v2

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 265
    float-to-int v6, v5

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 267
    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/AsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mCurrentRunnable:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mCurrentRunnable:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mCurrentRunnable:Ljava/util/concurrent/Future;

    .line 309
    :cond_0
    return-void
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/widget/AsyncImageView;->status:I

    .line 180
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    return-void
.end method

.method public getResource()Lcom/sea_monster/resource/Resource;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Lcom/sea_monster/cache/CacheableImageView;->onAttachedToWindow()V

    .line 293
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sea_monster/resource/ResourceHandler;->addObserver(Ljava/util/Observer;)V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imkit/widget/AsyncImageView;->isAttached:Z

    .line 298
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mAttachedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mAttachedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mAttachedRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sea_monster/resource/ResourceHandler;->deleteObserver(Ljava/util/Observer;)V

    .line 279
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->cancelRequest()V

    .line 280
    invoke-super {p0}, Lcom/sea_monster/cache/CacheableImageView;->onDetachedFromWindow()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imkit/widget/AsyncImageView;->isAttached:Z

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mAttachedRunnable:Ljava/lang/Runnable;

    .line 283
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Lcom/sea_monster/cache/CacheableImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public refreshResource()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 313
    return-void
.end method

.method public setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "defaultDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    .end local p1    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 149
    .restart local p1    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v0, p0, Lio/rong/imkit/widget/AsyncImageView;->isCircle:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable;

    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 153
    .restart local p1    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    if-lez v0, :cond_2

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 154
    new-instance v0, Lio/rong/imkit/widget/RoundRectDrawable;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/RoundRectDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 156
    .restart local p1    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iput-object p1, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 164
    iget-boolean v0, p0, Lio/rong/imkit/widget/AsyncImageView;->isCircle:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable;

    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-super {p0, v0}, Lcom/sea_monster/cache/CacheableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :goto_0
    return-void

    .line 167
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    if-lez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Lio/rong/imkit/widget/RoundRectDrawable;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/RoundRectDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-super {p0, v0}, Lcom/sea_monster/cache/CacheableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 170
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-super {p0, p1}, Lcom/sea_monster/cache/CacheableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setResource(Lcom/sea_monster/resource/Resource;)V
    .locals 6
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getResource()Lcom/sea_monster/resource/Resource;

    move-result-object v1

    .line 186
    .local v1, "previous":Lcom/sea_monster/resource/Resource;
    iput-object p1, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    .line 188
    iget-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    if-nez v2, :cond_1

    .line 189
    iput v3, p0, Lio/rong/imkit/widget/AsyncImageView;->status:I

    .line 190
    iget-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lio/rong/imkit/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v2, v1}, Lcom/sea_monster/resource/Resource;->equals(Lcom/sea_monster/resource/Resource;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    iget-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lio/rong/imkit/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iput v3, p0, Lio/rong/imkit/widget/AsyncImageView;->status:I

    .line 200
    :cond_2
    iget v2, p0, Lio/rong/imkit/widget/AsyncImageView;->status:I

    if-nez v2, :cond_0

    .line 203
    const/4 v2, 0x0

    iput-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mAttachedRunnable:Ljava/lang/Runnable;

    .line 204
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->cancelRequest()V

    .line 205
    iget-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v2}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v2, v3}, Lcom/sea_monster/resource/ResourceHandler;->containsInMemoryCache(Lcom/sea_monster/resource/Resource;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 206
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v2, v3}, Lcom/sea_monster/resource/ResourceHandler;->getDrawable(Lcom/sea_monster/resource/Resource;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    .line 207
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 208
    iget-boolean v2, p0, Lio/rong/imkit/widget/AsyncImageView;->isCircle:Z

    if-eqz v2, :cond_3

    .line 209
    new-instance v2, Lcom/sea_monster/widget/CircleBitmapDrawable;

    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lio/rong/imkit/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :goto_1
    const/4 v2, 0x1

    iput v2, p0, Lio/rong/imkit/widget/AsyncImageView;->status:I

    goto :goto_0

    .line 211
    :cond_3
    iget v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    if-lez v2, :cond_4

    .line 212
    new-instance v2, Lio/rong/imkit/widget/RoundRectDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    invoke-direct {v2, v3, v4}, Lio/rong/imkit/widget/RoundRectDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-direct {p0, v2}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawableSize(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 214
    :cond_4
    invoke-direct {p0, v0}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawableSize(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 220
    :cond_5
    iget-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lio/rong/imkit/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 223
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_6
    sget-object v2, Lio/rong/imkit/widget/AsyncImageView;->mMultiThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;

    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-direct {v3, p0, v4, v5}, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;-><init>(Lio/rong/imkit/widget/AsyncImageView;Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mCurrentRunnable:Ljava/util/concurrent/Future;

    goto/16 :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 57
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    instance-of v1, p2, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 61
    check-cast v0, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;

    .line 62
    .local v0, "callback":Lcom/sea_monster/resource/ResourceHandler$RequestCallback;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v0}, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;->getResource()Lcom/sea_monster/resource/Resource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sea_monster/resource/Resource;->equals(Lcom/sea_monster/resource/Resource;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Lio/rong/imkit/widget/AsyncImageView$1;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/AsyncImageView$1;-><init>(Lio/rong/imkit/widget/AsyncImageView;)V

    invoke-virtual {p0, v1}, Lio/rong/imkit/widget/AsyncImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
