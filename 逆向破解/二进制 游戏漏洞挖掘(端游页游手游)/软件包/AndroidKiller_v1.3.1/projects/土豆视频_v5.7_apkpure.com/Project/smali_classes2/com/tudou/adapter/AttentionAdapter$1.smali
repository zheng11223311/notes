.class Lcom/tudou/adapter/AttentionAdapter$1;
.super Ljava/lang/Object;
.source "AttentionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/AttentionAdapter;->setViewHolderData(Lcom/tudou/adapter/AttentionAdapter$ViewHolder;ILandroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/AttentionAdapter;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$user:Lcom/youku/vo/Podcast$Users$Subs;

.field final synthetic val$viewholder:Lcom/tudou/adapter/AttentionAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/AttentionAdapter;Lcom/youku/vo/Podcast$Users$Subs;Lcom/tudou/adapter/AttentionAdapter$ViewHolder;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/tudou/adapter/AttentionAdapter$1;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iput-object p3, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$viewholder:Lcom/tudou/adapter/AttentionAdapter$ViewHolder;

    iput-object p4, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 219
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v10, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget-boolean v1, v1, Lcom/youku/vo/Podcast$Users$Subs;->issubs:Z

    if-eqz v1, :cond_1

    .line 222
    const-string v11, "\u53d6\u6d88\u8ba2\u9605"

    .line 226
    .local v11, "type":Ljava/lang/String;
    :goto_0
    const-string v1, "type"

    invoke-virtual {v10, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "t1.subscribe_mysubscribe.subscribe"

    invoke-static {v1, v10}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 228
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/youku/vo/Podcast$Users$Subs;->isRunning:Z

    .line 229
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget-boolean v1, v1, Lcom/youku/vo/Podcast$Users$Subs;->issubs:Z

    if-nez v1, :cond_2

    .line 230
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$viewholder:Lcom/tudou/adapter/AttentionAdapter$ViewHolder;

    iget-object v1, v1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    .line 233
    .local v0, "iattention":Lcom/tudou/service/attention/IAttention;
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget-object v6, v1, Lcom/youku/vo/Podcast$Users$Subs;->uname:Ljava/lang/String;

    .line 234
    .local v6, "userName":Ljava/lang/String;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget-object v6, v1, Lcom/youku/vo/Podcast$Users$Subs;->title:Ljava/lang/String;

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter$1;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/AttentionAdapter;->access$000(Lcom/tudou/adapter/AttentionAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget v2, v2, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget-object v3, v3, Lcom/youku/vo/Podcast$Users$Subs;->upic:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    invoke-virtual {v5}, Lcom/youku/vo/Podcast$Users$Subs;->getUpdateCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget-boolean v5, v5, Lcom/youku/vo/Podcast$Users$Subs;->isVuser:Z

    iget-object v7, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget v7, v7, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    iget-object v8, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget-object v8, v8, Lcom/youku/vo/Podcast$Users$Subs;->updateTime_str:Ljava/lang/String;

    new-instance v9, Lcom/tudou/adapter/AttentionAdapter$1$1;

    invoke-direct {v9, p0, p1}, Lcom/tudou/adapter/AttentionAdapter$1$1;-><init>(Lcom/tudou/adapter/AttentionAdapter$1;Landroid/view/View;)V

    invoke-interface/range {v0 .. v9}, Lcom/tudou/service/attention/IAttention;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V

    .line 377
    .end local v6    # "userName":Ljava/lang/String;
    :goto_1
    return-void

    .line 224
    .end local v0    # "iattention":Lcom/tudou/service/attention/IAttention;
    .end local v11    # "type":Ljava/lang/String;
    :cond_1
    const-string v11, "\u8ba2\u9605"

    .restart local v11    # "type":Ljava/lang/String;
    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$viewholder:Lcom/tudou/adapter/AttentionAdapter$ViewHolder;

    iget-object v1, v1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 309
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    .line 310
    .restart local v0    # "iattention":Lcom/tudou/service/attention/IAttention;
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter$1;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/AttentionAdapter;->access$000(Lcom/tudou/adapter/AttentionAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget v2, v2, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget v3, v3, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    new-instance v4, Lcom/tudou/adapter/AttentionAdapter$1$2;

    invoke-direct {v4, p0, p1}, Lcom/tudou/adapter/AttentionAdapter$1$2;-><init>(Lcom/tudou/adapter/AttentionAdapter$1;Landroid/view/View;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tudou/service/attention/IAttention;->cancelAttention(Landroid/content/Context;Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    goto :goto_1
.end method
