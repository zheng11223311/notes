.class Lcom/youku/player/network/HttpRequestManager$1;
.super Lcom/youku/player/network/YoukuAsyncTask;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/network/HttpRequestManager;->request(Lcom/youku/player/network/HttpIntent;Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youku/player/network/YoukuAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/network/HttpRequestManager;

.field final synthetic val$callBack:Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;


# direct methods
.method constructor <init>(Lcom/youku/player/network/HttpRequestManager;Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/youku/player/network/HttpRequestManager$1;->this$0:Lcom/youku/player/network/HttpRequestManager;

    iput-object p2, p0, Lcom/youku/player/network/HttpRequestManager$1;->val$callBack:Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;

    invoke-direct {p0}, Lcom/youku/player/network/YoukuAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/youku/player/network/HttpRequestManager$1;->this$0:Lcom/youku/player/network/HttpRequestManager;

    iget-object v1, p0, Lcom/youku/player/network/HttpRequestManager$1;->this$0:Lcom/youku/player/network/HttpRequestManager;

    iget-object v1, v1, Lcom/youku/player/network/HttpRequestManager;->uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/player/network/HttpRequestManager$1;->this$0:Lcom/youku/player/network/HttpRequestManager;

    invoke-static {v2}, Lcom/youku/player/network/HttpRequestManager;->access$000(Lcom/youku/player/network/HttpRequestManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/network/HttpRequestManager$1;->this$0:Lcom/youku/player/network/HttpRequestManager;

    invoke-static {v3}, Lcom/youku/player/network/HttpRequestManager;->access$100(Lcom/youku/player/network/HttpRequestManager;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/player/network/HttpRequestManager;->access$200(Lcom/youku/player/network/HttpRequestManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/youku/player/network/YoukuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/youku/player/network/HttpRequestManager$1;->this$0:Lcom/youku/player/network/HttpRequestManager;

    invoke-static {v0}, Lcom/youku/player/network/HttpRequestManager;->access$300(Lcom/youku/player/network/HttpRequestManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iget-object v0, p0, Lcom/youku/player/network/HttpRequestManager$1;->val$callBack:Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/youku/player/network/HttpRequestManager$1;->val$callBack:Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;

    iget-object v1, p0, Lcom/youku/player/network/HttpRequestManager$1;->this$0:Lcom/youku/player/network/HttpRequestManager;

    invoke-interface {v0, v1}, Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;->onSuccess(Lcom/youku/player/network/HttpRequestManager;)V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/youku/player/network/HttpRequestManager$1;->val$callBack:Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/youku/player/network/HttpRequestManager$1;->val$callBack:Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;

    iget-object v1, p0, Lcom/youku/player/network/HttpRequestManager$1;->this$0:Lcom/youku/player/network/HttpRequestManager;

    iget-object v1, v1, Lcom/youku/player/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
