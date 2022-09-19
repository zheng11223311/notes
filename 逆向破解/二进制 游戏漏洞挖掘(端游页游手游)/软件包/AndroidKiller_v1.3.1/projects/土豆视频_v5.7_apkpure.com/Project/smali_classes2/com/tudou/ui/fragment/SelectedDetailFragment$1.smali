.class Lcom/tudou/ui/fragment/SelectedDetailFragment$1;
.super Ljava/lang/Object;
.source "SelectedDetailFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SelectedDetailFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

.field final synthetic val$httpRequest:Lcom/youku/network/IHttpRequest;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SelectedDetailFragment;Lcom/youku/network/IHttpRequest;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$1;->val$httpRequest:Lcom/youku/network/IHttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$700(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 232
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 218
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$1;->val$httpRequest:Lcom/youku/network/IHttpRequest;

    invoke-interface {v2}, Lcom/youku/network/IHttpRequest;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "dataString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$500(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tudou/android/TudouApi;->saveUrlCacheToLocal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v2, v0}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$600(Lcom/tudou/ui/fragment/SelectedDetailFragment;Ljava/lang/String;)V

    .line 227
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
