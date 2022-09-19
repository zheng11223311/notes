.class public final Lcom/sea_monster/cache/DiskCacheWrapper$Builder;
.super Ljava/lang/Object;
.source "DiskCacheWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/cache/DiskCacheWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCache:Lcom/sea_monster/cache/BaseCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public build()Lcom/sea_monster/cache/DiskCacheWrapper;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/sea_monster/cache/DiskCacheWrapper;

    iget-object v1, p0, Lcom/sea_monster/cache/DiskCacheWrapper$Builder;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-direct {v0, v1}, Lcom/sea_monster/cache/DiskCacheWrapper;-><init>(Lcom/sea_monster/cache/BaseCache;)V

    .line 73
    .local v0, "cache":Lcom/sea_monster/cache/DiskCacheWrapper;
    return-object v0
.end method

.method public setCache(Lcom/sea_monster/cache/BaseCache;)Lcom/sea_monster/cache/DiskCacheWrapper$Builder;
    .locals 0
    .param p1, "cache"    # Lcom/sea_monster/cache/BaseCache;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sea_monster/cache/DiskCacheWrapper$Builder;->mCache:Lcom/sea_monster/cache/BaseCache;

    .line 78
    return-object p0
.end method
