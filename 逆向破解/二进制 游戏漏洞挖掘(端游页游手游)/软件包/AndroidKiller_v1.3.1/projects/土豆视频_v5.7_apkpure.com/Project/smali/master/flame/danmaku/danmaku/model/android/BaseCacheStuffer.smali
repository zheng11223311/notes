.class public abstract Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;
.super Ljava/lang/Object;
.source "BaseCacheStuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;
    }
.end annotation


# instance fields
.field protected mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 0
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 74
    return-void
.end method

.method public abstract clearCaches()V
.end method

.method public abstract drawBackground(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FF)V
.end method

.method public abstract drawStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
.end method

.method public abstract drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V
.end method

.method public abstract measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V
.end method

.method public releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 81
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;->releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setProxy(Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;)V
    .locals 0
    .param p1, "adapter"    # Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    .prologue
    .line 77
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    .line 78
    return-void
.end method
