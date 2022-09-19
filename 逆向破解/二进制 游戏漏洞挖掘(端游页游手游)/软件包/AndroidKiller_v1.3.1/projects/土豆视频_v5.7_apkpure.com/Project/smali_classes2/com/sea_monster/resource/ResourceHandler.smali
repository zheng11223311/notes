.class public Lcom/sea_monster/resource/ResourceHandler;
.super Ljava/util/Observable;
.source "ResourceHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/resource/ResourceHandler$RequestCallback;,
        Lcom/sea_monster/resource/ResourceHandler$Builder;
    }
.end annotation


# static fields
.field static sS:Lcom/sea_monster/resource/ResourceHandler;


# instance fields
.field mBaseCache:Lcom/sea_monster/cache/BaseCache;

.field mBitmapCache:Lcom/sea_monster/cache/BitmapCacheWrapper;

.field mContext:Landroid/content/Context;

.field mDiskCache:Lcom/sea_monster/cache/DiskCacheWrapper;

.field mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sea_monster/resource/IResourceHandler;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkManager:Lcom/sea_monster/network/NetworkManager;

.field mRequestQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sea_monster/resource/Resource;",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/sea_monster/network/NetworkManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Lcom/sea_monster/network/NetworkManager;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 59
    invoke-direct {p0, p1}, Lcom/sea_monster/resource/ResourceHandler;->init(Landroid/content/Context;)V

    .line 60
    iput-object p2, p0, Lcom/sea_monster/resource/ResourceHandler;->mNetworkManager:Lcom/sea_monster/network/NetworkManager;

    .line 62
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mNetworkManager:Lcom/sea_monster/network/NetworkManager;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mNetworkManager:Lcom/sea_monster/network/NetworkManager;

    invoke-static {p1}, Lcom/sea_monster/network/NetworkManager;->init(Landroid/content/Context;)V

    .line 64
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/sea_monster/network/NetworkManager;->init(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lcom/sea_monster/resource/ResourceHandler;->mContext:Landroid/content/Context;

    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v0, Lcom/sea_monster/cache/BaseCache$Builder;

    invoke-direct {v0}, Lcom/sea_monster/cache/BaseCache$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sea_monster/cache/BaseCache$Builder;->build(Landroid/content/Context;)Lcom/sea_monster/cache/BaseCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mBaseCache:Lcom/sea_monster/cache/BaseCache;

    .line 55
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mRequestQueue:Ljava/util/Map;

    .line 56
    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/sea_monster/cache/BaseCache$Builder;

    invoke-direct {v0}, Lcom/sea_monster/cache/BaseCache$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/sea_monster/cache/BaseCache$Builder;->setType(Ljava/lang/String;)Lcom/sea_monster/cache/BaseCache$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sea_monster/cache/BaseCache$Builder;->build(Landroid/content/Context;)Lcom/sea_monster/cache/BaseCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mBaseCache:Lcom/sea_monster/cache/BaseCache;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sea_monster/resource/ResourceHandler$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/sea_monster/resource/ResourceHandler$1;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sea_monster/resource/ResourceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sea_monster/resource/ResourceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/resource/ResourceHandler;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sea_monster/resource/ResourceHandler;->enableBitmapCache()V

    return-void
.end method

.method static synthetic access$200(Lcom/sea_monster/resource/ResourceHandler;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/resource/ResourceHandler;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sea_monster/resource/ResourceHandler;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sea_monster/resource/ResourceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/resource/ResourceHandler;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/sea_monster/resource/ResourceHandler;->setChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/sea_monster/resource/ResourceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/resource/ResourceHandler;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/sea_monster/resource/ResourceHandler;->setChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/sea_monster/resource/ResourceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/resource/ResourceHandler;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/sea_monster/resource/ResourceHandler;->setChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/sea_monster/resource/ResourceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/resource/ResourceHandler;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/sea_monster/resource/ResourceHandler;->setChanged()V

    return-void
.end method

.method private enableBitmapCache()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mBitmapCache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;

    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mBaseCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->setCache(Lcom/sea_monster/cache/BaseCache;)Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->build()Lcom/sea_monster/cache/BitmapCacheWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mBitmapCache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    .line 134
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/sea_monster/resource/ResourceHandler;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sea_monster/resource/ResourceHandler;->sS:Lcom/sea_monster/resource/ResourceHandler;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mDiskCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/sea_monster/cache/DiskCacheWrapper$Builder;

    invoke-direct {v0}, Lcom/sea_monster/cache/DiskCacheWrapper$Builder;-><init>()V

    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mBaseCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/DiskCacheWrapper$Builder;->setCache(Lcom/sea_monster/cache/BaseCache;)Lcom/sea_monster/cache/DiskCacheWrapper$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/cache/DiskCacheWrapper$Builder;->build()Lcom/sea_monster/cache/DiskCacheWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mDiskCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mHandlerMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mHandlerMap:Ljava/util/Map;

    .line 124
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mHandlerMap:Ljava/util/Map;

    const-string v1, "*"

    new-instance v2, Lcom/sea_monster/resource/CachedResourceHandler;

    iget-object v3, p0, Lcom/sea_monster/resource/ResourceHandler;->mDiskCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    invoke-direct {v2, p1, v3}, Lcom/sea_monster/resource/CachedResourceHandler;-><init>(Landroid/content/Context;Lcom/sea_monster/cache/DiskCacheWrapper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mHandlerMap:Ljava/util/Map;

    const-string v1, "image"

    new-instance v2, Lcom/sea_monster/resource/CachedImageResourceHandler;

    iget-object v3, p0, Lcom/sea_monster/resource/ResourceHandler;->mBitmapCache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    invoke-direct {v2, p1, v3}, Lcom/sea_monster/resource/CachedImageResourceHandler;-><init>(Landroid/content/Context;Lcom/sea_monster/cache/BitmapCacheWrapper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    invoke-static {}, Lcom/sea_monster/network/NetworkManager;->getInstance()Lcom/sea_monster/network/NetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mNetworkManager:Lcom/sea_monster/network/NetworkManager;

    .line 129
    return-void
.end method


# virtual methods
.method public cancel(Lcom/sea_monster/resource/Resource;)V
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mRequestQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mNetworkManager:Lcom/sea_monster/network/NetworkManager;

    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mRequestQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/network/AbstractHttpRequest;

    invoke-virtual {v1, v0}, Lcom/sea_monster/network/NetworkManager;->cancelRequest(Lcom/sea_monster/network/AbstractHttpRequest;)V

    .line 209
    :cond_0
    return-void
.end method

.method public contains(Lcom/sea_monster/resource/Resource;)Z
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 216
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mBitmapCache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    if-nez v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mDiskCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/DiskCacheWrapper;->contains(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mBitmapCache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/BitmapCacheWrapper;->contains(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method public containsInDiskCache(Lcom/sea_monster/resource/Resource;)Z
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 226
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mDiskCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/DiskCacheWrapper;->contains(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method public containsInMemoryCache(Lcom/sea_monster/resource/Resource;)Z
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    const/4 v0, 0x0

    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mBitmapCache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    if-eqz v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mBitmapCache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/BitmapCacheWrapper;->containsInMemoryCache(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDrawable(Lcom/sea_monster/resource/Resource;)Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    const/4 v0, 0x0

    .line 248
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mBitmapCache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    if-eqz v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mBitmapCache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/BitmapCacheWrapper;->get(Landroid/net/Uri;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getFile(Lcom/sea_monster/resource/Resource;)Ljava/io/File;
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    const/4 v0, 0x0

    .line 244
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mDiskCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/DiskCacheWrapper;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method getResourceHandler(Lorg/apache/http/HttpEntity;)Lcom/sea_monster/resource/IResourceHandler;
    .locals 5
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 258
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    if-nez v3, :cond_0

    .line 259
    iget-object v3, p0, Lcom/sea_monster/resource/ResourceHandler;->mHandlerMap:Ljava/util/Map;

    const-string v4, "*"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sea_monster/resource/IResourceHandler;

    .line 273
    :goto_0
    return-object v3

    .line 262
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/sea_monster/resource/ResourceHandler;->mHandlerMap:Ljava/util/Map;

    const-string v4, "*"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sea_monster/resource/IResourceHandler;

    goto :goto_0

    .line 268
    :cond_1
    iget-object v3, p0, Lcom/sea_monster/resource/ResourceHandler;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sea_monster/resource/IResourceHandler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sea_monster/resource/IResourceHandler;

    goto :goto_0

    .line 273
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sea_monster/resource/IResourceHandler;>;"
    :cond_3
    iget-object v3, p0, Lcom/sea_monster/resource/ResourceHandler;->mHandlerMap:Ljava/util/Map;

    const-string v4, "*"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sea_monster/resource/IResourceHandler;

    goto :goto_0
.end method

.method public put(Lcom/sea_monster/resource/Resource;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mBitmapCache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sea_monster/cache/BitmapCacheWrapper;->put(Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .line 282
    return-void
.end method

.method public put(Lcom/sea_monster/resource/Resource;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler;->mDiskCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sea_monster/cache/DiskCacheWrapper;->put(Landroid/net/Uri;Ljava/io/InputStream;)V

    .line 278
    return-void
.end method

.method public requestResource(Lcom/sea_monster/resource/Resource;)Lcom/sea_monster/network/AbstractHttpRequest;
    .locals 1
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/resource/Resource;",
            ")",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/resource/ResourceHandler;->requestResource(Lcom/sea_monster/resource/Resource;Lcom/sea_monster/resource/ResCallback;)Lcom/sea_monster/network/AbstractHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public requestResource(Lcom/sea_monster/resource/Resource;Lcom/sea_monster/resource/ResCallback;)Lcom/sea_monster/network/AbstractHttpRequest;
    .locals 7
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;
    .param p2, "callback"    # Lcom/sea_monster/resource/ResCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/resource/Resource;",
            "Lcom/sea_monster/resource/ResCallback;",
            ")",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mRequestQueue:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mRequestQueue:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sea_monster/network/AbstractHttpRequest;

    .line 168
    :goto_0
    return-object v1

    .line 141
    :cond_0
    new-instance v0, Lcom/sea_monster/resource/ResourceHandler$1;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/resource/ResourceHandler$1;-><init>(Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;Lcom/sea_monster/resource/ResCallback;Lcom/sea_monster/resource/Resource;)V

    .line 164
    .local v0, "resRequest":Lcom/sea_monster/resource/ResRequest;
    invoke-virtual {v0}, Lcom/sea_monster/resource/ResRequest;->obtainRequest()Lcom/sea_monster/network/AbstractHttpRequest;

    move-result-object v6

    .line 166
    .local v6, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<Ljava/io/File;>;"
    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mRequestQueue:Ljava/util/Map;

    invoke-interface {v1, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mNetworkManager:Lcom/sea_monster/network/NetworkManager;

    invoke-virtual {v1, v6}, Lcom/sea_monster/network/NetworkManager;->requestAsync(Lcom/sea_monster/network/AbstractHttpRequest;)V

    move-object v1, v6

    .line 168
    goto :goto_0
.end method

.method public requestResource(Lcom/sea_monster/resource/Resource;Lcom/sea_monster/resource/ResCallback;Lcom/sea_monster/network/StoreStatusCallback;)Lcom/sea_monster/network/AbstractHttpRequest;
    .locals 8
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;
    .param p2, "callback"    # Lcom/sea_monster/resource/ResCallback;
    .param p3, "statusCallback"    # Lcom/sea_monster/network/StoreStatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/resource/Resource;",
            "Lcom/sea_monster/resource/ResCallback;",
            "Lcom/sea_monster/network/StoreStatusCallback;",
            ")",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mRequestQueue:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mRequestQueue:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sea_monster/network/AbstractHttpRequest;

    .line 201
    :goto_0
    return-object v1

    .line 176
    :cond_0
    new-instance v0, Lcom/sea_monster/resource/ResourceHandler$2;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sea_monster/resource/ResourceHandler$2;-><init>(Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;Lcom/sea_monster/network/StoreStatusCallback;Lcom/sea_monster/resource/ResCallback;Lcom/sea_monster/resource/Resource;)V

    .line 197
    .local v0, "resRequest":Lcom/sea_monster/resource/ResRequest;
    invoke-virtual {v0}, Lcom/sea_monster/resource/ResRequest;->obtainRequest()Lcom/sea_monster/network/AbstractHttpRequest;

    move-result-object v7

    .line 199
    .local v7, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<Ljava/io/File;>;"
    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mRequestQueue:Ljava/util/Map;

    invoke-interface {v1, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler;->mNetworkManager:Lcom/sea_monster/network/NetworkManager;

    invoke-virtual {v1, v7}, Lcom/sea_monster/network/NetworkManager;->requestAsync(Lcom/sea_monster/network/AbstractHttpRequest;)V

    move-object v1, v7

    .line 201
    goto :goto_0
.end method
