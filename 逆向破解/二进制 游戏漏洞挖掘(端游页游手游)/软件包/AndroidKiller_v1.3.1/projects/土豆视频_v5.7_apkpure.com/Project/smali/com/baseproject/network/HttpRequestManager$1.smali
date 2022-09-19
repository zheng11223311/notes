.class Lcom/baseproject/network/HttpRequestManager$1;
.super Lcom/baseproject/network/YoukuAsyncTask;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseproject/network/HttpRequestManager;->request(Lcom/baseproject/network/HttpIntent;Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baseproject/network/YoukuAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baseproject/network/HttpRequestManager;

.field final synthetic val$callBack:Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;


# direct methods
.method constructor <init>(Lcom/baseproject/network/HttpRequestManager;Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    iput-object p2, p0, Lcom/baseproject/network/HttpRequestManager$1;->val$callBack:Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;

    invoke-direct {p0}, Lcom/baseproject/network/YoukuAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    iget-object v1, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    iget-object v1, v1, Lcom/baseproject/network/HttpRequestManager;->uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    invoke-static {v2}, Lcom/baseproject/network/HttpRequestManager;->access$000(Lcom/baseproject/network/HttpRequestManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    invoke-static {v3}, Lcom/baseproject/network/HttpRequestManager;->access$100(Lcom/baseproject/network/HttpRequestManager;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/baseproject/network/HttpRequestManager;->access$200(Lcom/baseproject/network/HttpRequestManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/baseproject/network/YoukuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    invoke-static {v0}, Lcom/baseproject/network/HttpRequestManager;->access$300(Lcom/baseproject/network/HttpRequestManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager$1;->val$callBack:Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager$1;->val$callBack:Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;

    iget-object v1, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    invoke-interface {v0, v1}, Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;->onSuccess(Lcom/baseproject/network/HttpRequestManager;)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    sget-object v1, Lcom/baseproject/network/HttpRequestManager$NetEvent;->netResponse:Lcom/baseproject/network/HttpRequestManager$NetEvent;

    iget-object v2, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    iget-object v2, v2, Lcom/baseproject/network/HttpRequestManager;->uri:Ljava/lang/String;

    const-string v3, "1"

    invoke-static {v0, v1, v2, v3}, Lcom/baseproject/network/HttpRequestManager;->access$400(Lcom/baseproject/network/HttpRequestManager;Lcom/baseproject/network/HttpRequestManager$NetEvent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager$1;->val$callBack:Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;

    if-eqz v0, :cond_2

    .line 252
    const-string v0, "HttpRequestManager.request(...).new YoukuAsyncTask() {...}#onPostExecute()"

    iget-object v1, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    iget-object v1, v1, Lcom/baseproject/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager$1;->val$callBack:Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;

    iget-object v1, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    iget-object v1, v1, Lcom/baseproject/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;->onFailed(Ljava/lang/String;)V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    iget-object v0, v0, Lcom/baseproject/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    const-string/jumbo v1, "\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u8bd5\uff0c\u5148\u53bb\u672c\u5730\u89c6\u9891\u770b\u770b\u5427\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    sget-object v1, Lcom/baseproject/network/HttpRequestManager$NetEvent;->netResponse:Lcom/baseproject/network/HttpRequestManager$NetEvent;

    iget-object v2, p0, Lcom/baseproject/network/HttpRequestManager$1;->this$0:Lcom/baseproject/network/HttpRequestManager;

    iget-object v2, v2, Lcom/baseproject/network/HttpRequestManager;->uri:Ljava/lang/String;

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/baseproject/network/HttpRequestManager;->access$400(Lcom/baseproject/network/HttpRequestManager;Lcom/baseproject/network/HttpRequestManager$NetEvent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
