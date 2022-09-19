.class Lcom/youku/player/unicom/ChinaUnicomManager$5;
.super Ljava/lang/Object;
.source "ChinaUnicomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/unicom/ChinaUnicomManager;->replaceAdvUrl(Lcom/youku/player/goplay/VideoAdvInfo;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/unicom/ChinaUnicomManager;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/youku/player/unicom/ChinaUnicomManager;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$5;->this$0:Lcom/youku/player/unicom/ChinaUnicomManager;

    iput-object p2, p0, Lcom/youku/player/unicom/ChinaUnicomManager$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/youku/player/unicom/ChinaUnicomManager$5;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    new-instance v1, Lcom/youku/player/util/MainThreadExecutor;

    invoke-direct {v1}, Lcom/youku/player/util/MainThreadExecutor;-><init>()V

    iget-object v2, p0, Lcom/youku/player/unicom/ChinaUnicomManager$5;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/youku/player/util/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 256
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
