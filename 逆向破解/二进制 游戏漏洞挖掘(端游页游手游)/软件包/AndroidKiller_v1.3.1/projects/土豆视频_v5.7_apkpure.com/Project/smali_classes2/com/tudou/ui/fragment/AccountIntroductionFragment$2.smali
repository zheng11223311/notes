.class Lcom/tudou/ui/fragment/AccountIntroductionFragment$2;
.super Ljava/lang/Object;
.source "AccountIntroductionFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AccountIntroductionFragment;->updateUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$2;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$2;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$500(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 297
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 299
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$2;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$700(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 286
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$2;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$500(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "dataString":Ljava/lang/String;
    const-class v2, Lcom/youku/vo/UserIntroductionData;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UserIntroductionData;

    .line 289
    .local v1, "userIntroductionData":Lcom/youku/vo/UserIntroductionData;
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$2;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v2, v1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$600(Lcom/tudou/ui/fragment/AccountIntroductionFragment;Lcom/youku/vo/UserIntroductionData;)V

    .line 291
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v1    # "userIntroductionData":Lcom/youku/vo/UserIntroductionData;
    :cond_0
    return-void
.end method
