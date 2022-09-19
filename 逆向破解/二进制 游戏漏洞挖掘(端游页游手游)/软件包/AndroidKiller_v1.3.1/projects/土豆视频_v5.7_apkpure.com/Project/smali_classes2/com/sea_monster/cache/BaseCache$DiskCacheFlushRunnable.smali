.class final Lcom/sea_monster/cache/BaseCache$DiskCacheFlushRunnable;
.super Ljava/lang/Object;
.source "BaseCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/cache/BaseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DiskCacheFlushRunnable"
.end annotation


# instance fields
.field private final mDiskCache:Lcom/sea_monster/cache/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/sea_monster/cache/DiskLruCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/sea_monster/cache/DiskLruCache;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/sea_monster/cache/BaseCache$DiskCacheFlushRunnable;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    .line 161
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 167
    sget-boolean v1, Lcom/sea_monster/cache/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/sea_monster/cache/Constants;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Flushing Disk Cache"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sea_monster/cache/BaseCache$DiskCacheFlushRunnable;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/sea_monster/cache/DiskLruCache;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
