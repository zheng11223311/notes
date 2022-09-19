.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;
.super Ljava/lang/Object;
.source "DetailSerisCacheFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->onOneFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 697
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 698
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    const-string v2, "number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget v2, v2, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->val$page:I

    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget v3, v3, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->val$pos:I

    invoke-virtual {v1, v2, v3}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    .line 702
    .local v0, "video":Lcom/youku/vo/SeriesVideo;
    iput-boolean v4, v0, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 703
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->notifyDataSetChanged()V

    .line 720
    .end local v0    # "video":Lcom/youku/vo/SeriesVideo;
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    const-string v2, "chinese"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget v2, v2, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->val$page:I

    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget v3, v3, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->val$pos:I

    invoke-virtual {v1, v2, v3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    .line 709
    .restart local v0    # "video":Lcom/youku/vo/SeriesVideo;
    iput-boolean v4, v0, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 710
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 714
    .end local v0    # "video":Lcom/youku/vo/SeriesVideo;
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget v2, v2, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->val$page:I

    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget v3, v3, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->val$pos:I

    invoke-virtual {v1, v2, v3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    .line 716
    .restart local v0    # "video":Lcom/youku/vo/SeriesVideo;
    iput-boolean v4, v0, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 717
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
