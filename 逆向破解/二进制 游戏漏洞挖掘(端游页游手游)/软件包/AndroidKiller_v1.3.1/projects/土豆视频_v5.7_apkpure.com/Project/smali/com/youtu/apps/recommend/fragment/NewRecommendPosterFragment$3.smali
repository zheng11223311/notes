.class Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$3;
.super Ljava/lang/Object;
.source "NewRecommendPosterFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->initPoster()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;I)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$3;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    iput p2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$3;->val$count:I

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
    .line 153
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v3, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$3;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v3}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$400(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$3;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v3}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$400(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$3;->val$count:I

    if-nez v3, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$3;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v3}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$100(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Lcom/youtu/apps/widget/YoutuGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youtu/apps/widget/YoutuGallery;->startAutoSlide()V

    .line 157
    iget-object v3, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$3;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v3}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$400(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$3;->val$count:I

    rem-int v4, p3, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;

    .line 159
    .local v0, "slider":Lcom/youtu/apps/recommend/vo/NewRecommendSlider;
    sget-object v3, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    iget-object v1, v3, Lcom/youtu/apps/recommend/vo/AllNewRecommend;->results:Ljava/util/List;

    .line 160
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommend;>;"
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->getApk_or_url()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$3;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v3}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$500(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Landroid/content/Context;

    move-result-object v4

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youtu/apps/recommend/vo/NewRecommend;

    iget-object v3, v3, Lcom/youtu/apps/recommend/vo/NewRecommend;->id:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->getApplication_index()I

    move-result v6

    invoke-static {v2, v4, v3, v5, v6}, Lcom/youtu/apps/recommend/util/Util;->systemDownLoad(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
