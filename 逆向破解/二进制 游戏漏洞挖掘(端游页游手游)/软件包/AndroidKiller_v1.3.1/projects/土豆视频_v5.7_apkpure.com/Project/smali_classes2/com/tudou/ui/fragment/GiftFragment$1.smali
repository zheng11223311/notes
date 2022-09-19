.class Lcom/tudou/ui/fragment/GiftFragment$1;
.super Ljava/lang/Object;
.source "GiftFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/GiftFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/GiftFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/GiftFragment;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/tudou/ui/fragment/GiftFragment$1;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {p1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment$1;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/GiftFragment;->access$400(Lcom/tudou/ui/fragment/GiftFragment;)Lcom/tudou/ui/fragment/GiftFragment$MyHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/GiftFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 180
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v7, 0x2

    .line 159
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "str":Ljava/lang/String;
    const-class v4, Lcom/youku/vo/GiftBean;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/GiftBean;

    .line 161
    .local v1, "giftBean":Lcom/youku/vo/GiftBean;
    const-string v4, "byron"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GiftFragment, getGiftData(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/youku/vo/GiftBean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftFragment$1;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/GiftFragment;->access$400(Lcom/tudou/ui/fragment/GiftFragment;)Lcom/tudou/ui/fragment/GiftFragment$MyHandler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/tudou/ui/fragment/GiftFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 174
    .end local v1    # "giftBean":Lcom/youku/vo/GiftBean;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 165
    .restart local v1    # "giftBean":Lcom/youku/vo/GiftBean;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 166
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 167
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftFragment$1;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/GiftFragment;->access$400(Lcom/tudou/ui/fragment/GiftFragment;)Lcom/tudou/ui/fragment/GiftFragment$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tudou/ui/fragment/GiftFragment$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v1    # "giftBean":Lcom/youku/vo/GiftBean;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftFragment$1;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/GiftFragment;->access$400(Lcom/tudou/ui/fragment/GiftFragment;)Lcom/tudou/ui/fragment/GiftFragment$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/tudou/ui/fragment/GiftFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
