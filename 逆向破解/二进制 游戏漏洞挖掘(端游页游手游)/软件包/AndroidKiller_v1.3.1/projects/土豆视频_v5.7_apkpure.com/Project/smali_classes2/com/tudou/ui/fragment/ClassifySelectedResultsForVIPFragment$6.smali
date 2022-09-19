.class Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$6;
.super Ljava/lang/Object;
.source "ClassifySelectedResultsForVIPFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->getMyVideoList(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$6;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$6;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$6;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7532

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 474
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 459
    new-instance v1, Lcom/youku/vo/MyVideoResult;

    invoke-direct {v1}, Lcom/youku/vo/MyVideoResult;-><init>()V

    .line 460
    .local v1, "results":Lcom/youku/vo/MyVideoResult;
    invoke-virtual {p1, v1}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "results":Lcom/youku/vo/MyVideoResult;
    check-cast v1, Lcom/youku/vo/MyVideoResult;

    .line 461
    .restart local v1    # "results":Lcom/youku/vo/MyVideoResult;
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$6;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 462
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 463
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x7531

    iput v2, v0, Landroid/os/Message;->what:I

    .line 464
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 465
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$6;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 467
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
