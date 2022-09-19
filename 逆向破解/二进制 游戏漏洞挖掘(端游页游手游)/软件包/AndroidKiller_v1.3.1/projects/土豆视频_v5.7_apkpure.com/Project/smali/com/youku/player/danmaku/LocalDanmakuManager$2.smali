.class Lcom/youku/player/danmaku/LocalDanmakuManager$2;
.super Ljava/lang/Object;
.source "LocalDanmakuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/danmaku/LocalDanmakuManager;->resetAndReleaseDanmakuInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;


# direct methods
.method constructor <init>(Lcom/youku/player/danmaku/LocalDanmakuManager;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$2;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$2;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    invoke-virtual {v0}, Lcom/youku/player/danmaku/LocalDanmakuManager;->releaseDanmaku()V

    .line 248
    return-void
.end method
