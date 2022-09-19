.class Lcom/tudou/ui/fragment/UploadingFragment$6;
.super Ljava/lang/Object;
.source "UploadingFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/UploadingFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadingFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadingFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
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
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    const/4 v2, 0x0

    .line 775
    const-string v0, "\u6211\u7684\u4e0a\u4f20\u4e0b\u62c9\u5237\u65b0"

    const-string v1, "\u6211\u7684\u4e0a\u4f20\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/UploadManagerActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1600(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 779
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1700(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 780
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 781
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 797
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1000(Lcom/tudou/ui/fragment/UploadingFragment;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 786
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1900(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 791
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    new-instance v1, Lcom/youku/vo/Page;

    invoke-direct {v1}, Lcom/youku/vo/Page;-><init>()V

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2002(Lcom/tudou/ui/fragment/UploadingFragment;Lcom/youku/vo/Page;)Lcom/youku/vo/Page;

    .line 793
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0, v2}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1802(Lcom/tudou/ui/fragment/UploadingFragment;Z)Z

    .line 794
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0, v2}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1502(Lcom/tudou/ui/fragment/UploadingFragment;Z)Z

    .line 795
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2100(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 796
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2200(Lcom/tudou/ui/fragment/UploadingFragment;)V

    goto :goto_0
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 1
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
    .line 801
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2300(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 802
    return-void
.end method
