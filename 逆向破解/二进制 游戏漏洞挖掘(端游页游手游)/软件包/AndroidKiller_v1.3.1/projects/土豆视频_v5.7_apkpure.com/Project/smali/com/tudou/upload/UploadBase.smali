.class abstract Lcom/tudou/upload/UploadBase;
.super Ljava/lang/Thread;
.source "UploadBase.java"


# static fields
.field protected static volatile CHECKING:Z = false

.field public static final CHECK_RESULT_ERROR:I = 0x0

.field public static final CHECK_RESULT_FINISHED:I = 0x1

.field public static final CHECK_RESULT_UNFINISH:I = 0x2

.field public static final ERROR_CODE_DB_INSERT:I = 0x64

.field public static final ERROR_CODE_DB_UPDATE:I = 0x65

.field public static final ERROR_CODE_FILE_NOT_FOUND:I = 0x67

.field public static final ERROR_CODE_IKU_CHECK:I = 0x7d3

.field public static final ERROR_CODE_IKU_CREATE_FILE:I = 0x7d0

.field public static final ERROR_CODE_IKU_NEW_SLICE:I = 0x7d1

.field public static final ERROR_CODE_IKU_UPLOAD_SLICE:I = 0x7d2

.field public static final ERROR_CODE_OPENAPI_CANCEL:I = 0x3eb

.field public static final ERROR_CODE_OPENAPI_COMMIT:I = 0x3ea

.field public static final ERROR_CODE_OPENAPI_CREATE:I = 0x3e9

.field public static final ERROR_CODE_OPENAPI_LOGIN:I = 0x3e8

.field public static final ERROR_CODE_OPENAPI_REFRESH_TOKEN:I = 0x3ed

.field public static final ERROR_CODE_OPENAPI_SPEC:I = 0x3ec

.field public static final ERROR_CODE_TRANS_IP:I = 0x66

.field protected static SESSION_ERROR_TASKS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected static volatile STATUS_BAR_TEXT:Ljava/lang/String;

.field protected static UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

.field private static mUploadThread:Ljava/lang/Thread;


# instance fields
.field protected volatile currentThreadCount:I

.field protected volatile isContinueTask:Z

.field protected session:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, ""

    sput-object v0, Lcom/tudou/upload/UploadBase;->STATUS_BAR_TEXT:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/upload/UploadBase;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tudou/upload/UploadBase;->SESSION_ERROR_TASKS:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/upload/UploadBase;->CHECKING:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/tudou/upload/UploadBase;->isContinueTask:Z

    .line 50
    iput v0, p0, Lcom/tudou/upload/UploadBase;->currentThreadCount:I

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tudou/upload/UploadBase;->session:J

    return-void
.end method

.method public static add(Lcom/tudou/upload/UploadInfo;)Z
    .locals 1
    .param p0, "info"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 165
    invoke-static {p0}, Lcom/tudou/upload/UploadBase;->broadCastNewTaskStart(Lcom/tudou/upload/UploadInfo;)V

    .line 166
    invoke-static {p0}, Lcom/tudou/upload/UploadDB;->insert(Lcom/tudou/upload/UploadInfo;)Z

    move-result v0

    return v0
.end method

.method public static broadCastFinish(Z)V
    .locals 3
    .param p0, "needCheck"    # Z

    .prologue
    .line 393
    if-eqz p0, :cond_0

    .line 394
    invoke-static {}, Lcom/tudou/upload/UploadBase;->getUploadTasks()Ljava/util/List;

    move-result-object v0

    .line 395
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 401
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    :goto_0
    return-void

    .line 399
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "UPLOAD_FINISH_BROADCAST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static broadCastNewTaskStart(Lcom/tudou/upload/UploadInfo;)V
    .locals 3
    .param p0, "info"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v2, "UPLOAD_START_BROADCAST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v1, "mBundle":Landroid/os/Bundle;
    const-class v2, Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 360
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 361
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method public static broadCastTaskFinish(Lcom/tudou/upload/UploadInfo;)V
    .locals 3
    .param p0, "info"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    const-string v2, "UPLOAD_TASK_SUCCESS_BROADCAST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 377
    .local v1, "mBundle":Landroid/os/Bundle;
    const-class v2, Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 379
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    return-void
.end method

