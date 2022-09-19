.class Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$3;
.super Ljava/lang/Object;
.source "ClassifyFeatureInfoFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

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
    .line 178
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$700(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tudou/service/classify/Classify;->getClassifyFeature(Ljava/lang/String;Landroid/os/Handler;)V

    .line 179
    return-void
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
    .line 183
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    return-void
.end method
