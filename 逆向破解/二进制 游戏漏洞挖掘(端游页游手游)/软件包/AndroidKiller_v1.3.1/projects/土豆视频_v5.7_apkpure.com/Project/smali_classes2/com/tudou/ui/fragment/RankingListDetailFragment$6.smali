.class Lcom/tudou/ui/fragment/RankingListDetailFragment$6;
.super Ljava/lang/Object;
.source "RankingListDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/RankingListDetailFragment;->initHearder(Lcom/youku/vo/RankingDetailList$Results$RankingDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

.field final synthetic val$rankingDetail:Lcom/youku/vo/RankingDetailList$Results$RankingDetail;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;Lcom/youku/vo/RankingDetailList$Results$RankingDetail;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->val$rankingDetail:Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->val$rankingDetail:Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    iget-object v0, v0, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->item_code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->val$rankingDetail:Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    iget-object v0, v0, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v6, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ct"

    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$100(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t1.find_toplist.videoclick.1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->val$rankingDetail:Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    iget-object v1, v1, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 227
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$1200(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->val$rankingDetail:Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    iget-object v1, v1, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->aid:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v3, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->val$rankingDetail:Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    iget-object v3, v3, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->val$rankingDetail:Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    iget-object v5, v5, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->short_desc:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v6    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 234
    .restart local v6    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ct"

    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$100(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t1.find_toplist.videoclick.1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->val$rankingDetail:Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    iget-object v1, v1, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->item_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 236
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$1300(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->val$rankingDetail:Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    iget-object v1, v1, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->item_code:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v3, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->val$rankingDetail:Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    iget-object v3, v3, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;->val$rankingDetail:Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    iget-object v5, v5, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->short_desc:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
