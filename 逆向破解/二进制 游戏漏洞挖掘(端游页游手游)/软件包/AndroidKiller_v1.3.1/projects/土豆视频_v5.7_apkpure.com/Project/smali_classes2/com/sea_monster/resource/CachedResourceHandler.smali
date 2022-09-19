.class public Lcom/sea_monster/resource/CachedResourceHandler;
.super Ljava/lang/Object;
.source "CachedResourceHandler.java"

# interfaces
.implements Lcom/sea_monster/resource/IResourceHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sea_monster/resource/IResourceHandler",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public mCache:Lcom/sea_monster/cache/DiskCacheWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sea_monster/cache/DiskCacheWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Lcom/sea_monster/cache/DiskCacheWrapper;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    .line 32
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public exists(Lcom/sea_monster/resource/Resource;)Z
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/DiskCacheWrapper;->contains(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(Lcom/sea_monster/resource/Resource;)Ljava/io/File;
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/DiskCacheWrapper;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get(Lcom/sea_monster/resource/Resource;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/sea_monster/resource/CachedResourceHandler;->get(Lcom/sea_monster/resource/Resource;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFile(Lcom/sea_monster/resource/Resource;)Ljava/io/File;
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/DiskCacheWrapper;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream(Lcom/sea_monster/resource/Resource;)Ljava/io/InputStream;
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/DiskCacheWrapper;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Lcom/sea_monster/resource/Resource;)V
    .locals 2
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/DiskCacheWrapper;->remove(Landroid/net/Uri;)V

    goto :goto_0
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
    .line 68
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sea_monster/cache/DiskCacheWrapper;->put(Landroid/net/Uri;Ljava/io/InputStream;)V

    goto :goto_0
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
    .line 77
    iget-object v0, p0, Lcom/sea_monster/resource/CachedResourceHandler;->mCache:Lcom/sea_monster/cache/DiskCacheWrapper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    new-instance v0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sea_monster/resource/ProgressInputStreamWrapper;-><init>(Ljava/io/InputStream;JLcom/sea_monster/network/StoreStatusCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/resource/CachedResourceHandler;->store(Lcom/sea_monster/resource/Resource;Ljava/io/InputStream;)V

    goto :goto_0
.end method
