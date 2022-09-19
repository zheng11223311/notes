.class Lcom/tudou/ui/fragment/SearchManager$2;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchManager;->excueGetUgc(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchManager;

.field final synthetic val$ob:Ljava/lang/String;

.field final synthetic val$pg:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchManager;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager$2;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iput p2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->val$pg:I

    iput-object p3, p0, Lcom/tudou/ui/fragment/SearchManager$2;->val$ob:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 408
    const-string v2, "search_3.7"

    const-string v3, "excueGetUgc---onFailed"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchManager;->access$400(Lcom/tudou/ui/fragment/SearchManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 410
    const-string v1, ""

    .line 411
    .local v1, "sortStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->val$ob:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->val$ob:Ljava/lang/String;

    const-string v3, "total_pv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    const-string v1, "\u6700\u706b"

    .line 419
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u641c\u7d22\u9875"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u89c6\u9891\u5217\u8868\u51fa\u9519"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u641c\u7d22\u9875-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u89c6\u9891\u5217\u8868\u52a0\u8f7d\u51fa\u9519"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 425
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 426
    iget v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->val$pg:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 427
    const/16 v2, 0x378

    iput v2, v0, Landroid/os/Message;->what:I

    .line 428
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchManager;->access$300(Lcom/tudou/ui/fragment/SearchManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchManager;->access$300(Lcom/tudou/ui/fragment/SearchManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    :cond_0
    return-void

    .line 413
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->val$ob:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->val$ob:Ljava/lang/String;

    const-string v3, "createtime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    const-string v1, "\u6700\u65b0"

    goto :goto_0

    .line 417
    :cond_2
    const-string v1, "\u7efc\u5408"

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 393
    const-string v2, "search_3.7"

    const-string v3, "excueGetUgc---onSuccess"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$2;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    const-class v2, Lcom/youku/vo/SearchUgcDao;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchUgcDao;

    invoke-static {v3, v2}, Lcom/tudou/ui/fragment/SearchManager;->access$102(Lcom/tudou/ui/fragment/SearchManager;Lcom/youku/vo/SearchUgcDao;)Lcom/youku/vo/SearchUgcDao;

    .line 396
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$2;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-static {v3}, Lcom/tudou/ui/fragment/SearchManager;->access$100(Lcom/tudou/ui/fragment/SearchManager;)Lcom/youku/vo/SearchUgcDao;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao;->wirelessSearchResult:Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;

    iget v3, v3, Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;->total:I

    iput v3, v2, Lcom/tudou/ui/fragment/SearchManager;->ugcTotal:I

    .line 397
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchManager;->access$200(Lcom/tudou/ui/fragment/SearchManager;)V

    .line 398
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 399
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 400
    iget v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->val$pg:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 401
    const/16 v2, 0x378

    iput v2, v0, Landroid/os/Message;->what:I

    .line 402
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchManager;->access$300(Lcom/tudou/ui/fragment/SearchManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$2;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchManager;->access$300(Lcom/tudou/ui/fragment/SearchManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    :cond_0
    return-void
.end method
