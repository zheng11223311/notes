.class Lcom/youku/player/base/YoukuPlayerView$13;
.super Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;
.source "YoukuPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/base/YoukuPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/YoukuPlayerView;


# direct methods
.method constructor <init>(Lcom/youku/player/base/YoukuPlayerView;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/youku/player/base/YoukuPlayerView$13;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareDrawing(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 4
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "fromWorkerThread"    # Z

    .prologue
    .line 1111
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isStar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isStarAdded:Z

    if-nez v0, :cond_0

    .line 1112
    const/4 v0, 0x1

    iput-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isStarAdded:Z

    .line 1113
    const-string/jumbo v0, "star"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareDrawing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView$13;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    invoke-static {v0}, Lcom/youku/player/base/YoukuPlayerView;->access$300(Lcom/youku/player/base/YoukuPlayerView;)Lcom/youku/player/danmaku/DanmakuUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView$13;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    invoke-static {v1}, Lcom/youku/player/base/YoukuPlayerView;->access$200(Lcom/youku/player/base/YoukuPlayerView;)Lmaster/flame/danmaku/controller/IDanmakuView;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/youku/player/danmaku/DanmakuUtils;->requestStarImage(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/controller/IDanmakuView;)V

    .line 1116
    :cond_0
    return-void
.end method

.method public releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 0
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 1121
    return-void
.end method
