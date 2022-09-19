.class Lcom/youku/player/danmaku/LocalDanmakuManager$1;
.super Ljava/lang/Object;
.source "LocalDanmakuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/danmaku/LocalDanmakuManager;->beginDanmaku(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/player/danmaku/LocalDanmakuManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    iput-object p2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 64
    .local v0, "before":Ljava/lang/Long;
    iget-object v2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    invoke-static {v2}, Lcom/youku/player/danmaku/LocalDanmakuManager;->access$000(Lcom/youku/player/danmaku/LocalDanmakuManager;)Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    iget-object v3, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->val$path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/player/danmaku/LocalDanmakuManager;->access$100(Lcom/youku/player/danmaku/LocalDanmakuManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 66
    sget-object v2, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u5f39\u5e55\u6587\u4ef6\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    iput v6, v2, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    .line 70
    iget-object v2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    invoke-static {v2}, Lcom/youku/player/danmaku/LocalDanmakuManager;->access$000(Lcom/youku/player/danmaku/LocalDanmakuManager;)Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    iget-object v4, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->val$path:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/youku/player/danmaku/LocalDanmakuManager;->access$100(Lcom/youku/player/danmaku/LocalDanmakuManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    iget v4, v4, Lcom/youku/player/danmaku/LocalDanmakuManager;->beginMs:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/player/base/YoukuPlayerView;->beginDanmaku(Ljava/lang/String;J)V

    .line 71
    sget-object v2, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5f00\u59cb\u5f39\u5e55:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    iget v4, v4, Lcom/youku/player/danmaku/LocalDanmakuManager;->beginMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->val$path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    iget v3, v2, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    .line 74
    iget-object v2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    invoke-static {v2}, Lcom/youku/player/danmaku/LocalDanmakuManager;->access$200(Lcom/youku/player/danmaku/LocalDanmakuManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    invoke-virtual {v2}, Lcom/youku/player/danmaku/LocalDanmakuManager;->hideDanmaku()V

    .line 79
    :goto_1
    iget-object v2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    iput-boolean v6, v2, Lcom/youku/player/danmaku/LocalDanmakuManager;->isCanSeek:Z

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 81
    .local v1, "now":Ljava/lang/Long;
    sget-object v2, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u52a0\u8f7d\u4e86:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u6beb\u79d2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    .end local v1    # "now":Ljava/lang/Long;
    :cond_2
    iget-object v2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager$1;->this$0:Lcom/youku/player/danmaku/LocalDanmakuManager;

    invoke-virtual {v2}, Lcom/youku/player/danmaku/LocalDanmakuManager;->showDanmaku()V

    goto :goto_1
.end method
