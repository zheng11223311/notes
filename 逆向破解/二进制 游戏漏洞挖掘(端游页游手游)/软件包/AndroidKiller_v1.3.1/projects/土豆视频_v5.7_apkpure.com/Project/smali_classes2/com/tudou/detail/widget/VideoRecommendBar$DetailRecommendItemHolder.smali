.class Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VideoRecommendBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/VideoRecommendBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DetailRecommendItemHolder"
.end annotation


# instance fields
.field public mDesc:Landroid/widget/TextView;

.field public mPreview:Landroid/widget/ImageView;

.field public mRoot:Landroid/view/View;

.field public mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/detail/widget/VideoRecommendBar;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/widget/VideoRecommendBar;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    .line 118
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 119
    iput-object p2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;->mRoot:Landroid/view/View;

    .line 120
    const v0, 0x7f0c0347

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;->mPreview:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f0c0348

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;->mTitle:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0c0349

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;->mDesc:Landroid/widget/TextView;

    .line 123
    return-void
.end method
