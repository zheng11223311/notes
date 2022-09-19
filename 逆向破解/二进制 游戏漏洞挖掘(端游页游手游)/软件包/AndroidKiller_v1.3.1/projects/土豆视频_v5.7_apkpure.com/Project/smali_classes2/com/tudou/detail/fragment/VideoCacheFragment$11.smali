.class Lcom/tudou/detail/fragment/VideoCacheFragment$11;
.super Ljava/lang/Object;
.source "VideoCacheFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCacheFragment;->getPlaylist(Lcom/youku/vo/NewVideoDetail;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

.field final synthetic val$type:Lcom/tudou/android/Youku$VideoType;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCacheFragment;Lcom/tudou/android/Youku$VideoType;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$11;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$11;->val$type:Lcom/tudou/android/Youku$VideoType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 721
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFailed failReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$11;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    iget-object v1, v1, Lcom/tudou/detail/fragment/VideoCacheFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 723
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 724
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 707
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSuccess result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$11;->val$type:Lcom/tudou/android/Youku$VideoType;

    invoke-static {v1, v3}, Lcom/tudou/detail/vo/VideoList;->createFromJson(Ljava/lang/String;Lcom/tudou/android/Youku$VideoType;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v2

    .line 710
    .local v2, "videoList":Lcom/tudou/detail/vo/VideoList;
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$11;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoCacheFragment;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 711
    .local v0, "msg":Landroid/os/Message;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 712
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 716
    :goto_0
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$11;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoCacheFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 717
    return-void

    .line 714
    :cond_0
    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