.method public static delete(Lcom/tudou/upload/UploadInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tudou/upload/UploadDB;->delete(Ljava/lang/String;)Z

    move-result v0

    .line 179
    .local v0, "success":Z
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tudou/upload/UploadBase;->broadCastFinish(Z)V

    .line 180
    return v0
.end method

.method public static deleteByUser(Ljava/lang/String;)Z
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p0}, Lcom/tudou/upload/UploadDB;->deleteUserData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getAllTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Lcom/tudou/upload/UploadDB;->getListContainDelTask()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCount()I
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/tudou/upload/UploadDB;->getCount()I

    move-result v0

    return v0
.end method

.method public static getPausedUploadTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Lcom/tudou/upload/UploadDB;->getPausedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {}, Lcom/tudou/upload/UploadDB;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Lcom/tudou/upload/UploadDB;->getUnFinishedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Lcom/tudou/upload/UploadDB;->getUploadedList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadingTask()Lcom/tudou/upload/UploadInfo;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/tudou/upload/UploadBase;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    return-object v0
.end method

.method public static isUploading()Z
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/tudou/upload/UploadBase;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUploadingTask(Lcom/tudou/upload/UploadInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 278
    sget-object v0, Lcom/tudou/upload/UploadBase;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/upload/UploadBase;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static releaseDB()V
    .locals 0

    .prologue
    .line 191
    invoke-static {}, Lcom/tudou/upload/UploadDB;->closeDB()V

    .line 192
    return-void
.end method

.method public static startUploadTask(JLcom/tudou/upload/UploadInfo;)Z
    .locals 8
    .param p0, "session"    # J
    .param p2, "info"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 419
    const-string v5, "UPLOAD_TAG"

    const-string/jumbo v6, "startUploadTask===begin"

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-object v5, Lcom/tudou/upload/UploadBase;->mUploadThread:Ljava/lang/Thread;

    if-eqz v5, :cond_0

    .line 421
    sget-object v5, Lcom/tudou/upload/UploadBase;->mUploadThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 422
    const/4 v5, 0x0

    sput-object v5, Lcom/tudou/upload/UploadBase;->mUploadThread:Ljava/lang/Thread;

    .line 424
    :cond_0
    sget-boolean v5, Lcom/tudou/upload/UploadBase;->CHECKING:Z

    if-eqz v5, :cond_1

    .line 500
    :goto_0
    return v3

    .line 427
    :cond_1
    sput-boolean v4, Lcom/tudou/upload/UploadBase;->CHECKING:Z

    .line 429
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_2

    .line 430
    sput-boolean v3, Lcom/tudou/upload/UploadBase;->CHECKING:Z

    goto :goto_0

    .line 439
    :cond_2
    sget-object v5, Lcom/tudou/upload/UploadBase;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    if-eqz v5, :cond_3

    .line 440
    sput-boolean v3, Lcom/tudou/upload/UploadBase;->CHECKING:Z

    goto :goto_0

    .line 445
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v5

    if-eq v5, v4, :cond_4

    invoke-virtual {p2}, Lcom/tudou/upload/UploadInfo;->canAutoUpload()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 446
    const-string v5, "TAG_UPLOAD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startUploadTask===error==add"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v5, Lcom/tudou/upload/UploadBase;->SESSION_ERROR_TASKS:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_4
    invoke-static {}, Lcom/tudou/upload/UploadBase;->getUploadTasks()Ljava/util/List;

    move-result-object v2

    .line 453
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 454
    :cond_5
    sput-boolean v3, Lcom/tudou/upload/UploadBase;->CHECKING:Z

    .line 455
    invoke-static {v3}, Lcom/tudou/upload/UploadBase;->broadCastFinish(Z)V

    .line 456
    const-string v4, "UPLOAD_TAG"

    const-string/jumbo v5, "startUploadTask===no task"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_9

    .line 461
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    .line 462
    .local v1, "info_":Lcom/tudou/upload/UploadInfo;
    sget-object v5, Lcom/tudou/upload/UploadBase;->SESSION_ERROR_TASKS:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->canAutoUpload()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 467
    const-string v5, "UPLOAD_TAG"

    const-string/jumbo v6, "startUploadTask===start To Upload"

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-object v5, Lcom/tudou/upload/UploadBase;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    if-eqz v5, :cond_7

    .line 469
    sput-boolean v3, Lcom/tudou/upload/UploadBase;->CHECKING:Z

    goto/16 :goto_0

    .line 472
    :cond_7
    new-instance v5, Lcom/tudou/upload/UploadProcessor;

    invoke-direct {v5, v1, p0, p1}, Lcom/tudou/upload/UploadProcessor;-><init>(Lcom/tudou/upload/UploadInfo;J)V

    invoke-virtual {v5}, Lcom/tudou/upload/UploadProcessor;->start()V

    .line 473
    sput-boolean v3, Lcom/tudou/upload/UploadBase;->CHECKING:Z

    move v3, v4

    .line 474
    goto/16 :goto_0

    .line 460
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 480
    .end local v1    # "info_":Lcom/tudou/upload/UploadInfo;
    :cond_9
    sget-object v4, Lcom/tudou/upload/UploadBase;->SESSION_ERROR_TASKS:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 481
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/tudou/upload/UploadBase$1;

    invoke-direct {v5}, Lcom/tudou/upload/UploadBase$1;-><init>()V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v4, Lcom/tudou/upload/UploadBase;->mUploadThread:Ljava/lang/Thread;

    .line 499
    sget-object v4, Lcom/tudou/upload/UploadBase;->mUploadThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method


# virtual methods
.method public closeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 1
    .param p1, "aRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 340
    sget-object v0, Lcom/tudou/upload/UploadApi;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 343
    const/4 p1, 0x0

    .line 345
    :cond_0
    return-void
.end method

.method protected abstract finish(Z)Z
.end method

.method protected declared-synchronized forceClosRequest()V
    .locals 4

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/tudou/upload/UploadApi;->requests:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tudou/upload/UploadApi;->requests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 322
    sget-object v3, Lcom/tudou/upload/UploadApi;->requests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 323
    sget-object v3, Lcom/tudou/upload/UploadApi;->requests:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 324
    .local v2, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {p0, v2}, Lcom/tudou/upload/UploadBase;->closeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 334
    .end local v1    # "i":I
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit p0

    return-void

    .line 321
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected forceCloseConn()V
    .locals 4

    .prologue
    .line 296
    :try_start_0
    sget-object v3, Lcom/tudou/upload/UploadApi;->conns:Ljava/util/List;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/tudou/upload/UploadApi;->conns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 297
    sget-object v3, Lcom/tudou/upload/UploadApi;->conns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 300
    .local v0, "conn":Ljava/net/HttpURLConnection;
    sget-object v3, Lcom/tudou/upload/UploadApi;->conns:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 301
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/util/ConcurrentModificationException;
    invoke-virtual {v1}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 309
    .end local v1    # "e":Ljava/util/ConcurrentModificationException;
    :cond_1
    return-void
.end method

.method protected abstract getUploadServerIp()Z
.end method

.method protected abstract initListener()V
.end method

.method protected abstract keepNetConnecting()V
.end method

.method protected abstract prepare()Z
.end method

.method protected abstract releaseNetLock()V
.end method

.method protected abstract updateAll(Ljava/lang/String;)V
.end method

.method protected abstract updateNotification(Ljava/lang/String;)V
.end method

.method protected abstract updateUI(Lcom/tudou/upload/UploadInfo;)V
.end method

.method protected abstract upload()V
.end method
