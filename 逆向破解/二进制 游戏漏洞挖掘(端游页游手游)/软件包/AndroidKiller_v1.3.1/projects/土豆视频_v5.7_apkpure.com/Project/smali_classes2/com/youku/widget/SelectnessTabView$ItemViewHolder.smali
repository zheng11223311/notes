.class Lcom/youku/widget/SelectnessTabView$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SelectnessTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/SelectnessTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field mItemView:Landroid/view/View;

.field mLayout:Landroid/widget/LinearLayout;

.field mSubTitle:Landroid/widget/TextView;

.field mThumbnail:Landroid/widget/ImageView;

.field mTime:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field mTopMark:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/youku/widget/SelectnessTabView;


# direct methods
.method public constructor <init>(Lcom/youku/widget/SelectnessTabView;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->this$0:Lcom/youku/widget/SelectnessTabView;

    .line 276
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 277
    iput-object p2, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mItemView:Landroid/view/View;

    .line 278
    invoke-direct {p0}, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->initView()V

    .line 279
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c028b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mSubTitle:Landroid/widget/TextView;

    .line 283
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c07a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mLayout:Landroid/widget/LinearLayout;

    .line 284
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c0760

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mThumbnail:Landroid/widget/ImageView;

    .line 285
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c07a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mTopMark:Landroid/widget/ImageView;

    .line 286
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c07a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mTime:Landroid/widget/TextView;

    .line 287
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c07a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 288
    return-void
.end method
