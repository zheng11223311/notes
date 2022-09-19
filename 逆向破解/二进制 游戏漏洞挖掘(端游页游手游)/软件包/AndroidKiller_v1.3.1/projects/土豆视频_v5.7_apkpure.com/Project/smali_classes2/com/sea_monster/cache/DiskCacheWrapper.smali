.class public Lcom/sea_monster/cache/DiskCacheWrapper;
.super Lcom/sea_monster/cache/BaseCache;
.source "DiskCacheWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/cache/DiskCacheWrapper$Builder;
    }
.end annotation


# instance fields
.field mCache:Lcom/sea_monster/cache/BaseCache;


# direct methods
.method public constructor <init>(Lcom/sea_monster/cache/BaseCache;)V
    .locals 0
    .param p1, "mCache"    # Lcom/sea_monster/cache/BaseCache;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sea_monster/cache/BaseCache;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sea_monster/cache/DiskCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    .line 18
    return-void
.end method


# virtual methods
.method public contains(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sea_monster/cache/DiskCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sea_monster/cache/DiskCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v0, p1}, Lcom/sea_monster/cache/BaseCache;->contains(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sea_monster/cache/DiskCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sea_monster/cache/DiskCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v0, p1}, Lcom/sea_monster/cache/BaseCache;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sea_monster/cache/DiskCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sea_monster/cache/DiskCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v0, p1}, Lcom/sea_monster/cache/BaseCache;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/sea_monster/cache/DiskCacheWrapper;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 36
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public put(Landroid/net/Uri;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sea_monster/cache/DiskCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/sea_monster/cache/DiskCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v0, p1, p2}, Lcom/sea_monster/cache/BaseCache;->put(Landroid/net/Uri;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public remove(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sea_monster/cache/DiskCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/sea_monster/cache/DiskCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v0, p1}, Lcom/sea_monster/cache/BaseCache;->remove(Landroid/net/Uri;)V

    goto :goto_0
.end method
