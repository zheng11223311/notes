.class Lcom/youku/gamecenter/services/GetResponseService$1;
.super Landroid/os/Handler;
.source "GetResponseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/services/GetResponseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/services/GetResponseService;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/services/GetResponseService;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/youku/gamecenter/services/GetResponseService$1;->this$0:Lcom/youku/gamecenter/services/GetResponseService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/gamecenter/data/ResponseInfoResult;

    .line 75
    .local v0, "info":Lcom/youku/gamecenter/data/ResponseInfoResult;
    const-string v2, "PlayFlow"

    const-string v3, "------\u6e38\u620f\u4e2d\u5fc3\uff0c\u8bf7\u6c42\u6570\u636e\u8fd4\u56de\u7ed3\u679c\u6210\u529f-----"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/youku/gamecenter/services/GetResponseService$1;->this$0:Lcom/youku/gamecenter/services/GetResponseService;

    invoke-virtual {v0}, Lcom/youku/gamecenter/data/ResponseInfoResult;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseResponse(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/youku/gamecenter/services/GetResponseService$1;->this$0:Lcom/youku/gamecenter/services/GetResponseService;

    invoke-virtual {v2}, Lcom/youku/gamecenter/services/GetResponseService;->onSuccess()V

    goto :goto_0

    .line 81
    .end local v0    # "info":Lcom/youku/gamecenter/data/ResponseInfoResult;
    :pswitch_1
    const-string v2, "PlayFlow"

    const-string v3, "------\u6e38\u620f\u4e2d\u5fc3\uff0c\u8bf7\u6c42\u6570\u636e\u8fd4\u56de\u7ed3\u679c\u5931\u8d25-----"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/youku/gamecenter/data/ResponseInfoResult;

    .line 83
    .local v1, "info2":Lcom/youku/gamecenter/data/ResponseInfoResult;
    const-string v2, "PlayFlow"

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/ResponseInfoResult;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/youku/gamecenter/services/GetResponseService$1;->this$0:Lcom/youku/gamecenter/services/GetResponseService;

    iget-object v3, p0, Lcom/youku/gamecenter/services/GetResponseService$1;->this$0:Lcom/youku/gamecenter/services/GetResponseService;

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/ResponseInfoResult;->getResponseString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseResponseError(Ljava/lang/String;)Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/gamecenter/services/GetResponseService;->onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
