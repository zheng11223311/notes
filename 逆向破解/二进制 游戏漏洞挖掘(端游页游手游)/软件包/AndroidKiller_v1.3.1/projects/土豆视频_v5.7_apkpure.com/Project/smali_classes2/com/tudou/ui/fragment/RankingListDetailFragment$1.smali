.class Lcom/tudou/ui/fragment/RankingListDetailFragment$1;
.super Ljava/lang/Object;
.source "RankingListDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/RankingListDetailFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$1;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 82
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    add-int/lit8 p3, p3, -0x2

    .line 89
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$1;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$000(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 93
    if-ltz p3, :cond_0

    .line 97
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$1;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$000(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    .line 99
    .local v9, "r":Lcom/youku/vo/RankingDetailList$Results$RankingDetail;
    iget-object v0, v9, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->item_code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, v9, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v8, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ct"

    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$1;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$100(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t1.find_toplist.videoclick.1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 104
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$1;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$200(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iget-object v1, v9, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->aid:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v3, v9, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->title:Ljava/lang/String;

    iget-object v5, v9, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->short_desc:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v8    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 109
    .restart local v8    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ct"

    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$1;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$100(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t1.find_toplist.videoclick.1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->item_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 111
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v7, "b":Landroid/os/Bundle;
    const-string v0, "intent.extra.album.id"

    iget-object v1, v9, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->aid:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$1;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$300(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iget-object v1, v9, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->item_code:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v3, v9, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->title:Ljava/lang/String;

    iget-object v5, v9, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->short_desc:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto/16 :goto_0
.end method
