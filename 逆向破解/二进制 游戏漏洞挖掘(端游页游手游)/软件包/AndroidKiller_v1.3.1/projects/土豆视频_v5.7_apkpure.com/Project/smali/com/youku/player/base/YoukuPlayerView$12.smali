.class Lcom/youku/player/base/YoukuPlayerView$12;
.super Ljava/lang/Object;
.source "YoukuPlayerView.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/DrawHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/YoukuPlayerView;->beginDanmaku(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/YoukuPlayerView;

.field final synthetic val$beginTime:J


# direct methods
.method constructor <init>(Lcom/youku/player/base/YoukuPlayerView;J)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/youku/player/base/YoukuPlayerView$12;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iput-wide p2, p0, Lcom/youku/player/base/YoukuPlayerView$12;->val$beginTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawingFinished()V
    .locals 0

    .prologue
    .line 883
    return-void
.end method

.method public prepared()V
    .locals 4

    .prologue
    .line 887
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView$12;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    invoke-static {v0}, Lcom/youku/player/base/YoukuPlayerView;->access$200(Lcom/youku/player/base/YoukuPlayerView;)Lmaster/flame/danmaku/controller/IDanmakuView;

    move-result-object v0

    iget-wide v2, p0, Lcom/youku/player/base/YoukuPlayerView$12;->val$beginTime:J

    invoke-interface {v0, v2, v3}, Lmaster/flame/danmaku/controller/IDanmakuView;->start(J)V

    .line 888
    return-void
.end method

.method public updateTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V
    .locals 4
    .param p1, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView$12;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-wide v2, p1, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iput-wide v2, v0, Lcom/youku/player/base/YoukuPlayerView;->currMillisecond:J

    .line 878
    return-void
.end method
