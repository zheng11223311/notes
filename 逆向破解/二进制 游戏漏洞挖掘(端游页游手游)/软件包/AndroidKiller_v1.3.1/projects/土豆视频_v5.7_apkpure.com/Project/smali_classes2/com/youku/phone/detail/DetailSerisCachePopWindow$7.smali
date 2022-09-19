.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;
.super Ljava/lang/Object;
.source "DetailSerisCachePopWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow;->inflaterData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

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
    .line 419
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$900(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v0, v0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v0, p3}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->setCurPage(I)V

    .line 421
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v0, v0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->notifyDataSetInvalidated()V

    .line 422
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$1000(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/tudou/adapter/DetailSerisCountAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tudou/adapter/DetailSerisCountAdapter;->setItem(I)V

    .line 423
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$1000(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/tudou/adapter/DetailSerisCountAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/DetailSerisCountAdapter;->notifyDataSetChanged()V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$1100(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v0, v0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0, p3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->setCurPage(I)V

    .line 426
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v0, v0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetInvalidated()V

    .line 427
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$1000(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/tudou/adapter/DetailSerisCountAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tudou/adapter/DetailSerisCountAdapter;->setItem(I)V

    .line 428
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$1000(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/tudou/adapter/DetailSerisCountAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/DetailSerisCountAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
