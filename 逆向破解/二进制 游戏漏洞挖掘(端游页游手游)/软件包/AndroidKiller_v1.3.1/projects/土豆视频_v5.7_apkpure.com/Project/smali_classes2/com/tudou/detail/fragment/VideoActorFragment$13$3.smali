.class Lcom/tudou/detail/fragment/VideoActorFragment$13$3;
.super Ljava/lang/Object;
.source "VideoActorFragment.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoActorFragment$13;->onActorInfoGetted(ILorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoActorFragment$13;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActorInfoGetted(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p1, "actor"    # Ljava/lang/String;
    .param p3, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouUGC;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TudouUGC;>;"
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1500(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    new-instance v1, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v2, v2, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v2}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1602(Lcom/tudou/detail/fragment/VideoActorFragment;Lcom/tudou/detail/adapter/ActorCorVideosAdapter;)Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

    .line 504
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1600(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

    move-result-object v0

    new-instance v1, Lcom/tudou/detail/fragment/VideoActorFragment$13$3$1;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$13$3$1;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment$13$3;)V

    invoke-virtual {v0, v1}, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 515
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$400(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v1, v1, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1600(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1500(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
