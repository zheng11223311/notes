.class Lcom/tudou/detail/VideoListCache$CacheEntry;
.super Ljava/lang/Object;
.source "VideoListCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/VideoListCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation


# instance fields
.field videolist:Lcom/tudou/detail/vo/VideoList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tudou/detail/VideoListCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tudou/detail/VideoListCache$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tudou/detail/VideoListCache$CacheEntry;-><init>()V

    return-void
.end method
