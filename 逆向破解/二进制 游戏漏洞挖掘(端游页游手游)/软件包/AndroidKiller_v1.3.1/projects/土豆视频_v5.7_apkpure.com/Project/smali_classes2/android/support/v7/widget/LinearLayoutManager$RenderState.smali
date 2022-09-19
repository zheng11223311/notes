.class Landroid/support/v7/widget/LinearLayoutManager$RenderState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCOLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LinearLayoutManager#RenderState"


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mItemDirection:I

.field mLayoutDirection:I

.field mOffset:I

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1400
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mExtra:I

    .line 1406
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrapList:Ljava/util/List;

    .line 1345
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/LinearLayoutManager$RenderState;)V
    .locals 0

    .prologue
    .line 1345
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager$RenderState;-><init>()V

    return-void
.end method

.method private nextFromLimitedList()Landroid/view/View;
    .locals 8

    .prologue
    .line 1438
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrapList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 1439
    .local v4, "size":I
    const/4 v0, 0x0

    .line 1440
    .local v0, "closest":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const v1, 0x7fffffff

    .line 1441
    .local v1, "closestDistance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 1458
    :goto_1
    if-eqz v0, :cond_3

    .line 1459
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    .line 1460
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1462
    :goto_2
    return-object v6

    .line 1442
    :cond_0
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrapList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1443
    .local v5, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mItemDirection:I

    mul-int v2, v6, v7

    .line 1444
    .local v2, "distance":I
    if-gez v2, :cond_2

    .line 1441
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1447
    :cond_2
    if-ge v2, v1, :cond_1

    .line 1448
    move-object v0, v5

    .line 1449
    move v1, v2

    .line 1450
    if-nez v2, :cond_1

    goto :goto_1

    .line 1462
    .end local v2    # "distance":I
    .end local v5    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 2
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1412
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log()V
    .locals 3

    .prologue
    .line 1466
    const-string v0, "LinearLayoutManager#RenderState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "avail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ind:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1467
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mItemDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", layoutDir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mLayoutDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1466
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    return-void
.end method

.method next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 3
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 1422
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrapList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1423
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->nextFromLimitedList()Landroid/view/View;

    move-result-object v0

    .line 1427
    :goto_0
    return-object v0

    .line 1425
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1426
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    goto :goto_0
.end method
