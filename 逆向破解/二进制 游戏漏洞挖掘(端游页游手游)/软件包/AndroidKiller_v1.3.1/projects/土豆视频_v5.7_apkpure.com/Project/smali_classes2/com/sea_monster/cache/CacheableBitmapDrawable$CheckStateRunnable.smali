.class final Lcom/sea_monster/cache/CacheableBitmapDrawable$CheckStateRunnable;
.super Lcom/sea_monster/cache/WeakReferenceRunnable;
.source "CacheableBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/cache/CacheableBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CheckStateRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sea_monster/cache/WeakReferenceRunnable",
        "<",
        "Lcom/sea_monster/cache/CacheableBitmapDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sea_monster/cache/CacheableBitmapDrawable;)V
    .locals 0
    .param p1, "object"    # Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/sea_monster/cache/WeakReferenceRunnable;-><init>(Ljava/lang/Object;)V

    .line 252
    return-void
.end method


# virtual methods
.method public run(Lcom/sea_monster/cache/CacheableBitmapDrawable;)V
    .locals 1
    .param p1, "object"    # Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .prologue
    .line 256
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->access$000(Lcom/sea_monster/cache/CacheableBitmapDrawable;Z)V

    .line 257
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 247
    check-cast p1, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sea_monster/cache/CacheableBitmapDrawable$CheckStateRunnable;->run(Lcom/sea_monster/cache/CacheableBitmapDrawable;)V

    return-void
.end method
