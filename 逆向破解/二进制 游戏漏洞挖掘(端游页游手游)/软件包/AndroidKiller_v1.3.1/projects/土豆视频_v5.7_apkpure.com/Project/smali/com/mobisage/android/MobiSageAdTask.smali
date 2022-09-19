.class Lcom/mobisage/android/MobiSageAdTask;
.super Lcom/mobisage/android/MobiSageTask;
.source "MobiSageAdTask.java"


# instance fields
.field public cbHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "cbHandler"    # Landroid/os/Handler;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageTask;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdTask;->cbHandler:Landroid/os/Handler;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobisage/android/MobiSageAdTask;->isRate:Z

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobisage/android/MobiSageAdTask;->periodTime:J

    .line 13
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 17
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 18
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 23
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdTask;->cbHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 29
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdTask;->cbHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 27
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    .line 28
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
