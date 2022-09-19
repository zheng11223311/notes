.class Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ClassifyWeekSchedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/ClassifyWeekSchedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field episode:Landroid/widget/TextView;

.field isEndItem:Z

.field mItemView:Landroid/view/View;

.field mWeekView:Landroid/view/View;

.field name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/youku/widget/ClassifyWeekSchedule;

.field weekSkip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/youku/widget/ClassifyWeekSchedule;Landroid/view/View;Z)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "isEndItem"    # Z

    .prologue
    .line 195
    iput-object p1, p0, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->this$0:Lcom/youku/widget/ClassifyWeekSchedule;

    .line 196
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 197
    iput-object p2, p0, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->mItemView:Landroid/view/View;

    .line 198
    iput-boolean p3, p0, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->isEndItem:Z

    .line 199
    invoke-direct {p0}, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->initView()V

    .line 200
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c02d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->mWeekView:Landroid/view/View;

    .line 204
    iget-boolean v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->isEndItem:Z

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c02e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->name:Landroid/widget/TextView;

    .line 206
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c02e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->episode:Landroid/widget/TextView;

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c02d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;->weekSkip:Landroid/widget/TextView;

    goto :goto_0
.end method
