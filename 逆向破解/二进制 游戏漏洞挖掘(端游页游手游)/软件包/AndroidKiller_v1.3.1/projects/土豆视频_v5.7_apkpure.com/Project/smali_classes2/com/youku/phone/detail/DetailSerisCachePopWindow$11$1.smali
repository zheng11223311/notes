.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;
.super Ljava/lang/Object;
.source "DetailSerisCachePopWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->onOneFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 816
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$1300(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 817
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$1300(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    const-string v2, "number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget v2, v2, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->val$page:I

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget v3, v3, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->val$pos:I

    invoke-virtual {v1, v2, v3}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    .line 823
    .local v0, "video":Lcom/youku/vo/SeriesVideo;
    iput-boolean v4, v0, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 824
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->notifyDataSetChanged()V

    .line 844
    .end local v0    # "video":Lcom/youku/vo/SeriesVideo;
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$1300(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    const-string v2, "chinese"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget v2, v2, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->val$page:I

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget v3, v3, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->val$pos:I

    invoke-virtual {v1, v2, v3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    .line 832
    .restart local v0    # "video":Lcom/youku/vo/SeriesVideo;
    iput-boolean v4, v0, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 833
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 837
    .end local v0    # "video":Lcom/youku/vo/SeriesVideo;
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget v2, v2, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->val$page:I

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget v3, v3, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->val$pos:I

    invoke-virtual {v1, v2, v3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SeriesVideo;

    .line 840
    .restart local v0    # "video":Lcom/youku/vo/SeriesVideo;
    iput-boolean v4, v0, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 841
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
