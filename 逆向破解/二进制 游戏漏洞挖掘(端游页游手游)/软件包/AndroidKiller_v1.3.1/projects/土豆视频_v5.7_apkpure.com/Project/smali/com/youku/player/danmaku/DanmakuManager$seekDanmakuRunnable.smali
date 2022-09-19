.class Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;
.super Ljava/lang/Object;
.source "DanmakuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/danmaku/DanmakuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "seekDanmakuRunnable"
.end annotation


# instance fields
.field ms:I

.field final synthetic this$0:Lcom/youku/player/danmaku/DanmakuManager;


# direct methods
.method public constructor <init>(Lcom/youku/player/danmaku/DanmakuManager;I)V
    .locals 0
    .param p2, "ms"    # I

    .prologue
    .line 335
    iput-object p1, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput p2, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->ms:I

    .line 337
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v0, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 342
    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->ms:I

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v1, v1, Lcom/youku/player/danmaku/DanmakuManager;->lastSeekTime:I

    if-ne v0, v1, :cond_1

    .line 343
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u4e0d\u80fd\u8fde\u7eedseek\u76f8\u540c\u65f6\u95f4\u70b9"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v0, v0, Lcom/youku/player/danmaku/DanmakuManager;->beginTime:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->ms:I

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v1, v1, Lcom/youku/player/danmaku/DanmakuManager;->beginTime:I

    add-int/lit16 v1, v1, 0xbb8

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->ms:I

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v1, v1, Lcom/youku/player/danmaku/DanmakuManager;->beginTime:I

    add-int/lit16 v1, v1, -0xbb8

    if-lt v0, v1, :cond_2

    .line 347
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u6b64\u65f6\u65e0\u9700seek"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    const/4 v1, -0x1

    iput v1, v0, Lcom/youku/player/danmaku/DanmakuManager;->beginTime:I

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v1, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->ms:I

    iput v1, v0, Lcom/youku/player/danmaku/DanmakuManager;->lastSeekTime:I

    .line 352
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    invoke-static {v0}, Lcom/youku/player/danmaku/DanmakuManager;->access$200(Lcom/youku/player/danmaku/DanmakuManager;)Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v0

    iget v1, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->ms:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->seekToDanmaku(Ljava/lang/Long;)V

    .line 353
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v1, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    .line 354
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f39\u5e55\u57fa\u51c6\u65f6\u95f4\u70b9\u5df2\u53d8,ms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->ms:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_3
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u5f39\u5e55\u6ca1\u6709\u5f00\u59cb\uff0c\u9694300\u6beb\u79d2\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;

    iget-object v2, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v3, p0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->ms:I

    invoke-direct {v1, v2, v3}, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;-><init>(Lcom/youku/player/danmaku/DanmakuManager;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
