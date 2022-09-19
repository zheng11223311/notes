.class Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;
.super Ljava/lang/Object;
.source "VideoActorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tudou/detail/fragment/VideoActorFragment$13$1;

.field final synthetic val$tabPosition:I


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoActorFragment$13$1;I)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;->this$2:Lcom/tudou/detail/fragment/VideoActorFragment$13$1;

    iput p2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;->val$tabPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 454
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;->this$2:Lcom/tudou/detail/fragment/VideoActorFragment$13$1;

    iget-object v1, v1, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;->this$1:Lcom/tudou/detail/fragment/VideoActorFragment$13;

    iget-object v1, v1, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 455
    .local v0, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v0, :cond_0

    .line 456
    new-instance v1, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1$1;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment$13$1$1;Landroid/view/View;I)V

    invoke-virtual {v0, p2, v1}, Lcom/tudou/ui/activity/DetailActivity;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 469
    :cond_0
    return-void
.end method
