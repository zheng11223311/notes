.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;
.super Ljava/lang/Object;
.source "DetailSerisCacheFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->inflaterData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 307
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$900(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v0, p3}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->setCurPage(I)V

    .line 309
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->notifyDataSetInvalidated()V

    .line 310
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/tudou/adapter/DetailSerisCountAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tudou/adapter/DetailSerisCountAdapter;->setItem(I)V

    .line 311
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/tudou/adapter/DetailSerisCountAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/DetailSerisCountAdapter;->notifyDataSetChanged()V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1100(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0, p3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->setCurPage(I)V

    .line 349
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetInvalidated()V

    .line 350
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/tudou/adapter/DetailSerisCountAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tudou/adapter/DetailSerisCountAdapter;->setItem(I)V

    .line 351
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/tudou/adapter/DetailSerisCountAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/DetailSerisCountAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
