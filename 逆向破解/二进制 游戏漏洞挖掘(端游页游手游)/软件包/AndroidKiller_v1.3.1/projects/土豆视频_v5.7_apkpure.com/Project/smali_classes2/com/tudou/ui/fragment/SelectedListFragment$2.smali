.class Lcom/tudou/ui/fragment/SelectedListFragment$2;
.super Ljava/lang/Object;
.source "SelectedListFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SelectedListFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SelectedListFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SelectedListFragment;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/tudou/ui/fragment/SelectedListFragment$2;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedListFragment$2;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$500(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 237
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "dataString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedListFragment$2;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$300(Lcom/tudou/ui/fragment/SelectedListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tudou/android/TudouApi;->saveUrlCacheToLocal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedListFragment$2;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v2, v0}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$400(Lcom/tudou/ui/fragment/SelectedListFragment;Ljava/lang/String;)V

    .line 232
    return-void

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
