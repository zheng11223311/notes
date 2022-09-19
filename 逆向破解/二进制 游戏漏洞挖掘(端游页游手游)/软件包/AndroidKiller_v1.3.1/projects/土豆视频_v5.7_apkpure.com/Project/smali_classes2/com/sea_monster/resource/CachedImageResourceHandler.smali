.class public Lcom/sea_monster/resource/CachedImageResourceHandler;
.super Ljava/lang/Object;
.source "CachedImageResourceHandler.java"

# interfaces
.implements Lcom/sea_monster/resource/IResourceHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sea_monster/resource/IResourceHandler",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field cache:Lcom/sea_monster/cache/BitmapCacheWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sea_monster/cache/BitmapCacheWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Lcom/sea_monster/cache/BitmapCacheWrapper;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/sea_monster/resource/CachedImageResourceHandler;->cache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    .line 23
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public exists(Lcom/sea_monster/resource/Resource;)Z
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sea_monster/resource/CachedImageResourceHandler;->cache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/BitmapCacheWrapper;->contains(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public get(Lcom/sea_monster/resource/Resource;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sea_monster/resource/CachedImageResourceHandler;->cache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/BitmapCacheWrapper;->get(Landroid/net/Uri;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Lcom/sea_monster/resource/Resource;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/sea_monster/resource/CachedImageResourceHandler;->get(Lcom/sea_monster/resource/Resource;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getFile(Lcom/sea_monster/resource/Resource;)Ljava/io/File;
    .locals 3
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/sea_monster/resource/CachedImageResourceHandler;->cache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sea_monster/cache/BitmapCacheWrapper;->getFileFromDiskCache(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 39
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 41
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputStream(Lcom/sea_monster/resource/Resource;)Ljava/io/InputStream;
    .locals 3
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v1, p0, Lcom/sea_monster/resource/CachedImageResourceHandler;->cache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sea_monster/cache/BitmapCacheWrapper;->getFileFromDiskCache(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 47
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 49
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/sea_monster/resource/Resource;)V
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sea_monster/resource/CachedImageResourceHandler;->cache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/BitmapCacheWrapper;->remove(Landroid/net/Uri;)V

    .line 70
    return-void
.end method

.method public store(Lcom/sea_monster/resource/Resource;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sea_monster/resource/CachedImageResourceHandler;->cache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sea_monster/cache/BitmapCacheWrapper;->put(Landroid/net/Uri;Ljava/io/InputStream;)V

    .line 55
    return-void
.end method

.method public store(Lcom/sea_monster/resource/Resource;Ljava/io/InputStream;JLcom/sea_monster/network/StoreStatusCallback;)V
    .locals 1
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "total"    # J
    .param p5, "statusCallback"    # Lcom/sea_monster/network/StoreStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sea_monster/resource/ProgressInputStreamWrapper;-><init>(Ljava/io/InputStream;JLcom/sea_monster/network/StoreStatusCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/resource/CachedImageResourceHandler;->store(Lcom/sea_monster/resource/Resource;Ljava/io/InputStream;)V

    .line 60
    return-void
.end method
