.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;
.super Ljava/lang/Object;
.source "DetailSerisCachePopWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->onOneFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 621
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$1300(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 622
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$1300(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    const-string v2, "number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 624
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget v2, v2, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->val$page:I

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget v3, v3, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->val$pos:I

    invoke-virtual {v1, v2, v3}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    .line 628
    .local v0, "video":Lcom/youku/vo/SeriesVideo;
    iput-boolean v4, v0, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 629
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->notifyDataSetChanged()V

    .line 649
    .end local v0    # "video":Lcom/youku/vo/SeriesVideo;
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$1300(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    const-string v2, "chinese"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget v2, v2, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->val$page:I

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget v3, v3, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->val$pos:I

    invoke-virtual {v1, v2, v3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    .line 637
    .restart local v0    # "video":Lcom/youku/vo/SeriesVideo;
    iput-boolean v4, v0, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 638
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 642
    .end local v0    # "video":Lcom/youku/vo/SeriesVideo;
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget v2, v2, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->val$page:I

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget v3, v3, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->val$pos:I

    invoke-virtual {v1, v2, v3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    .line 645
    .restart local v0    # "video":Lcom/youku/vo/SeriesVideo;
    iput-boolean v4, v0, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 646
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
