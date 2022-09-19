.class Lcom/tudou/adapter/SubscribeAdapter$24;
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

.field final synthetic val$numlayout:Landroid/view/View;

.field final synthetic val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$24;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter$24;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iput-object p3, p0, Lcom/tudou/adapter/SubscribeAdapter$24;->val$numlayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1765
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1766
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 1790
    :cond_0
    :goto_0
    return-void

    .line 1770
    :cond_1
    const-string v0, "subscribe_title_click"

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    sput-boolean v4, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 1776
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$24;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    invoke-virtual {v0}, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t1.subscribe_ssubscribe.videocardclick.1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$24;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    iget v0, v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->uid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1782
    :goto_1
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$24;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    iget v0, v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->aid:I

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$24;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    invoke-virtual {v1}, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tudou/adapter/SubscribeAdapter;->clearSubscribeCount(II)V

    .line 1785
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$24;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$100(Lcom/tudou/adapter/SubscribeAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$24;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    iget v0, v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->aid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$24;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    invoke-virtual {v2}, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter$24;->val$user:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v3, v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->title:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/tudou/android/TudouApi;->goChannelByid(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 1788
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$24;->val$numlayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1779
    :cond_2
    const-string v0, "t1.subscribe_ssubscribe.perchannel"

    invoke-static {v0, v5}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1
.end method
