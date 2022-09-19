.class public Lcom/sea_monster/widget/AsyncImageView;
.super Lcom/sea_monster/cache/CacheableImageView;
.source "AsyncImageView.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable;,
        Lcom/sea_monster/widget/AsyncImageView$PhotoThreadFactory;
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

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 35
    .local v0, "coreNum":I
    const/4 v1, 0x1

    .line 36
    .local v1, "threadNum":I
    packed-switch v0, :pswitch_data_0

    .line 45
    const/4 v1, 0x3

    .line 48
    :goto_0
    new-instance v2, Lcom/sea_monster/widget/AsyncImageView$PhotoThreadFactory;

    invoke-direct {v2}, Lcom/sea_monster/widget/AsyncImageView$PhotoThreadFactory;-><init>()V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lcom/sea_monster/widget/AsyncImageView;->mMultiThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 49
    return-void

    .line 38
    :pswitch_0
    move v1, v0

    .line 39
    goto :goto_0

    .line 41
    :pswitch_1
    move v1, v0

    .line 42
    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sea_monster/cache/CacheableImageView;-><init>(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/sea_monster/cache/CacheableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    sget-object v5, Lcom/sea_monster/widget/R$styleable;->AsyncImageView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/sea_monster/widget/R$styleable;->AsyncImageView_defDrawable:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 115
    .local v1, "resId":I
    sget v5, Lcom/sea_monster/widget/R$styleable;->AsyncImageView_shape:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 117
    .local v2, "shape":I
    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/sea_monster/widget/AsyncImageView;->isCircle:Z

    .line 119
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/sea_monster/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sea_monster/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    return-void

    :cond_1
    move v3, v4

    .line 117
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sea_monster/widget/AsyncImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sea_monster/widget/AsyncImageView;

    .prologue
    .line 28
    iget v0, p0, Lcom/sea_monster/widget/AsyncImageView;->status:I

    return v0
.end method

.method static synthetic access$002(Lcom/sea_monster/widget/AsyncImageView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/widget/AsyncImageView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/sea_monster/widget/AsyncImageView;->status:I

    return p1
.end method

.method static synthetic access$200(Lcom/sea_monster/widget/AsyncImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sea_monster/widget/AsyncImageView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/sea_monster/widget/AsyncImageView;->isCircle:Z

    return v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mCurrentRunnable:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mCurrentRunnable:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mCurrentRunnable:Ljava/util/concurrent/Future;

    .line 228
    :cond_0
    return-void
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/sea_monster/widget/AsyncImageView;->status:I

    .line 157
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/sea_monster/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    return-void
.end method

.method public getResource()Lcom/sea_monster/resource/Resource;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sea_monster/resource/ResourceHandler;->addObserver(Ljava/util/Observer;)V

    .line 215
    invoke-super {p0}, Lcom/sea_monster/cache/CacheableImageView;->onAttachedToWindow()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sea_monster/widget/AsyncImageView;->isAttached:Z

    .line 217
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mAttachedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mAttachedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mAttachedRunnable:Ljava/lang/Runnable;

    .line 221
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sea_monster/resource/ResourceHandler;->deleteObserver(Ljava/util/Observer;)V

    .line 202
    invoke-virtual {p0}, Lcom/sea_monster/widget/AsyncImageView;->cancelRequest()V

    .line 203
    invoke-super {p0}, Lcom/sea_monster/cache/CacheableImageView;->onDetachedFromWindow()V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sea_monster/widget/AsyncImageView;->isAttached:Z

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mAttachedRunnable:Ljava/lang/Runnable;

    .line 206
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/sea_monster/cache/CacheableImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public refreshResouce()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {p0, v0}, Lcom/sea_monster/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 232
    return-void
.end method

.method public setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "defaultDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    .end local p1    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 135
    .restart local p1    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v0, p0, Lcom/sea_monster/widget/AsyncImageView;->isCircle:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 136
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable;

    invoke-virtual {p0}, Lcom/sea_monster/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sea_monster/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 138
    .restart local p1    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iput-object p1, p0, Lcom/sea_monster/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/sea_monster/widget/AsyncImageView;->isCircle:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcom/sea_monster/widget/CircleBitmapDrawable;

    invoke-virtual {p0}, Lcom/sea_monster/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-super {p0, v0}, Lcom/sea_monster/cache/CacheableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :goto_0
    return-void

    .line 148
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0, p1}, Lcom/sea_monster/cache/CacheableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setResource(Lcom/sea_monster/resource/Resource;)V
    .locals 6
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/sea_monster/widget/AsyncImageView;->getResource()Lcom/sea_monster/resource/Resource;

    move-result-object v1

    .line 163
    .local v1, "previous":Lcom/sea_monster/resource/Resource;
    iput-object p1, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    .line 165
    iget-object v2, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    if-nez v2, :cond_1

    .line 166
    iput v3, p0, Lcom/sea_monster/widget/AsyncImageView;->status:I

    .line 167
    iget-object v2, p0, Lcom/sea_monster/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/sea_monster/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v2, v1}, Lcom/sea_monster/resource/Resource;->equals(Lcom/sea_monster/resource/Resource;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/sea_monster/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/sea_monster/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iput v3, p0, Lcom/sea_monster/widget/AsyncImageView;->status:I

    .line 176
    :cond_2
    iget v2, p0, Lcom/sea_monster/widget/AsyncImageView;->status:I

    if-nez v2, :cond_0

    .line 177
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sea_monster/widget/AsyncImageView;->mAttachedRunnable:Ljava/lang/Runnable;

    .line 178
    invoke-virtual {p0}, Lcom/sea_monster/widget/AsyncImageView;->cancelRequest()V

    .line 179
    iget-object v2, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v2}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v2, v3}, Lcom/sea_monster/resource/ResourceHandler;->containsInMemoryCache(Lcom/sea_monster/resource/Resource;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v2, v3}, Lcom/sea_monster/resource/ResourceHandler;->getDrawable(Lcom/sea_monster/resource/Resource;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    .line 181
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 182
    iget-boolean v2, p0, Lcom/sea_monster/widget/AsyncImageView;->isCircle:Z

    if-eqz v2, :cond_3

    .line 183
    new-instance v2, Lcom/sea_monster/widget/CircleBitmapDrawable;

    invoke-virtual {p0}, Lcom/sea_monster/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/sea_monster/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :goto_1
    const/4 v2, 0x1

    iput v2, p0, Lcom/sea_monster/widget/AsyncImageView;->status:I

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sea_monster/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {p0}, Lcom/sea_monster/widget/AsyncImageView;->invalidate()V

    goto :goto_1

    .line 191
    :cond_4
    iget-object v2, p0, Lcom/sea_monster/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/sea_monster/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 194
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    sget-object v2, Lcom/sea_monster/widget/AsyncImageView;->mMultiThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable;

    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-direct {v3, p0, v4, v5}, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable;-><init>(Lcom/sea_monster/widget/AsyncImageView;Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/sea_monster/widget/AsyncImageView;->mCurrentRunnable:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    instance-of v1, p2, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 57
    check-cast v0, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;

    .line 58
    .local v0, "callback":Lcom/sea_monster/resource/ResourceHandler$RequestCallback;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/sea_monster/widget/AsyncImageView;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v0}, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;->getResource()Lcom/sea_monster/resource/Resource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sea_monster/resource/Resource;->equals(Lcom/sea_monster/resource/Resource;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Lcom/sea_monster/widget/AsyncImageView$1;

    invoke-direct {v1, p0}, Lcom/sea_monster/widget/AsyncImageView$1;-><init>(Lcom/sea_monster/widget/AsyncImageView;)V

    invoke-virtual {p0, v1}, Lcom/sea_monster/widget/AsyncImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
