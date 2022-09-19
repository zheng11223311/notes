.class Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig$1;
.super Ljava/lang/Object;
.source "GiftConfig.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->prepareShowResourcesDownload(Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    .prologue
    .line 289
    const-string v0, "GiftConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Completion[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 285
    return-void
.end method

.method public onProgress(Ljava/lang/String;F)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 280
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 270
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 275
    return-void
.end method
