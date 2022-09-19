.class Lmaster/flame/danmaku/ui/widget/DanmakuView$1;
.super Ljava/lang/Object;
.source "DanmakuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/ui/widget/DanmakuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/ui/widget/DanmakuView;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->access$0(Lmaster/flame/danmaku/ui/widget/DanmakuView;)Lmaster/flame/danmaku/controller/DrawHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->access$1(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->access$2(Lmaster/flame/danmaku/ui/widget/DanmakuView;I)V

    .line 359
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->access$1(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->access$3(Lmaster/flame/danmaku/ui/widget/DanmakuView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->access$0(Lmaster/flame/danmaku/ui/widget/DanmakuView;)Lmaster/flame/danmaku/controller/DrawHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->resume()V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->access$0(Lmaster/flame/danmaku/ui/widget/DanmakuView;)Lmaster/flame/danmaku/controller/DrawHandler;

    move-result-object v0

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-static {v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->access$1(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lmaster/flame/danmaku/controller/DrawHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
