.class Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;
.super Ljava/lang/Object;
.source "VideoActorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->this$3:Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 458
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;

    .line 459
    .local v1, "holder":Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->this$3:Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;->this$2:Lcom/tudou/detail/fragment/VideoActorFragment$13$1;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->this$3:Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;->this$2:Lcom/tudou/detail/fragment/VideoActorFragment$13$1;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v4}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;->video:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/detail/fragment/VideoActorFragment;->playLineOrApp(Landroid/app/Activity;Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;)V

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 462
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->this$3:Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;->this$2:Lcom/tudou/detail/fragment/VideoActorFragment$13$1;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->val$tTitles:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->this$3:Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;

    iget v5, v5, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;->val$tabPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->this$3:Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;->this$2:Lcom/tudou/detail/fragment/VideoActorFragment$13$1;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v3}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/activity/DetailActivity;

    .line 464
    .local v2, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t1.detail_sdetail.acvideoclick.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;->video:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;

    iget-object v4, v4, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->iid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 465
    invoke-static {}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1400()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u660e\u661f\u89c6\u9891 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "t1.detail_sdetail.acvideoclick.1_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;->video:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;

    iget-object v5, v5, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->iid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->val$position:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " type = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->this$3:Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;->this$2:Lcom/tudou/detail/fragment/VideoActorFragment$13$1;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->val$tTitles:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;->this$3:Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;

    iget v6, v6, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;->val$tabPosition:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    return-void
.end method
