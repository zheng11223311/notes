.class Lcom/youku/widget/DanmuSurfaceView$DrawThread;
.super Ljava/lang/Object;
.source "DanmuSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/DanmuSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/DanmuSurfaceView;


# direct methods
.method constructor <init>(Lcom/youku/widget/DanmuSurfaceView;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/youku/widget/DanmuSurfaceView$DrawThread;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView$DrawThread;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    invoke-static {v0}, Lcom/youku/widget/DanmuSurfaceView;->access$400(Lcom/youku/widget/DanmuSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-wide/16 v0, 0x1e

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_1
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView$DrawThread;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    invoke-static {v0}, Lcom/youku/widget/DanmuSurfaceView;->access$500(Lcom/youku/widget/DanmuSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView$DrawThread;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    invoke-virtual {v0}, Lcom/youku/widget/DanmuSurfaceView;->drawDanmu()V

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    goto :goto_1

    .line 122
    :cond_1
    return-void
.end method
