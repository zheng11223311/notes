.class Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;
.super Ljava/lang/Object;
.source "VideoAdvGameDownloadHelper.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetSimpleGameInfoService$OnSimpleGameInfoServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->loadAdvGameInfo(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

.field final synthetic val$gameId:Ljava/lang/String;

.field final synthetic val$isLastRequest:Z


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;->this$0:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    iput-boolean p2, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;->val$isLastRequest:Z

    iput-object p3, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;->val$gameId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;->this$0:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    iget-object v1, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;->val$gameId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->access$400(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;->this$0:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->access$302(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;Lcom/youku/gamecenter/data/GameInfo;)Lcom/youku/gamecenter/data/GameInfo;

    .line 84
    const-string v0, "VideoAdGameDownloadHelper---->"

    const-string v1, "loadAdvGameInfo ---> get gameInfo failed!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 4
    .param p1, "data"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 70
    const-string v1, "VideoAdGameDownloadHelper---->"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAdvGameInfo ---> isLastRequest="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;->val$isLastRequest:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " get gameInfo success, gameId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " packageName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " downloadUrl = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;->val$isLastRequest:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "VideoAdGameDownloadHelper---->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start download game, gameId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " downloadUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;->this$0:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->access$000(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "48"

    iget-object v2, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;->this$0:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    invoke-static {v2}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->access$100(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;->this$0:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    invoke-static {v3}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->access$200(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleAdvDialogOKAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;->this$0:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    invoke-static {v0, p1}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->access$302(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;Lcom/youku/gamecenter/data/GameInfo;)Lcom/youku/gamecenter/data/GameInfo;

    .line 76
    return-void

    .line 70
    :cond_1
    const-string v0, "false"

    goto/16 :goto_0
.end method
