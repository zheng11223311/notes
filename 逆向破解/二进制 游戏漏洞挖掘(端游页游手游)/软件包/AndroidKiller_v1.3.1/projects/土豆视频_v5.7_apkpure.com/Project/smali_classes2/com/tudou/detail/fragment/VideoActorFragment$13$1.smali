.class Lcom/tudou/detail/fragment/VideoActorFragment$13$1;
.super Ljava/lang/Object;
.source "VideoActorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$tTitles:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoActorFragment$13;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->val$tTitles:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "tabPosition"    # I
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
    .line 449
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v1, v0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    new-instance v2, Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;

    move-result-object v4

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->val$tTitles:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/tudou/detail/vo/ActorInfo;->getVideosByCat(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tudou/detail/adapter/ActorCatVideosAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1302(Lcom/tudou/detail/fragment/VideoActorFragment;Lcom/tudou/detail/adapter/ActorCatVideosAdapter;)Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    .line 450
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$300(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v1, v1, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1300(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 451
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1300(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    move-result-object v0

    new-instance v1, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;

    invoke-direct {v1, p0, p3}, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment$13$1;I)V

    invoke-virtual {v0, v1}, Lcom/tudou/detail/adapter/ActorCatVideosAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 471
    return-void
.end method
