.class Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$4;
.super Ljava/lang/Object;
.source "NewRecommendPosterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;


# direct methods
.method constructor <init>(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$4;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$4;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$100(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Lcom/youtu/apps/widget/YoutuGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuGallery;->cancelAutoSlide()V

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youtu/apps/R$id;->img_recommend_newrecommend_poster_left:I

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$4;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$100(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Lcom/youtu/apps/widget/YoutuGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuGallery;->scrollToLeft()V

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youtu/apps/R$id;->img_recommend_newrecommend_poster_right:I

    if-ne v0, v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$4;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$100(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Lcom/youtu/apps/widget/YoutuGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuGallery;->scrollToRight()V

    .line 226
    :cond_1
    return-void
.end method
