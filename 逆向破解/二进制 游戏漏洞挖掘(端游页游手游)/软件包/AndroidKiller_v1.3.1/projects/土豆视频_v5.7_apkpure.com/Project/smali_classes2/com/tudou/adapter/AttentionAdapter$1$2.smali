.class Lcom/tudou/adapter/AttentionAdapter$1$2;
.super Lcom/tudou/service/attention/IAttention$CallBack;
.source "AttentionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/AttentionAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/adapter/AttentionAdapter$1;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/AttentionAdapter$1;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iput-object p2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 352
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iput-boolean v4, v2, Lcom/youku/vo/Podcast$Users$Subs;->isRunning:Z

    .line 353
    const v2, 0x7f0d00a7

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 354
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1;->val$viewholder:Lcom/tudou/adapter/AttentionAdapter$ViewHolder;

    iget v2, v2, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->id:I

    iget-object v3, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v3, v3, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget v3, v3, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    if-eq v2, v3, :cond_3

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v3, v3, Lcom/tudou/adapter/AttentionAdapter$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;

    .line 357
    .local v1, "vhTemp":Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    if-nez v1, :cond_1

    .line 374
    .end local v0    # "i":I
    .end local v1    # "vhTemp":Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    :cond_0
    :goto_1
    return-void

    .line 360
    .restart local v0    # "i":I
    .restart local v1    # "vhTemp":Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    :cond_1
    iget v2, v1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->id:I

    iget-object v3, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v3, v3, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget v3, v3, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    if-ne v2, v3, :cond_2

    .line 361
    iget-object v2, v1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->val$view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020851

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    iget-object v2, v1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 366
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->val$view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "i":I
    .end local v1    # "vhTemp":Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    :cond_3
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->val$view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1;->val$viewholder:Lcom/tudou/adapter/AttentionAdapter$ViewHolder;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v0, v0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iput-boolean v1, v0, Lcom/youku/vo/Podcast$Users$Subs;->issubs:Z

    .line 315
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v0, v0, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iput-boolean v1, v0, Lcom/youku/vo/Podcast$Users$Subs;->isRunning:Z

    .line 316
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v0, v0, Lcom/tudou/adapter/AttentionAdapter$1;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/AttentionAdapter;->access$100(Lcom/tudou/adapter/AttentionAdapter;)Lcom/tudou/ui/fragment/AttentionFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/AttentionFragment;->decTotalNum()V

    .line 317
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v0, v0, Lcom/tudou/adapter/AttentionAdapter$1;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/AttentionAdapter;->access$100(Lcom/tudou/adapter/AttentionAdapter;)Lcom/tudou/ui/fragment/AttentionFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/AttentionFragment;->setTitieNum()V

    .line 318
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v0, v0, Lcom/tudou/adapter/AttentionAdapter$1;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/AttentionAdapter;->access$200(Lcom/tudou/adapter/AttentionAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tudou/adapter/AttentionAdapter$1$2$1;

    invoke-direct {v1, p0}, Lcom/tudou/adapter/AttentionAdapter$1$2$1;-><init>(Lcom/tudou/adapter/AttentionAdapter$1$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method
