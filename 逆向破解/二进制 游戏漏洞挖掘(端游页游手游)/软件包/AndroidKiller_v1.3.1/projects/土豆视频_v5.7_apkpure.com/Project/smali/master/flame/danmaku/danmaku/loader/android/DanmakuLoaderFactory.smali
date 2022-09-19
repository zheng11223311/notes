.class public Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;
.super Ljava/lang/Object;
.source "DanmakuLoaderFactory.java"


# static fields
.field public static TAG_TUDOU:Ljava/lang/String;

.field public static TAG_YOUKU:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "tudou"

    sput-object v0, Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;->TAG_TUDOU:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "youku"

    sput-object v0, Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;->TAG_YOUKU:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/loader/ILoader;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;->TAG_TUDOU:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;->instance()Lmaster/flame/danmaku/danmaku/loader/ILoader;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :cond_0
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;->TAG_YOUKU:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;->instance()Lmaster/flame/danmaku/danmaku/loader/ILoader;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
