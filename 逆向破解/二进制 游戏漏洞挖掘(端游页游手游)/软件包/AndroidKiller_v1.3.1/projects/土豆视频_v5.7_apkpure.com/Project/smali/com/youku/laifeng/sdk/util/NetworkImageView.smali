.class public Lcom/youku/laifeng/sdk/util/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x1

.field private static final DEFAULT_BORDER_COLOR:I = 0x0

.field private static final DEFAULT_BORDER_WIDTH:I = 0x0

.field private static final MSG_CANCEL_INVALIDATE:I = 0x2

.field private static final MSG_ERROR_INVALIDATE:I = 0x1

.field private static final MSG_SUCCUSS_INVALIDATE:I = 0x0

.field private static final ST_IDLE:I = 0x0

.field private static final ST_NULL:I = -0x1

.field private static final ST_PROGRESS:I = 0x1

.field private static token:Ljava/lang/Object;


# instance fields
.field private BROAD_SLIDER:I

.field private isUseOriginalDrawBitMap:Z

.field private l:Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderBitmapHeight:I

.field private mBorderBitmapWidth:I

.field private mBorderColor:I

.field private mBorderDrawableRadius:F

.field private mBorderDrawblePaint:Landroid/graphics/Paint;

.field private mBorderDrawbleRect:Landroid/graphics/RectF;

.field private mBorderImageId:Landroid/graphics/drawable/Drawable;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private mBorderRect:Landroid/graphics/RectF;

.field private mBorderShader:Landroid/graphics/BitmapShader;

.field private mBorderShaderMatrix:Landroid/graphics/Matrix;

.field private mBorderWidth:I

.field private mCacheable:Z

.field private mDefaultImageId:Landroid/graphics/drawable/Drawable;

.field private mDrawableRadius:F

.field private mDrawableRect:Landroid/graphics/RectF;

.field private mErrorImageId:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;

.field private mReady:Z

.field private mRound:Z

.field private mSHowlastImage:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mSetupPending:Z

.field private mShaderMatrix:Landroid/graphics/Matrix;

.field private mSingleTag:Ljava/lang/String;

.field private mStatus:I

.field private mSupportFade:Z

