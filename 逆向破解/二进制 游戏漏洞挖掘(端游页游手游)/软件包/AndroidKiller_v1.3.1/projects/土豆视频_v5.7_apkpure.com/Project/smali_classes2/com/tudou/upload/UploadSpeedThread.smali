.class Lcom/tudou/upload/UploadSpeedThread;
.super Ljava/lang/Thread;
.source "UploadSpeedThread.java"


# static fields
.field private static final CHECK_SPEED_INTERVAL:I = 0x1388

.field public static volatile TESTING:Z


# instance fields
.field private speed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/upload/UploadSpeedThread;->TESTING:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tudou/upload/UploadSpeedThread;->speed:I

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 19
    sget-boolean v4, Lcom/tudou/upload/UploadSpeedThread;->TESTING:Z

    if-eqz v4, :cond_0

    .line 44
    :goto_0
    return-void

    .line 22
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/tudou/upload/UploadSpeedThread;->TESTING:Z

    .line 24
    const-wide/16 v2, 0x0

    .line 26
    .local v2, "uploadCountCache":J
    :goto_1
    sget-wide v2, Lcom/tudou/upload/UploadApi;->UPLOAD_COUNT:J

    .line 28
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_2
    sget-wide v6, Lcom/tudou/upload/UploadApi;->UPLOAD_COUNT:J

    sub-long/2addr v6, v2

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    const-wide/16 v8, 0x5

    div-long/2addr v6, v8

    long-to-int v4, v6

    iput v4, p0, Lcom/tudou/upload/UploadSpeedThread;->speed:I

    .line 36
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getUploadingTask()Lcom/tudou/upload/UploadInfo;

    move-result-object v1

    .line 37
    .local v1, "info":Lcom/tudou/upload/UploadInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    :cond_1
    sput-boolean v5, Lcom/tudou/upload/UploadSpeedThread;->TESTING:Z

    goto :goto_0

    .line 29
    .end local v1    # "info":Lcom/tudou/upload/UploadInfo;
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 40
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "info":Lcom/tudou/upload/UploadInfo;
    :cond_2
    iget v4, p0, Lcom/tudou/upload/UploadSpeedThread;->speed:I

    if-gez v4, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {v1, v4}, Lcom/tudou/upload/UploadInfo;->setSpeed(I)V

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/tudou/upload/UploadSpeedThread;->speed:I

    goto :goto_3
.end method
