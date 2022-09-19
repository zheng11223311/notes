.class Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;
.super Ljava/lang/Object;
.source "LocalDanmakuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/danmaku/LocalDanmakuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "seekDanmakuRunnable"
.end annotation


# instance fields
.field ms:I

.field final synthetic this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;


# direct methods
.method public constructor <init>(Lcom/youku/player/danmaku/LocalDanmakuManager;I)V
    .locals 0
    .param p2, "ms"    # I

    .prologue
    .line 156
    iput-object p1, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;->ms:I

    .line 158
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    iget v0, v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    invoke-static {v0}, Lcom/youku/player/danmaku/LocalDanmakuManager;->access$000(Lcom/youku/player/danmaku/LocalDanmakuManager;)Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    invoke-static {v0}, Lcom/youku/player/danmaku/LocalDanmakuManager;->access$000(Lcom/youku/player/danmaku/LocalDanmakuManager;)Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v0

    iget v1, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;->ms:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->seekToDanmaku(Ljava/lang/Long;)V

    .line 164
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    const/4 v1, 0x3

    iput v1, v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    .line 165
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seek to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;->ms:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;

    iget-object v2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    iget v3, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;->ms:I

    invoke-direct {v1, v2, v3}, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;-><init>(Lcom/youku/player/danmaku/LocalDanmakuManager;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u5f39\u5e55\u5c1a\u672a\u51c6\u5907\u597d\uff0c\u5ef6\u8fdf200\u6beb\u79d2\u518d\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
