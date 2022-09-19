.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$DetailRecommendItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FullscreenRecomendView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;
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

.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;


# direct methods
.method public constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$DetailRecommendItemHolder;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    .line 259
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 260
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$DetailRecommendItemHolder;->mRoot:Landroid/view/View;

    .line 261
    const v0, 0x7f0c0412

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$DetailRecommendItemHolder;->mPreview:Landroid/widget/ImageView;

    .line 262
    const v0, 0x7f0c0413

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$DetailRecommendItemHolder;->mTitle:Landroid/widget/TextView;

    .line 263
    const v0, 0x7f0c0414

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$DetailRecommendItemHolder;->mDesc:Landroid/widget/TextView;

    .line 264
    return-void
.end method
