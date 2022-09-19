.class Lcom/youku/player/danmaku/DanmakuManager$4;
.super Ljava/lang/Object;
.source "DanmakuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/danmaku/DanmakuManager;->startLiveDanmaku()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/danmaku/DanmakuManager;


# direct methods
.method constructor <init>(Lcom/youku/player/danmaku/DanmakuManager;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/youku/player/danmaku/DanmakuManager$4;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$4;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    invoke-virtual {v0}, Lcom/youku/player/danmaku/DanmakuManager;->showDanmaku()V

    .line 440
    return-void
.end method
