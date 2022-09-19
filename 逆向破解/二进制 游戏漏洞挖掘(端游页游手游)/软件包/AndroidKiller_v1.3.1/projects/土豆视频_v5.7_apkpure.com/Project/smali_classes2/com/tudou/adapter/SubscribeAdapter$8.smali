.class Lcom/tudou/adapter/SubscribeAdapter$8;
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

.field final synthetic val$type:I

.field final synthetic val$user:Lcom/youku/vo/SubscribeBean$Recommend;

.field final synthetic val$userid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter;ILcom/youku/vo/SubscribeBean$Recommend;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$8;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    iput p2, p0, Lcom/tudou/adapter/SubscribeAdapter$8;->val$type:I

    iput-object p3, p0, Lcom/tudou/adapter/SubscribeAdapter$8;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iput-object p4, p0, Lcom/tudou/adapter/SubscribeAdapter$8;->val$userid:Ljava/lang/String;

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

    .line 505
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const-string v0, "subscribe_title_click"

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    sput-boolean v4, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 514
    iget v0, p0, Lcom/tudou/adapter/SubscribeAdapter$8;->val$type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t1.subscribe_ssubscribe.videocardclick.1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$8;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->code:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 519
    :goto_1
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$8;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$100(Lcom/tudou/adapter/SubscribeAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$8;->val$userid:Ljava/lang/String;

    iget v2, p0, Lcom/tudou/adapter/SubscribeAdapter$8;->val$type:I

    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter$8;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$Recommend;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/android/TudouApi;->goChannelByid(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_2
    const-string v0, "t1.subscribe_ssubscribe.perchannel"

    invoke-static {v0, v5}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1
.end method
