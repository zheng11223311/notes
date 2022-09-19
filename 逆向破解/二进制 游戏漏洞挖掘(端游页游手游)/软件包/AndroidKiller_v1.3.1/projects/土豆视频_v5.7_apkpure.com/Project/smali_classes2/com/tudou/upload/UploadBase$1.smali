.class final Lcom/tudou/upload/UploadBase$1;
.super Ljava/lang/Object;
.source "UploadBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/upload/UploadBase;->startUploadTask(JLcom/tudou/upload/UploadInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 488
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tudou/upload/UploadBase;->CHECKING:Z

    .line 494
    const-string v1, "UPLOAD_TAG"

    const-string v2, "startUploadTask===start next  time"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/tudou/upload/UploadBase;->startUploadTask(JLcom/tudou/upload/UploadInfo;)Z

    .line 496
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
