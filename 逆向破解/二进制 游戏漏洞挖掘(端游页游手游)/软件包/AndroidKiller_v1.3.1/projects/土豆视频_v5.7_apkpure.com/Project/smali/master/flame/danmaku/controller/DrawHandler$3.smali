.class Lmaster/flame/danmaku/controller/DrawHandler$3;
.super Ljava/lang/Object;
.source "DrawHandler.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/DrawHandler;->prepare(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/controller/DrawHandler;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/DrawHandler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    iput-object p2, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->val$runnable:Ljava/lang/Runnable;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDanmakuAdd(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 481
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 482
    return-void
.end method

.method public onDanmakuConfigChanged()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->access$15(Lmaster/flame/danmaku/controller/DrawHandler;)V

    .line 494
    return-void
.end method

.method public onDanmakusDrawingFinished()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/DrawHandler$Callback;->drawingFinished()V

    .line 489
    :cond_0
    return-void
.end method

.method public ready()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->access$14(Lmaster/flame/danmaku/controller/DrawHandler;)V

    .line 476
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 477
    return-void
.end method
