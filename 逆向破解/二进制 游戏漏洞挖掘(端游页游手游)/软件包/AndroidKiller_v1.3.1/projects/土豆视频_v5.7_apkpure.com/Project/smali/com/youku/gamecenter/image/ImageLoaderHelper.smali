.class public Lcom/youku/gamecenter/image/ImageLoaderHelper;
.super Ljava/lang/Object;
.source "ImageLoaderHelper.java"


# static fields
.field public static IMAGE_LOADING:Ljava/lang/String;

.field public static IMAGE_LOAD_COMPLETE:Ljava/lang/String;

.field private static mDefaultIconOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field private static mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private static sInstance:Lcom/youku/gamecenter/image/ImageLoaderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "complete"

    sput-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->IMAGE_LOAD_COMPLETE:Ljava/lang/String;

    .line 27
    const-string v0, "loading"

    sput-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->IMAGE_LOADING:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->prepareDatas()V

    .line 31
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->sInstance:Lcom/youku/gamecenter/image/ImageLoaderHelper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;

    invoke-direct {v0}, Lcom/youku/gamecenter/image/ImageLoaderHelper;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->sInstance:Lcom/youku/gamecenter/image/ImageLoaderHelper;

    .line 37
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->sInstance:Lcom/youku/gamecenter/image/ImageLoaderHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private prepareDatas()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 44
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getDisplayImageOptionsBuilder()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 47
    sget-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget v1, Lcom/youku/gamecenter/R$drawable;->game_list_item_default:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mDefaultIconOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 49
    return-void
.end method


# virtual methods
.method public cacheContains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    sget-object v3, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v3, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    sget-object v3, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 168
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    move v1, v2

    .line 169
    goto :goto_0

    .line 172
    :cond_2
    sget-object v3, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 173
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    move v1, v2

    .line 174
    goto :goto_0
.end method

.method public displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "logoUrl"    # Ljava/lang/String;
    .param p2, "iconView"    # Landroid/widget/ImageView;

    .prologue
    .line 65
    sget-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    sget-object v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mDefaultIconOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p1, p2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 66
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageview"    # Landroid/widget/ImageView;

    .prologue
    .line 156
    sget-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0, p1, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 157
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageview"    # Landroid/widget/ImageView;
    .param p3, "rId"    # I

    .prologue
    .line 69
    sget-object v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 70
    .local v0, "defaultImageOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    sget-object v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v1, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 71
    return-void
.end method

.method public displayListenerImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageview"    # Landroid/widget/ImageView;

    .prologue
    .line 117
    sget-object v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget v2, Lcom/youku/gamecenter/R$drawable;->game_default_icon:I

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 118
    .local v0, "defaultImageOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    sget-object v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v2, Lcom/youku/gamecenter/image/ImageLoaderHelper$2;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/image/ImageLoaderHelper$2;-><init>(Lcom/youku/gamecenter/image/ImageLoaderHelper;)V

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 153
    return-void
.end method

.method public displayListenerImage(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageview"    # Landroid/widget/ImageView;
    .param p3, "rId"    # I

    .prologue
    .line 74
    sget-object v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 76
    .local v0, "defaultImageOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    sget-object v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v2, Lcom/youku/gamecenter/image/ImageLoaderHelper$1;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/image/ImageLoaderHelper$1;-><init>(Lcom/youku/gamecenter/image/ImageLoaderHelper;)V

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 114
    return-void
.end method

.method public getImageLoader()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method public loadImagesAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->cacheContains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/youku/gamecenter/image/ImageLoaderHelper;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_0
.end method
