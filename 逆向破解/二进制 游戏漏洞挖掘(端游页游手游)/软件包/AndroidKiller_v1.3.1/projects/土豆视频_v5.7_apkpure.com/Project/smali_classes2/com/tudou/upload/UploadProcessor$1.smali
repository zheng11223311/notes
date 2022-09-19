.class Lcom/tudou/upload/UploadProcessor$1;
.super Ljava/lang/Object;
.source "UploadProcessor.java"

# interfaces
.implements Lcom/tudou/upload/UploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/upload/UploadProcessor;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/upload/UploadProcessor;


# direct methods
.method constructor <init>(Lcom/tudou/upload/UploadProcessor;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 349
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====\u5220\u9664\u5f53\u524d\u89c6\u9891"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadProcessor;->forceClosRequest()V

    .line 351
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadProcessor;->releaseNetLock()V

    .line 353
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v0, v0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setDesc(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v0, v0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/upload/UploadDB;->delete(Ljava/lang/String;)Z

    .line 355
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v1, v1, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadProcessor;->updateUI(Lcom/tudou/upload/UploadInfo;)V

    .line 356
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/upload/UploadBase;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    .line 357
    const-string v0, "TAG_TUDOU"

    const-string v1, "onCancel()====\u7eed\u4f20"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-wide v0, v0, Lcom/tudou/upload/UploadProcessor;->session:J

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v0, v1, v2}, Lcom/tudou/upload/UploadBase;->startUploadTask(JLcom/tudou/upload/UploadInfo;)Z

    .line 359
    return-void
.end method

.method public onException()V
    .locals 3

    .prologue
    .line 317
    const-string v0, "\u4e0a\u4f20\u9875\u89c6\u9891\u4e0a\u4f20\u5931\u8d25"

    const-string v1, "\u4e0a\u4f20\u9875\u89c6\u9891\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/UploadManagerActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====\u5f53\u524d\u89c6\u9891\u53d1\u751f\u5f02\u5e38"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadProcessor;->forceClosRequest()V

    .line 321
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadProcessor;->releaseNetLock()V

    .line 322
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-static {v1}, Lcom/tudou/upload/UploadProcessor;->access$100(Lcom/tudou/upload/UploadProcessor;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0466

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadProcessor;->updateAll(Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/upload/UploadBase;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    .line 324
    const-string v0, "TAG_TUDOU"

    const-string v1, "onException()====\u7eed\u4f20"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-wide v0, v0, Lcom/tudou/upload/UploadProcessor;->session:J

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v0, v1, v2}, Lcom/tudou/upload/UploadBase;->startUploadTask(JLcom/tudou/upload/UploadInfo;)Z

    .line 326
    return-void
.end method

.method public onFinish()V
    .locals 3

    .prologue
    .line 332
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====\u5f53\u524d\u89c6\u9891\u4e0a\u4f20\u5b8c\u6210"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadProcessor;->releaseNetLock()V

    .line 334
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    const-string v1, "\u4e0a\u4f20\u5b8c\u6bd5"

    invoke-static {v0, v1}, Lcom/tudou/upload/UploadProcessor;->access$200(Lcom/tudou/upload/UploadProcessor;Ljava/lang/String;)V

    .line 335
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u4f20\u5b8c\u6210===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const v0, 0x7f0d0461

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 339
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-static {v0}, Lcom/tudou/upload/UploadProcessor;->access$000(Lcom/tudou/upload/UploadProcessor;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x1ae8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 340
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/upload/UploadBase;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    .line 341
    const-string v0, "TAG_TUDOU"

    const-string v1, "onFinish()====\u7eed\u4f20"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-wide v0, v0, Lcom/tudou/upload/UploadProcessor;->session:J

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v0, v1, v2}, Lcom/tudou/upload/UploadBase;->startUploadTask(JLcom/tudou/upload/UploadInfo;)Z

    .line 343
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 292
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====\u6682\u505c\u5f53\u524d\u89c6\u9891"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadProcessor;->forceClosRequest()V

    .line 294
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadProcessor;->releaseNetLock()V

    .line 296
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-static {v1}, Lcom/tudou/upload/UploadProcessor;->access$100(Lcom/tudou/upload/UploadProcessor;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0460

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadProcessor;->updateAll(Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/upload/UploadBase;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    .line 299
    const-string v0, "TAG_TUDOU"

    const-string v1, "onPause()====\u7eed\u4f20"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-wide v0, v0, Lcom/tudou/upload/UploadProcessor;->session:J

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v0, v1, v2}, Lcom/tudou/upload/UploadBase;->startUploadTask(JLcom/tudou/upload/UploadInfo;)Z

    .line 302
    return-void
.end method

.method public onProgressChange()V
    .locals 4

    .prologue
    .line 364
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v0, v0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 365
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u4f20\u8fdb\u5ea6100%===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-static {v2}, Lcom/tudou/upload/UploadProcessor;->access$100(Lcom/tudou/upload/UploadProcessor;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d046a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadProcessor;->updateAll(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 276
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====\u5f00\u59cb\u4e0a\u4f20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-static {v0}, Lcom/tudou/upload/UploadProcessor;->access$000(Lcom/tudou/upload/UploadProcessor;)Landroid/app/NotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-static {v0}, Lcom/tudou/upload/UploadProcessor;->access$100(Lcom/tudou/upload/UploadProcessor;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Lcom/tudou/upload/UploadProcessor;->access$002(Lcom/tudou/upload/UploadProcessor;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-static {v0}, Lcom/tudou/upload/UploadProcessor;->access$000(Lcom/tudou/upload/UploadProcessor;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x1ae8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 282
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-static {v2}, Lcom/tudou/upload/UploadProcessor;->access$100(Lcom/tudou/upload/UploadProcessor;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d046a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadProcessor;->updateAll(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public onUploadSpeedChange()V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-static {v2}, Lcom/tudou/upload/UploadProcessor;->access$100(Lcom/tudou/upload/UploadProcessor;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d046a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadProcessor;->updateNotification(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v1, v1, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadProcessor;->updateUI(Lcom/tudou/upload/UploadInfo;)V

    .line 378
    return-void
.end method

.method public onWait()V
    .locals 3

    .prologue
    .line 307
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v2, v2, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====\u5f53\u524d\u89c6\u9891\u7b49\u5f85"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadProcessor;->forceClosRequest()V

    .line 309
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadProcessor;->releaseNetLock()V

    .line 311
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor$1;->this$0:Lcom/tudou/upload/UploadProcessor;

    invoke-static {v1}, Lcom/tudou/upload/UploadProcessor;->access$100(Lcom/tudou/upload/UploadProcessor;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0466

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadProcessor;->updateAll(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/upload/UploadBase;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    .line 313
    return-void
.end method
