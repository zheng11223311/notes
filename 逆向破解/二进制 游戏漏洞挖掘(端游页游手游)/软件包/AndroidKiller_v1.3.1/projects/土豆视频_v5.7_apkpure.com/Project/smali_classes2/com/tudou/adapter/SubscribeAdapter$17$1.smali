.class Lcom/tudou/adapter/SubscribeAdapter$17$1;
.super Ljava/lang/Object;
.source "SubscribeAdapter.java"

# interfaces
.implements Lcom/youku/util/IAlert;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SubscribeAdapter$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/adapter/SubscribeAdapter$17;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter$17;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alertNegative(I)V
    .locals 11
    .param p1, "tag"    # I

    .prologue
    const/4 v6, 0x2

    .line 1093
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeItem;->subscribeItemViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v3, v3, Lcom/tudou/adapter/SubscribeAdapter$17;->val$pointImages:[Landroid/widget/ImageView;

    array-length v3, v3

    rem-int v8, v2, v3

    .line 1097
    .local v8, "index":I
    const-string v9, ""

    .line 1098
    .local v9, "itemcode":Ljava/lang/String;
    const-string v1, ""

    .line 1099
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    if-ne v2, v6, :cond_1

    .line 1100
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    iget-object v9, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->code:Ljava/lang/String;

    .line 1102
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    iget-object v1, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->title:Ljava/lang/String;

    .line 1111
    :goto_0
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1188
    :cond_0
    :goto_1
    return-void

    .line 1105
    :cond_1
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    iget-object v9, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->code:Ljava/lang/String;

    .line 1107
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    iget-object v1, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 1117
    :cond_2
    const-string v2, "subscribe_cache"

    const-wide/16 v4, 0x320

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1122
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    iget-object v10, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->playLink:Ljava/lang/String;

    .line 1127
    .local v10, "playLink":Ljava/lang/String;
    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1129
    const-string v2, "\u89c6\u9891\u64ad\u653e\u5730\u5740\u5c1a\u672a\u53d6\u5f97\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 1122
    .end local v10    # "playLink":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    iget-object v10, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->playLink:Ljava/lang/String;

    goto :goto_2

    .line 1133
    .restart local v10    # "playLink":Ljava/lang/String;
    :cond_4
    const-string v2, "\u5c06\u5728wifi\u7f51\u7edc\u81ea\u52a8\u5f00\u59cb\u7f13\u5b58"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 1135
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v2, v9}, Lcom/tudou/adapter/SubscribeAdapter;->access$702(Lcom/tudou/adapter/SubscribeAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 1137
    const-string v2, "\u8ba2\u9605tab\u7f13\u5b58\u6309\u94ae\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u8ba2\u9605tab\u7f13\u5b58\u6309\u94ae"

    invoke-static {v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    move-object v0, v9

    .line 1144
    .local v0, "finalitemcode":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeAdapter$17;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v4}, Lcom/tudou/adapter/SubscribeAdapter;->access$500(Lcom/tudou/adapter/SubscribeAdapter;)I

    move-result v4

    const-string v5, ""

    const-string v6, ""

    new-instance v7, Lcom/tudou/adapter/SubscribeAdapter$17$1$2;

    invoke-direct {v7, p0, v0}, Lcom/tudou/adapter/SubscribeAdapter$17$1$2;-><init>(Lcom/tudou/adapter/SubscribeAdapter$17$1;Ljava/lang/String;)V

    invoke-static/range {v0 .. v7}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    goto/16 :goto_1
.end method

.method public alertPositive(I)V
    .locals 11
    .param p1, "tag"    # I

    .prologue
    const/4 v6, 0x2

    .line 989
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeItem;->subscribeItemViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v3, v3, Lcom/tudou/adapter/SubscribeAdapter$17;->val$pointImages:[Landroid/widget/ImageView;

    array-length v3, v3

    rem-int v8, v2, v3

    .line 993
    .local v8, "index":I
    const-string v9, ""

    .line 994
    .local v9, "itemcode":Ljava/lang/String;
    const-string v1, ""

    .line 995
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    if-ne v2, v6, :cond_1

    .line 996
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    iget-object v9, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->code:Ljava/lang/String;

    .line 998
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    iget-object v1, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->title:Ljava/lang/String;

    .line 1007
    :goto_0
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1088
    :cond_0
    :goto_1
    return-void

    .line 1001
    :cond_1
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    iget-object v9, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->code:Ljava/lang/String;

    .line 1003
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    iget-object v1, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 1013
    :cond_2
    const-string v2, "subscribe_cache"

    const-wide/16 v4, 0x320

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    iget-object v10, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->playLink:Ljava/lang/String;

    .line 1023
    .local v10, "playLink":Ljava/lang/String;
    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1025
    const-string v2, "\u89c6\u9891\u64ad\u653e\u5730\u5740\u5c1a\u672a\u53d6\u5f97\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 1018
    .end local v10    # "playLink":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    iget-object v10, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->playLink:Ljava/lang/String;

    goto :goto_2

    .line 1029
    .restart local v10    # "playLink":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v2, v9}, Lcom/tudou/adapter/SubscribeAdapter;->access$702(Lcom/tudou/adapter/SubscribeAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 1031
    const-string v2, "\u8ba2\u9605tab\u7f13\u5b58\u6309\u94ae\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u8ba2\u9605tab\u7f13\u5b58\u6309\u94ae"

    invoke-static {v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    move-object v0, v9

    .line 1038
    .local v0, "finalitemcode":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$17$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeAdapter$17;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v4}, Lcom/tudou/adapter/SubscribeAdapter;->access$500(Lcom/tudou/adapter/SubscribeAdapter;)I

    move-result v4

    const-string v5, ""

    const-string v6, ""

    new-instance v7, Lcom/tudou/adapter/SubscribeAdapter$17$1$1;

    invoke-direct {v7, p0, v0}, Lcom/tudou/adapter/SubscribeAdapter$17$1$1;-><init>(Lcom/tudou/adapter/SubscribeAdapter$17$1;Ljava/lang/String;)V

    invoke-static/range {v0 .. v7}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    .line 1083
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tudou/service/download/DownloadManager;->setCanUse3GDownload(Z)V

    .line 1087
    const v2, 0x7f0d0115

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_1
.end method
