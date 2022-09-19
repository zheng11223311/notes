.class Lcom/tudou/adapter/SubscribeAdapter$2;
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

.field final synthetic val$finalSubscribeItem:Lcom/tudou/adapter/SubscribeItem;

.field final synthetic val$type:I

.field final synthetic val$user:Lcom/youku/vo/SubscribeBean$Recommend;

.field final synthetic val$userid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$Recommend;Lcom/tudou/adapter/SubscribeItem;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iput-object p3, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$finalSubscribeItem:Lcom/tudou/adapter/SubscribeItem;

    iput-object p4, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$userid:Ljava/lang/String;

    iput p5, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 157
    const-string v0, "sub"

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v10, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, ""

    .line 162
    .local v11, "login":Ljava/lang/String;
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-boolean v0, v0, Lcom/youku/vo/SubscribeBean$Recommend;->isSubed:Z

    if-eqz v0, :cond_1

    .line 163
    const-string v11, "\u53d6\u6d88\u8ba2\u9605"

    .line 168
    :goto_1
    const-string v0, "login"

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "t1.subscribe_ssubscribe.subscribe"

    invoke-static {v0, v10}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 171
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$finalSubscribeItem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-boolean v0, v0, Lcom/youku/vo/SubscribeBean$Recommend;->isSubed:Z

    if-eqz v0, :cond_2

    .line 174
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/SubscribeAdapter;->access$100(Lcom/tudou/adapter/SubscribeAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$userid:Ljava/lang/String;

    iget v3, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$type:I

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$2$1;

    invoke-direct {v4, p0, p1}, Lcom/tudou/adapter/SubscribeAdapter$2$1;-><init>(Lcom/tudou/adapter/SubscribeAdapter$2;Landroid/view/View;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tudou/service/attention/IAttention;->cancelAttention(Landroid/content/Context;Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    goto :goto_0

    .line 165
    :cond_1
    const-string v11, "\u8ba2\u9605"

    goto :goto_1

    .line 199
    :cond_2
    invoke-static {}, Lcom/tudou/service/attention/AttentionManagerImpl;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/SubscribeAdapter;->access$100(Lcom/tudou/adapter/SubscribeAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$userid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$Recommend;->avatar:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-boolean v5, v5, Lcom/youku/vo/SubscribeBean$Recommend;->isVuser:Z

    iget-object v6, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v6, v6, Lcom/youku/vo/SubscribeBean$Recommend;->title:Ljava/lang/String;

    iget v7, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$type:I

    iget-object v8, p0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v8, v8, Lcom/youku/vo/SubscribeBean$Recommend;->latest_update:Ljava/lang/String;

    new-instance v9, Lcom/tudou/adapter/SubscribeAdapter$2$2;

    invoke-direct {v9, p0, p1}, Lcom/tudou/adapter/SubscribeAdapter$2$2;-><init>(Lcom/tudou/adapter/SubscribeAdapter$2;Landroid/view/View;)V

    invoke-interface/range {v0 .. v9}, Lcom/tudou/service/attention/IAttention;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V

    goto :goto_0
.end method
