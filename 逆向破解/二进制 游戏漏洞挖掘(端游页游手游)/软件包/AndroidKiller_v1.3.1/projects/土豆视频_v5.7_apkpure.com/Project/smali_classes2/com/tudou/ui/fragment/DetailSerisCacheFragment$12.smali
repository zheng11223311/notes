.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;
.super Ljava/lang/Object;
.source "DetailSerisCacheFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
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
    .line 874
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 879
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "onItemClick"

    const-wide/16 v6, 0x1f4

    invoke-static {v0, v6, v7}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 883
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1500(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 884
    const-string v0, "refercode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "list|VideoClick||albumid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1500(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :goto_1
    const-string v0, "\u8be6\u60c5\u9875\u7f13\u5b58\u89c6\u9891\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "\u8be6\u60c5\u9875\u7f13\u5b58\u89c6\u9891"

    invoke-static {v0, v3, v6, v9}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 895
    const-string v0, "number"

    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/youku/vo/DetailSeris;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 896
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v0, p3}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/youku/vo/SeriesVideo;

    .line 897
    .local v11, "video":Lcom/youku/vo/SeriesVideo;
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->getPage()I

    move-result v8

    .line 898
    .local v8, "page":I
    const v0, 0x7f0c082b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 908
    .local v10, "tv":Landroid/widget/TextView;
    :goto_2
    if-eqz v11, :cond_0

    .line 910
    iget-boolean v0, v11, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    if-nez v0, :cond_0

    iget-boolean v0, v11, Lcom/youku/vo/SeriesVideo;->dummy:Z

    if-nez v0, :cond_0

    .line 913
    iget-object v1, v11, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    .line 914
    .local v1, "title":Ljava/lang/String;
    iget-object v2, v11, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    .line 916
    .local v2, "vid":Ljava/lang/String;
    iget-object v0, v11, Lcom/youku/vo/SeriesVideo;->vcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 917
    const/4 v5, 0x1

    .line 921
    .local v5, "isfromTodou":Z
    :goto_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1700(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget v3, v11, Lcom/youku/vo/SeriesVideo;->limit:I

    invoke-static {v0, v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1800(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 923
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1900(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v3, v11, Lcom/youku/vo/SeriesVideo;->hdType:I

    invoke-static {v0, v3}, Lcom/youku/util/Util;->getTudouFormat(Ljava/lang/String;I)I

    move-result v4

    .line 925
    .local v4, "tudouformat":I
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v0, :cond_7

    if-eqz v5, :cond_7

    .line 926
    const-string v0, "\u8be5\u89c6\u9891\u6682\u65f6\u4e0d\u652f\u6301\u5728\u60a8\u7684\u8bbe\u5907\u4e0a\u7f13\u5b58\u54e6"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 927
    const-string v0, "\u89c6\u9891\u4e0d\u80fd\u7f13\u5b58\u63d0\u793a\u66dd\u5149"

    const-class v3, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "\u89c6\u9891\u7f13\u5b58"

    invoke-static {v0, v3, v6}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 885
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "vid":Ljava/lang/String;
    .end local v4    # "tudouformat":I
    .end local v5    # "isfromTodou":Z
    .end local v8    # "page":I
    .end local v10    # "tv":Landroid/widget/TextView;
    .end local v11    # "video":Lcom/youku/vo/SeriesVideo;
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1400(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 886
    const-string v0, "refercode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "list|VideoClick||playlistCode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1400(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 888
    :cond_3
    const-string v0, "refercode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "list|VideoClick||itemcode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v6, v6, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->itemCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 899
    :cond_4
    const-string v0, "chinese"

    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/youku/vo/DetailSeris;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 900
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0, p3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/youku/vo/SeriesVideo;

    .line 901
    .restart local v11    # "video":Lcom/youku/vo/SeriesVideo;
    const v0, 0x7f0c06ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 902
    .restart local v10    # "tv":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getPage()I

    move-result v8

    .restart local v8    # "page":I
    goto/16 :goto_2

    .line 904
    .end local v8    # "page":I
    .end local v10    # "tv":Landroid/widget/TextView;
    .end local v11    # "video":Lcom/youku/vo/SeriesVideo;
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0, p3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/youku/vo/SeriesVideo;

    .line 905
    .restart local v11    # "video":Lcom/youku/vo/SeriesVideo;
    const v0, 0x7f0c06ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 906
    .restart local v10    # "tv":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getPage()I

    move-result v8

    .restart local v8    # "page":I
    goto/16 :goto_2

    .line 919
    .restart local v1    # "title":Ljava/lang/String;
    .restart local v2    # "vid":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "isfromTodou":Z
    goto/16 :goto_3

    .line 931
    .restart local v4    # "tudouformat":I
    :cond_7
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_8

    .line 932
    const-string v0, "\u89c6\u9891\u4e0d\u80fd\u7f13\u5b58\u63d0\u793a\u66dd\u5149"

    const-class v3, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "\u89c6\u9891\u7f13\u5b58"

    invoke-static {v0, v3, v6}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 937
    :cond_8
    const v0, -0x4a4a4b

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 938
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    const-string v6, ""

    const-string v7, ""

    move v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->startCache(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 940
    .end local v4    # "tudouformat":I
    :cond_9
    const-string v0, "\u89c6\u9891\u4e0d\u80fd\u7f13\u5b58\u63d0\u793a\u66dd\u5149"

    const-class v3, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "\u89c6\u9891\u7f13\u5b58"

    invoke-static {v0, v3, v6}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0d00e5

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
