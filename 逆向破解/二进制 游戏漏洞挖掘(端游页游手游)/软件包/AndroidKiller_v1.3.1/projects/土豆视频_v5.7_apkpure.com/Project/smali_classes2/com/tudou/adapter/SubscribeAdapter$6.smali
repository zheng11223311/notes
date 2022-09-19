.class Lcom/tudou/adapter/SubscribeAdapter$6;
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
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$Recommend;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iput p3, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->val$type:I

    iput-object p4, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->val$userid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 439
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const-string v1, "subscribe_title_click"

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    sput-boolean v5, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 451
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "refercode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubCenter|vBlogClick||uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$Recommend;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ba2\u9605tab\u9891\u9053\u5361\u7247\u70b9\u51fb\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/SubscribeAdapter;->getLoginStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5728\u8ba2\u9605tab\u70b9\u51fb\u4e86\u9891\u9053\u5361\u7247\uff08"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-virtual {v4}, Lcom/tudou/adapter/SubscribeAdapter;->getLoginStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff09"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 460
    iget v1, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->val$type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t1.subscribe_ssubscribe.videocardclick.1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v1, v1, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v1, v1, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->code:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 465
    :goto_1
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/SubscribeAdapter;->access$100(Lcom/tudou/adapter/SubscribeAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->val$userid:Ljava/lang/String;

    iget v3, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->val$type:I

    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$6;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$Recommend;->title:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/tudou/android/TudouApi;->goChannelByid(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 463
    :cond_2
    const-string v1, "t1.subscribe_ssubscribe.perchannel"

    invoke-static {v1, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1
.end method
