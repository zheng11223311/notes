.class Lcom/tudou/detail/DetailModel$16;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->updateVideoRecordAsyn(Ljava/lang/String;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$l:Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;)V
    .locals 0

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$16;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$16;->val$l:Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1875
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoRecordAsyn onFailed failReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$16;->val$l:Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$16;->val$l:Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;->onUpdateVideoRecordComplete(ZLjava/lang/String;)V

    .line 1879
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1866
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 1867
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVideoRecordAsyn onSuccess str = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$16;->val$l:Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;

    if-eqz v1, :cond_0

    .line 1869
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$16;->val$l:Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;->onUpdateVideoRecordComplete(ZLjava/lang/String;)V

    .line 1871
    :cond_0
    return-void
.end method
