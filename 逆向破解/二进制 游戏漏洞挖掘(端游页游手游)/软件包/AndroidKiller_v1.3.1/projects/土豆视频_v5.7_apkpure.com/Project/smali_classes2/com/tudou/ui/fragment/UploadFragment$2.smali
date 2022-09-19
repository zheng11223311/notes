.class Lcom/tudou/ui/fragment/UploadFragment$2;
.super Ljava/lang/Object;
.source "UploadFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadFragment;->getCategoryList()V
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
    .line 156
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFragment$2;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$2;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFragment;->access$200(Lcom/tudou/ui/fragment/UploadFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 176
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$2;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFragment;->access$200(Lcom/tudou/ui/fragment/UploadFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "str":Ljava/lang/String;
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category_list====data=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadFragment$2;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/UploadFragment;->access$200(Lcom/tudou/ui/fragment/UploadFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadFragment$2;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/UploadFragment;->access$200(Lcom/tudou/ui/fragment/UploadFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadFragment$2;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/UploadFragment;->access$200(Lcom/tudou/ui/fragment/UploadFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
