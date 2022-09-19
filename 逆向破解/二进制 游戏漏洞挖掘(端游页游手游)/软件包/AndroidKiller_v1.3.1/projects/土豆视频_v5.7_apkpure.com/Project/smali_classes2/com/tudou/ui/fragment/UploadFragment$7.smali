.class Lcom/tudou/ui/fragment/UploadFragment$7;
.super Ljava/lang/Object;
.source "UploadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadFragment;->getVideoMd5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadFragment;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFragment$7;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 529
    sput-boolean v3, Lcom/tudou/upload/UploadUtil;->isStopCalMd5:Z

    .line 530
    invoke-static {}, Lcom/tudou/ui/fragment/UploadFragment;->access$700()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tudou/upload/UploadUtil;->getFileMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "videoMd5String":Ljava/lang/String;
    sput-boolean v3, Lcom/tudou/upload/UploadUtil;->isStopCalMd5:Z

    .line 533
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8ba1\u7b97\u7684md5\u662f====="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    sget-object v2, Lcom/tudou/upload/UploadUtil;->STOP:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    :cond_0
    const-string v2, "TAG_TUDOU"

    const-string v3, "\u505c\u6b62\u4e0a\u4f20===="

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadFragment$7;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/UploadFragment;->access$800(Lcom/tudou/ui/fragment/UploadFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 539
    .local v0, "mes":Landroid/os/Message;
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadFragment$7;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/UploadFragment;->access$800(Lcom/tudou/ui/fragment/UploadFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
