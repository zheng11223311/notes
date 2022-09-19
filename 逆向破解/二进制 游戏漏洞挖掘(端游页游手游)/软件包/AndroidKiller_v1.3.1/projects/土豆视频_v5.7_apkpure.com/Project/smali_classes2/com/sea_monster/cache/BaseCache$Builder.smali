.class public final Lcom/sea_monster/cache/BaseCache$Builder;
.super Ljava/lang/Object;
.source "BaseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/cache/BaseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/sea_monster/cache/BaseCache;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    new-instance v0, Lcom/sea_monster/cache/BaseCache;

    invoke-direct {v0}, Lcom/sea_monster/cache/BaseCache;-><init>()V

    .line 73
    .local v0, "cache":Lcom/sea_monster/cache/BaseCache;
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 75
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-static {v0, v1}, Lcom/sea_monster/cache/BaseCache;->access$000(Lcom/sea_monster/cache/BaseCache;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/sea_monster/cache/BaseCache$Builder;->type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v1    # "dir":Ljava/io/File;
    :goto_0
    iput-object v1, v0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheLocation:Ljava/io/File;

    .line 82
    :goto_1
    :try_start_0
    iget-object v3, v0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheLocation:Ljava/io/File;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xa00000

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sea_monster/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/sea_monster/cache/DiskLruCache;

    move-result-object v3

    iput-object v3, v0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheEditLocks:Ljava/util/Map;

    .line 88
    new-instance v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v3, v0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheFlusherExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 89
    new-instance v3, Lcom/sea_monster/cache/BaseCache$DiskCacheFlushRunnable;

    iget-object v4, v0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    invoke-direct {v3, v4}, Lcom/sea_monster/cache/BaseCache$DiskCacheFlushRunnable;-><init>(Lcom/sea_monster/cache/DiskLruCache;)V

    iput-object v3, v0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheFlusherRunnable:Lcom/sea_monster/cache/BaseCache$DiskCacheFlushRunnable;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sea_monster/cache/BaseCache;->access$102(Lcom/sea_monster/cache/BaseCache;Ljava/io/File;)Ljava/io/File;

    .line 91
    return-object v0

    .line 76
    .restart local v1    # "dir":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sea_monster/cache/BaseCache$Builder;->type:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/sea_monster/cache/BaseCache$Builder;->type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    :goto_3
    iput-object v3, v0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheLocation:Ljava/io/File;

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/sea_monster/cache/BaseCache$Builder;->type:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    .line 83
    .end local v1    # "dir":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public setType(Ljava/lang/String;)Lcom/sea_monster/cache/BaseCache$Builder;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sea_monster/cache/BaseCache$Builder;->type:Ljava/lang/String;

    .line 64
    return-object p0
.end method
