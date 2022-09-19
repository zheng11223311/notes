.class Lcom/tudou/adapter/SubscribeAdapter$25;
.super Ljava/lang/Object;
.source "SubscribeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SubscribeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/SubscribeAdapter;

.field final synthetic val$finalitem:Lcom/tudou/adapter/SubscribeItem;

.field final synthetic val$pointImages:[Landroid/widget/ImageView;

.field final synthetic val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/tudou/adapter/SubscribeItem;[Landroid/widget/ImageView;Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;)V
    .locals 0

    .prologue
    .line 1830
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iput-object p3, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->val$pointImages:[Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1833
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1834
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 2131
    :cond_0
    :goto_0
    return-void

    .line 1838
    :cond_1
    const-string v2, "t1.subscribe_ssubscribe.download"

    invoke-static {v2, v3}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1839
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1842
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/SubscribeAdapter;->access$100(Lcom/tudou/adapter/SubscribeAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    const-string v1, "\u662f\u5426\u5141\u8bb8\u79fb\u52a8\u7f51\u7edc\u4e0b\u7f13\u5b58\u89c6\u9891?"

    const-string v2, "\u5141\u8bb8"

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$25$1;

    invoke-direct {v4, p0}, Lcom/tudou/adapter/SubscribeAdapter$25$1;-><init>(Lcom/tudou/adapter/SubscribeAdapter$25;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/youku/util/Util;->alertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlert;II)Lcom/youku/widget/TudouDialog;

    goto :goto_0

    .line 2053
    :cond_2
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeItem;->subscribeItemViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->val$pointImages:[Landroid/widget/ImageView;

    array-length v4, v4

    rem-int v8, v2, v4

    .line 2057
    .local v8, "index":I
    const-string v9, ""

    .line 2058
    .local v9, "itemcode":Ljava/lang/String;
    const-string v1, ""

    .line 2059
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    invoke-virtual {v2}, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->getType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 2060
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v2, v2, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    iget-object v9, v2, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->code:Ljava/lang/String;

    .line 2061
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v2, v2, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    iget-object v1, v2, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->title:Ljava/lang/String;

    .line 2067
    :goto_1
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2071
    const-string v2, "subscribe_cache"

    const-wide/16 v4, 0x320

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2074
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2076
    :cond_3
    const-string v2, "\u89c6\u9891\u64ad\u653e\u5730\u5740\u5c1a\u672a\u53d6\u5f97\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2063
    :cond_4
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v2, v2, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    iget-object v9, v2, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->code:Ljava/lang/String;

    .line 2064
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v2, v2, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    iget-object v1, v2, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->title:Ljava/lang/String;

    goto :goto_1

    .line 2080
    :cond_5
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v2, v9}, Lcom/tudou/adapter/SubscribeAdapter;->access$702(Lcom/tudou/adapter/SubscribeAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 2082
    const-string v2, "\u8ba2\u9605tab\u7f13\u5b58\u6309\u94ae\u70b9\u51fb"

    const-class v4, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u8ba2\u9605tab\u7f13\u5b58\u6309\u94ae"

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    move-object v0, v9

    .line 2087
    .local v0, "finalitemcode":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    const-string v2, ""

    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$25;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v4}, Lcom/tudou/adapter/SubscribeAdapter;->access$500(Lcom/tudou/adapter/SubscribeAdapter;)I

    move-result v4

    const-string v5, ""

    const-string v6, ""

    new-instance v7, Lcom/tudou/adapter/SubscribeAdapter$25$2;

    invoke-direct {v7, p0, v0}, Lcom/tudou/adapter/SubscribeAdapter$25$2;-><init>(Lcom/tudou/adapter/SubscribeAdapter$25;Ljava/lang/String;)V

    invoke-static/range {v0 .. v7}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    goto/16 :goto_0
.end method
