.class Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$3;
.super Ljava/lang/Object;
.source "ClassifyAllChannelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->eventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$700(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    .line 363
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 366
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 368
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1502(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;I)I

    .line 369
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$2300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/service/classify/Classify;->getSelectVideoList(Lcom/youku/vo/SkipInfo;ILandroid/os/Handler;)V

    .line 370
    return-void
.end method
