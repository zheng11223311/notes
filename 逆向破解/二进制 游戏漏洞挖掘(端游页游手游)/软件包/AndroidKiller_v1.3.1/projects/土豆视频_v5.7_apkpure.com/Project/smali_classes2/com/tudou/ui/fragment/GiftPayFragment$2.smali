.class Lcom/tudou/ui/fragment/GiftPayFragment$2;
.super Ljava/lang/Object;
.source "GiftPayFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/GiftPayFragment;->getOrderInfo(Ljava/lang/String;Lcom/youku/vo/GiftBean$Data$PresentItem;Lcom/youku/vo/GiftBean$Data;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/GiftPayFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/GiftPayFragment;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/tudou/ui/fragment/GiftPayFragment$2;->this$0:Lcom/tudou/ui/fragment/GiftPayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 436
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment$2;->this$0:Lcom/tudou/ui/fragment/GiftPayFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$600(Lcom/tudou/ui/fragment/GiftPayFragment;)Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 437
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v7, 0x2

    .line 411
    :try_start_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 412
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 413
    .local v4, "str":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 414
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment$2;->this$0:Lcom/tudou/ui/fragment/GiftPayFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$600(Lcom/tudou/ui/fragment/GiftPayFragment;)Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 431
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 416
    .restart local v4    # "str":Ljava/lang/String;
    :cond_0
    const-class v5, Lcom/youku/vo/GiftOrderBean;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/GiftOrderBean;

    .line 417
    .local v2, "giftOrderBean":Lcom/youku/vo/GiftOrderBean;
    iget-object v5, v2, Lcom/youku/vo/GiftOrderBean;->msg:Lcom/youku/vo/GiftOrderBean$Data;

    iget-object v0, v5, Lcom/youku/vo/GiftOrderBean$Data;->channelResponse:Ljava/lang/String;

    .line 418
    .local v0, "channelResponse":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 419
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment$2;->this$0:Lcom/tudou/ui/fragment/GiftPayFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$600(Lcom/tudou/ui/fragment/GiftPayFragment;)Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    .end local v0    # "channelResponse":Ljava/lang/String;
    .end local v2    # "giftOrderBean":Lcom/youku/vo/GiftOrderBean;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment$2;->this$0:Lcom/tudou/ui/fragment/GiftPayFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$600(Lcom/tudou/ui/fragment/GiftPayFragment;)Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 429
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 421
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "channelResponse":Ljava/lang/String;
    .restart local v2    # "giftOrderBean":Lcom/youku/vo/GiftOrderBean;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 422
    .local v3, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->what:I

    .line 423
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 424
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment$2;->this$0:Lcom/tudou/ui/fragment/GiftPayFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$600(Lcom/tudou/ui/fragment/GiftPayFragment;)Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
