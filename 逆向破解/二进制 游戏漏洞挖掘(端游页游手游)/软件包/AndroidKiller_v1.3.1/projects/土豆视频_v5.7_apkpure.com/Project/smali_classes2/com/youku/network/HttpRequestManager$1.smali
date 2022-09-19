.class Lcom/youku/network/HttpRequestManager$1;
.super Lcom/tudou/android/YoukuAsyncTask;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/network/HttpRequestManager;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tudou/android/YoukuAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/network/HttpRequestManager;

.field final synthetic val$callBack:Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;

.field final synthetic val$connect_timeout_millis:I

.field final synthetic val$read_timout_millis:I


# direct methods
.method constructor <init>(Lcom/youku/network/HttpRequestManager;IILcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/youku/network/HttpRequestManager$1;->this$0:Lcom/youku/network/HttpRequestManager;

    iput p2, p0, Lcom/youku/network/HttpRequestManager$1;->val$connect_timeout_millis:I

    iput p3, p0, Lcom/youku/network/HttpRequestManager$1;->val$read_timout_millis:I

    iput-object p4, p0, Lcom/youku/network/HttpRequestManager$1;->val$callBack:Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;

    invoke-direct {p0}, Lcom/tudou/android/YoukuAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/youku/network/HttpRequestManager$1;->this$0:Lcom/youku/network/HttpRequestManager;

    iget-object v1, p0, Lcom/youku/network/HttpRequestManager$1;->this$0:Lcom/youku/network/HttpRequestManager;

    iget-object v1, v1, Lcom/youku/network/HttpRequestManager;->uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/network/HttpRequestManager$1;->this$0:Lcom/youku/network/HttpRequestManager;

    invoke-static {v2}, Lcom/youku/network/HttpRequestManager;->access$000(Lcom/youku/network/HttpRequestManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/network/HttpRequestManager$1;->this$0:Lcom/youku/network/HttpRequestManager;

    invoke-static {v3}, Lcom/youku/network/HttpRequestManager;->access$100(Lcom/youku/network/HttpRequestManager;)Z

    move-result v3

    iget v4, p0, Lcom/youku/network/HttpRequestManager$1;->val$connect_timeout_millis:I

    iget v5, p0, Lcom/youku/network/HttpRequestManager$1;->val$read_timout_millis:I

    invoke-virtual/range {v0 .. v5}, Lcom/youku/network/HttpRequestManager;->downloadUri(Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 627
    invoke-super {p0, p1}, Lcom/tudou/android/YoukuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 628
    iget-object v0, p0, Lcom/youku/network/HttpRequestManager$1;->this$0:Lcom/youku/network/HttpRequestManager;

    invoke-static {v0}, Lcom/youku/network/HttpRequestManager;->access$200(Lcom/youku/network/HttpRequestManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 631
    :pswitch_0
    iget-object v0, p0, Lcom/youku/network/HttpRequestManager$1;->val$callBack:Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/youku/network/HttpRequestManager$1;->val$callBack:Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;

    iget-object v1, p0, Lcom/youku/network/HttpRequestManager$1;->this$0:Lcom/youku/network/HttpRequestManager;

    invoke-interface {v0, v1}, Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;->onSuccess(Lcom/youku/network/HttpRequestManager;)V

    goto :goto_0

    .line 637
    :pswitch_1
    iget-object v0, p0, Lcom/youku/network/HttpRequestManager$1;->val$callBack:Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "HttpRequestManager.request(...).new YoukuAsyncTask() {...}#onPostExecute()"

    iget-object v1, p0, Lcom/youku/network/HttpRequestManager$1;->this$0:Lcom/youku/network/HttpRequestManager;

    iget-object v1, v1, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/youku/network/HttpRequestManager$1;->val$callBack:Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;

    iget-object v1, p0, Lcom/youku/network/HttpRequestManager$1;->this$0:Lcom/youku/network/HttpRequestManager;

    iget-object v1, v1, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
