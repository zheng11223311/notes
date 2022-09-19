.class final Lcom/sea_monster/cache/BitmapMemoryLruCache;
.super Landroid/support/v4/util/LruCache;
.source "BitmapMemoryLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/sea_monster/cache/CacheableBitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;


# direct methods
.method constructor <init>(ILcom/sea_monster/cache/BaseCache$RecyclePolicy;)V
    .locals 0
    .param p1, "maxSize"    # I
    .param p2, "policy"    # Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 38
    iput-object p2, p0, Lcom/sea_monster/cache/BitmapMemoryLruCache;->mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    .line 42
    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->entryRemoved(ZLjava/lang/String;Lcom/sea_monster/cache/CacheableBitmapDrawable;Lcom/sea_monster/cache/CacheableBitmapDrawable;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/sea_monster/cache/CacheableBitmapDrawable;Lcom/sea_monster/cache/CacheableBitmapDrawable;)V
    .locals 1
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .param p4, "newValue"    # Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->setCached(Z)V

    .line 73
    return-void
.end method

.method getBitmapFromRemoved(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method getRecyclePolicy()Lcom/sea_monster/cache/BaseCache$RecyclePolicy;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sea_monster/cache/BitmapMemoryLruCache;->mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    return-object v0
.end method

.method put(Lcom/sea_monster/cache/CacheableBitmapDrawable;)Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .locals 1
    .param p1, "value"    # Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->setCached(Z)V

    .line 47
    invoke-virtual {p1}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->sizeOf(Ljava/lang/String;Lcom/sea_monster/cache/CacheableBitmapDrawable;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Lcom/sea_monster/cache/CacheableBitmapDrawable;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .prologue
    .line 59
    invoke-virtual {p2}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->getMemorySize()I

    move-result v0

    return v0
.end method

.method trimMemory()V
    .locals 5

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 112
    .local v3, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sea_monster/cache/CacheableBitmapDrawable;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sea_monster/cache/CacheableBitmapDrawable;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .line 114
    .local v2, "value":Lcom/sea_monster/cache/CacheableBitmapDrawable;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->isBeingDisplayed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sea_monster/cache/CacheableBitmapDrawable;>;"
    .end local v2    # "value":Lcom/sea_monster/cache/CacheableBitmapDrawable;
    :cond_2
    return-void
.end method
