.class Lcom/tudou/ui/fragment/HomeFragment$7;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$7;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    const-string v0, "\u9996\u9875\u4e0b\u62c9\u5237\u65b0"

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/HomePageActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$7;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$7;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$7;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HomeFragment;->access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/HomeFragment;->access$200(Lcom/tudou/ui/fragment/HomeFragment;Landroid/os/Handler;)V

    .line 555
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$302(Z)Z

    .line 556
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$7;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$7;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HomeFragment;->access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/HomeFragment;->access$400(Lcom/tudou/ui/fragment/HomeFragment;Landroid/os/Handler;)V

    .line 558
    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    if-nez v0, :cond_0

    .line 559
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tudou/service/classify/Classify;->getChannalList(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    return-void
.end method
