.class Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SelectnessListTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/SelectnessListTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field mItemView:Landroid/view/View;

.field mLayout:Landroid/widget/RelativeLayout;

.field mThumbnail:Landroid/widget/ImageView;

.field mTitleLine:Landroid/widget/TextView;

.field mTopMark:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/youku/widget/SelectnessListTabView;


# direct methods
.method public constructor <init>(Lcom/youku/widget/SelectnessListTabView;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->this$0:Lcom/youku/widget/SelectnessListTabView;

    .line 197
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 198
    iput-object p2, p0, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mItemView:Landroid/view/View;

    .line 199
    invoke-direct {p0}, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->initView()V

    .line 200
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c07a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 204
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c0760

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mThumbnail:Landroid/widget/ImageView;

    .line 205
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c07a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mTopMark:Landroid/widget/ImageView;

    .line 206
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c07a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mTitleLine:Landroid/widget/TextView;

    .line 207
    return-void
.end method
