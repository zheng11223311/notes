.class Lcom/tudou/ui/fragment/NewPodcastFragment$8;
.super Ljava/lang/Object;
.source "NewPodcastFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetUserInfo(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

.field final synthetic val$state:I

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/NewPodcastFragment;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->val$uid:Ljava/lang/String;

    iput p3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfa3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 812
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 764
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "dataString":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-virtual {v5, v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setUserInfo(Ljava/lang/String;)V

    .line 767
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v4, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->val$uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v3, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v5

    new-instance v6, Lcom/tudou/ui/fragment/NewPodcastFragment$8$1;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$8$1;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment$8;)V

    invoke-interface {v5, v4, v3, v6}, Lcom/tudou/service/attention/IAttention;->isAttention(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    .line 792
    iget-object v5, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 793
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 794
    .local v2, "msg":Landroid/os/Message;
    const/16 v5, 0xfa2

    iput v5, v2, Landroid/os/Message;->what:I

    .line 795
    iget v5, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->val$state:I

    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 797
    iget-object v5, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v1

    .line 800
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 801
    iget-object v5, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 802
    iget-object v5, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xfa3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
