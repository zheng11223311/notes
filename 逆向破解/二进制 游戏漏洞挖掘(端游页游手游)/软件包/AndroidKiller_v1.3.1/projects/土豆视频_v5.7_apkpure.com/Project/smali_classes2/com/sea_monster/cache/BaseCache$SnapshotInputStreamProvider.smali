.class final Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;
.super Ljava/lang/Object;
.source "BaseCache.java"

# interfaces
.implements Lcom/sea_monster/cache/BaseCache$InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/cache/BaseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SnapshotInputStreamProvider"
.end annotation


# instance fields
.field final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/sea_monster/cache/BaseCache;


# direct methods
.method constructor <init>(Lcom/sea_monster/cache/BaseCache;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;->this$0:Lcom/sea_monster/cache/BaseCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;->mKey:Ljava/lang/String;

    .line 246
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 5

    .prologue
    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;->this$0:Lcom/sea_monster/cache/BaseCache;

    iget-object v2, v2, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    iget-object v3, p0, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sea_monster/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/sea_monster/cache/DiskLruCache$Snapshot;

    move-result-object v1

    .line 264
    .local v1, "snapshot":Lcom/sea_monster/cache/DiskLruCache$Snapshot;
    if-eqz v1, :cond_0

    .line 265
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->getFile(I)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 270
    .end local v1    # "snapshot":Lcom/sea_monster/cache/DiskLruCache$Snapshot;
    :goto_0
    return-object v2

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/sea_monster/cache/Constants;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could open disk cache for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;->this$0:Lcom/sea_monster/cache/BaseCache;

    iget-object v2, v2, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    iget-object v3, p0, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sea_monster/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/sea_monster/cache/DiskLruCache$Snapshot;

    move-result-object v1

    .line 252
    .local v1, "snapshot":Lcom/sea_monster/cache/DiskLruCache$Snapshot;
    if-eqz v1, :cond_0

    .line 253
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 258
    .end local v1    # "snapshot":Lcom/sea_monster/cache/DiskLruCache$Snapshot;
    :goto_0
    return-object v2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/sea_monster/cache/Constants;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could open disk cache for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
