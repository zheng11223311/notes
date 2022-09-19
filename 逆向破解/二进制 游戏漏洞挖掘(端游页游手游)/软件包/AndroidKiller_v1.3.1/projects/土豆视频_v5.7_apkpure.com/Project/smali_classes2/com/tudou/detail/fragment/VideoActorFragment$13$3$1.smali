.class Lcom/tudou/detail/fragment/VideoActorFragment$13$3$1;
.super Ljava/lang/Object;
.source "VideoActorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoActorFragment$13$3;->onActorInfoGetted(Ljava/lang/String;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tudou/detail/fragment/VideoActorFragment$13$3;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoActorFragment$13$3;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$3$1;->this$2:Lcom/tudou/detail/fragment/VideoActorFragment$13$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$3$1;->this$2:Lcom/tudou/detail/fragment/VideoActorFragment$13$3;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v3}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    .line 508
    .local v1, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;

    .line 509
    .local v0, "holder":Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;
    iget-object v2, v0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->tudouUGC:Lcom/youku/vo/TudouUGC;

    .line 510
    .local v2, "ugc":Lcom/youku/vo/TudouUGC;
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$3$1;->this$2:Lcom/tudou/detail/fragment/VideoActorFragment$13$3;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v3, v3, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v3}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v2, Lcom/youku/vo/TudouUGC;->itemid:Ljava/lang/String;

    sget-object v5, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v6, v2, Lcom/youku/vo/TudouUGC;->title:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t1.detail_sdetail.acrecommend.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/youku/vo/TudouUGC;->itemid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 512
    invoke-static {}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "123\u89c6\u9891 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "t1.detail_sdetail.acrecommend.1_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/youku/vo/TudouUGC;->itemid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method
