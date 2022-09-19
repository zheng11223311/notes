.class Lcom/youku/adapter/SearchResultAdapter$20;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->initBSideView_Filter(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$20;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput-object p2, p0, Lcom/youku/adapter/SearchResultAdapter$20;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    iput p3, p0, Lcom/youku/adapter/SearchResultAdapter$20;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$20;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideGridViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$20;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/adapter/BSideGridViewAdapter;->setCurrentPage(I)V

    .line 1646
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$20;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$20;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput p1, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->currentPage:I

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$20;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideListViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1649
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$20;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideListViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/adapter/BSideListViewAdapter;->setCurrentPage(I)V

    .line 1650
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$20;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$20;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput p1, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->currentPage:I

    .line 1652
    :cond_1
    return-void
.end method
