.class Lcom/youku/adapter/SearchResultAdapter$5;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->setDirectFilterView(Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$5;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 453
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$5;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput p1, v2, Lcom/youku/adapter/SearchResultAdapter;->curDirectPos:I

    .line 454
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$5;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$300(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 455
    .local v1, "l":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$5;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v2, v2, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v2, v1}, Lcom/tudou/ui/fragment/SearchManager;->getResultByCateId(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 457
    .local v0, "filterResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$5;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$5;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 463
    :cond_0
    if-eqz v0, :cond_1

    .line 464
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$5;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$5;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v2}, Lcom/youku/adapter/SearchResultAdapter;->notifyDataSetChanged()V

    .line 466
    return-void
.end method