.field private mTag:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->token:Ljava/lang/Object;

    .line 52
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDefaultImageId:Landroid/graphics/drawable/Drawable;

    .line 31
    iput-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mErrorImageId:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderImageId:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-boolean v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mRound:Z

    .line 34
    iput-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->BROAD_SLIDER:I

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mStatus:I

    .line 45
    iput-boolean v5, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mCacheable:Z

    .line 46
    iput-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mListener:Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;

    .line 47
    const-class v1, Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mTag:Ljava/lang/String;

    .line 48
    const-string v1, ""

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSingleTag:Ljava/lang/String;

    .line 56
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 57
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 58
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawbleRect:Landroid/graphics/RectF;

    .line 59
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderShaderMatrix:Landroid/graphics/Matrix;

    .line 61
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawblePaint:Landroid/graphics/Paint;

    .line 64
    iput v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderColor:I

    .line 65
    iput v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    .line 77
    iput-boolean v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSHowlastImage:Z

    .line 78
    iput-boolean v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSupportFade:Z

    .line 79
    iput-boolean v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->isUseOriginalDrawBitMap:Z

    .line 413
    new-instance v1, Lcom/youku/laifeng/sdk/util/NetworkImageView$1;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView$1;-><init>(Lcom/youku/laifeng/sdk/util/NetworkImageView;)V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->l:Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;

    .line 454
    new-instance v1, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;-><init>(Lcom/youku/laifeng/sdk/util/NetworkImageView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mHandler:Landroid/os/Handler;

    .line 84
    new-array v1, v5, [I

    const-string/jumbo v2, "styleable"

    const-string v3, "NetworkImageView"

    invoke-static {p1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v1, "drawable"

    const-string v2, "NetworkImageView_imageError"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mErrorImageId:Landroid/graphics/drawable/Drawable;

    .line 86
    const-string v1, "drawable"

    const-string v2, "NetworkImageView_imageDefault"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDefaultImageId:Landroid/graphics/drawable/Drawable;

    .line 87
    const-string v1, "drawable"

    const-string v2, "NetworkImageView_imageBorder"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderImageId:Landroid/graphics/drawable/Drawable;

    .line 88
    const-string v1, "attr"

    const-string v2, "NetworkImageView_round"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mRound:Z

    .line 89
    const-string v1, "attr"

    const-string v2, "NetworkImageView_borderWidth"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    .line 90
    const-string v1, "attr"

    const-string v2, "NetworkImageView_borderColor"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderColor:I

    .line 91
    const-string v1, "attr"

    const-string v2, "NetworkImageView_imageShowLast"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSHowlastImage:Z

    .line 92
    const-string v1, "attr"

    const-string v2, "NetworkImageView_imageBorderSlider"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->BROAD_SLIDER:I

    .line 93
    const-string v1, "attr"

    const-string v2, "NetworkImageView_fade"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSupportFade:Z

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSingleTag:Ljava/lang/String;

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDefaultImageId:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDefaultImageId:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_0
    iput-boolean v5, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mReady:Z

    .line 100
    iget-boolean v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSetupPending:Z

    if-eqz v1, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setup()V

    .line 102
    iput-boolean v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSetupPending:Z

    .line 104
    :cond_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mReady:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->token:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/youku/laifeng/sdk/util/NetworkImageView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSHowlastImage:Z

    return v0
.end method

.method static synthetic access$500(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Lcom/youku/laifeng/sdk/util/NetworkImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSupportFade:Z

    return v0
.end method

.method static synthetic access$700(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mListener:Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mErrorImageId:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDefaultImageId:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 313
    if-nez p1, :cond_0

    move-object v0, v3

    .line 331
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 316
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 317
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 321
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    instance-of v4, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    .line 322
    const/4 v4, 0x1

    const/4 v5, 0x1

    sget-object v6, Lcom/youku/laifeng/sdk/util/NetworkImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 327
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 328
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 330
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/OutOfMemoryError;
    move-object v0, v3

    .line 331
    goto :goto_0

    .line 324
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Lcom/youku/laifeng/sdk/util/NetworkImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private declared-synchronized loadImage()V
    .locals 6

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->getInstance()Lcom/youku/laifeng/sdk/util/NetworkImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->l:Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSingleTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mTag:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mCacheable:Z

    invoke-virtual/range {v0 .. v5}, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->excute(Ljava/lang/String;Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setup()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 336
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mReady:Z

    if-nez v0, :cond_1

    .line 337
    iput-boolean v5, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSetupPending:Z

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDefaultImageId:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDefaultImageId:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 345
    :cond_2
    iget v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 347
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 348
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 350
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 351
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v7

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderRadius:F

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderImageId:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 354
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderImageId:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderShader:Landroid/graphics/BitmapShader;

    .line 355
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawblePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 356
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawblePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 357
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderImageId:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderBitmapWidth:I

    .line 358
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderImageId:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderBitmapHeight:I

    .line 359
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawbleRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 360
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawbleRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v7

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawbleRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawableRadius:F

    .line 361
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->updateBorderShaderMatrix()V

    .line 363
    :cond_4
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 364
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 365
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 366
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapHeight:I

    .line 367
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapWidth:I

    .line 368
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    iget v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->BROAD_SLIDER:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    iget v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->BROAD_SLIDER:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    iget v5, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->BROAD_SLIDER:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    iget v6, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->BROAD_SLIDER:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 369
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v7

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDrawableRadius:F

    .line 370
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->updateShaderMatrix()V

    goto/16 :goto_0
.end method

.method private updateBorderShaderMatrix()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 377
    .local v1, "dy":F
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderShaderMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 378
    iget v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawbleRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawbleRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 379
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawbleRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 380
    .local v2, "scale":F
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawbleRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    .line 385
    :goto_0
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 386
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v6

    float-to-int v4, v4

    int-to-float v4, v4

    add-float v5, v1, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 387
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 388
    return-void

    .line 382
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawbleRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 383
    .restart local v2    # "scale":F
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawbleRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    goto :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 392
    iget v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->BROAD_SLIDER:I

    int-to-float v0, v3

    .line 393
    .local v0, "dx":F
    iget v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->BROAD_SLIDER:I

    int-to-float v1, v3

    .line 394
    .local v1, "dy":F
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 396
    iget v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 397
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 398
    .local v2, "scale":F
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v0, v3

    .line 403
    :goto_0
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 404
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v6

    float-to-int v4, v4

    iget v5, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float v5, v1, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 406
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 407
    return-void

    .line 400
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 401
    .restart local v2    # "scale":F
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    goto :goto_0
.end method


# virtual methods
.method public canncelRequestByCategoryTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-static {}, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->getInstance()Lcom/youku/laifeng/sdk/util/NetworkImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->canncelByCategoryTag(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSupportFade()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSupportFade:Z

    return v0
.end method

.method public isUseOriginalDrawBitMap()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->isUseOriginalDrawBitMap:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 165
    iput v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mStatus:I

    .line 166
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    invoke-static {}, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->getInstance()Lcom/youku/laifeng/sdk/util/NetworkImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSingleTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->canncelByTag(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->loadImage()V

    .line 177
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mReady:Z

    .line 178
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 171
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 172
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 173
    sget-object v1, Lcom/youku/laifeng/sdk/util/NetworkImageView;->token:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mReady:Z

    .line 185
    invoke-static {}, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->getInstance()Lcom/youku/laifeng/sdk/util/NetworkImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSingleTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->canncelByTag(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iput-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 193
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mRound:Z

    if-eqz v0, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->isUseOriginalDrawBitMap()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 225
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 230
    :goto_1
    iget v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderRadius:F

    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderImageId:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawableRadius:F

    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderDrawblePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 238
    :cond_4
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 239
    iget v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 256
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setup()V

    .line 257
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1, "borderColor"    # I

    .prologue
    .line 264
    iget v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    iput p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderColor:I

    .line 269
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "borderWidth"    # I

    .prologue
    .line 278
    iget v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iput p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderWidth:I

    .line 282
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setup()V

    goto :goto_0
.end method

.method public setBroadSlider(I)V
    .locals 0
    .param p1, "broadslider"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->BROAD_SLIDER:I

    .line 159
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setup()V

    .line 160
    return-void
.end method

.method public setCacheable(Z)V
    .locals 0
    .param p1, "cacheable"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mCacheable:Z

    .line 147
    return-void
.end method

.method public setCancelCategoryTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mTag:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setImageAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 211
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setup()V

    .line 212
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 288
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 292
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setup()V

    goto :goto_0
.end method

.method public setImageDefault(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mDefaultImageId:Landroid/graphics/drawable/Drawable;

    .line 117
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    if-nez p1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-direct {p0, p1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 302
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setup()V

    goto :goto_0
.end method

.method public setImageError(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mErrorImageId:Landroid/graphics/drawable/Drawable;

    .line 121
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 309
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setup()V

    .line 310
    return-void
.end method

.method public setImageRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBorderImageId:Landroid/graphics/drawable/Drawable;

    .line 125
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 133
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->getInstance()Lcom/youku/laifeng/sdk/util/NetworkImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mSingleTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->canncelByTag(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->loadImage()V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setIsRound(Z)V
    .locals 0
    .param p1, "round"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mRound:Z

    .line 129
    return-void
.end method

.method public setLoaderListener(Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;)V
    .locals 0
    .param p1, "l"    # Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mListener:Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;

    .line 151
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 207
    return-void
.end method

.method public setUseOriginalDrawBitMap(Z)V
    .locals 0
    .param p1, "isUseOriginalDrawBitMap"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView;->isUseOriginalDrawBitMap:Z

    .line 251
    return-void
.end method
