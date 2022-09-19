.class Lcom/youku/pushsdk/control/CollectDataManager$1;
.super Ljava/lang/Object;
.source "CollectDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/pushsdk/control/CollectDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/pushsdk/control/CollectDataManager;


# direct methods
.method constructor <init>(Lcom/youku/pushsdk/control/CollectDataManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/youku/pushsdk/control/CollectDataManager$1;->this$0:Lcom/youku/pushsdk/control/CollectDataManager;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 118
    invoke-static {}, Lcom/youku/pushsdk/control/CollectDataManager;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sendDataRunnable run()"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/youku/pushsdk/control/CollectDataManager$1;->this$0:Lcom/youku/pushsdk/control/CollectDataManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/pushsdk/control/CollectDataManager;->access$1(Lcom/youku/pushsdk/control/CollectDataManager;Z)V

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/youku/pushsdk/control/CollectDataManager$1;->this$0:Lcom/youku/pushsdk/control/CollectDataManager;

    invoke-static {v2}, Lcom/youku/pushsdk/control/CollectDataManager;->access$2(Lcom/youku/pushsdk/control/CollectDataManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-static {}, Lcom/youku/pushsdk/control/CollectDataManager;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end loop: sendingRunnableFlag is false"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 122
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/youku/pushsdk/control/CollectDataManager;->access$3()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/pushsdk/data/EventDataPackage;

    .line 123
    .local v1, "pack":Lcom/youku/pushsdk/data/EventDataPackage;
    invoke-static {}, Lcom/youku/pushsdk/control/CollectDataManager;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "get a element int the event queue"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/youku/pushsdk/control/CollectDataManager$1;->this$0:Lcom/youku/pushsdk/control/CollectDataManager;

    invoke-static {v2}, Lcom/youku/pushsdk/control/CollectDataManager;->access$4(Lcom/youku/pushsdk/control/CollectDataManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/youku/pushsdk/control/CollectDataManager$SendTask;

    iget-object v4, p0, Lcom/youku/pushsdk/control/CollectDataManager$1;->this$0:Lcom/youku/pushsdk/control/CollectDataManager;

    invoke-direct {v3, v4, v1}, Lcom/youku/pushsdk/control/CollectDataManager$SendTask;-><init>(Lcom/youku/pushsdk/control/CollectDataManager;Lcom/youku/pushsdk/data/EventDataPackage;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 125
    .end local v1    # "pack":Lcom/youku/pushsdk/data/EventDataPackage;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/youku/pushsdk/control/CollectDataManager;->access$0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {}, Lcom/youku/pushsdk/control/CollectDataManager;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RejectedExecutionException"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0
.end method
