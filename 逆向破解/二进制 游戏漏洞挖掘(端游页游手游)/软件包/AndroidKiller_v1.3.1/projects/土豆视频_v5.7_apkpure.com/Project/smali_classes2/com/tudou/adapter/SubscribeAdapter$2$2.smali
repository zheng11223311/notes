.class Lcom/tudou/adapter/SubscribeAdapter$2$2;
.super Lcom/tudou/service/attention/IAttention$CallBack;
.source "SubscribeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SubscribeAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/adapter/SubscribeAdapter$2;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter$2;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$2;

    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$2;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$finalSubscribeItem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeItem;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 224
    const v0, 0x7f0d00a6

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 225
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$2;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/vo/SubscribeBean$Recommend;->isSubed:Z

    .line 207
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->val$v:Landroid/view/View;

    const v1, 0x7f020851

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$2;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$2;->val$finalSubscribeItem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeItem;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 210
    const v0, 0x7f0d01dd

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 211
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$2;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$2;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$208(Lcom/tudou/adapter/SubscribeAdapter;)I

    .line 212
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$2;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$2;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$000(Lcom/tudou/adapter/SubscribeAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v0, v2}, Lcom/tudou/ui/fragment/SubscribeFragment;->setSubscribeRecVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$2;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$2;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$000(Lcom/tudou/adapter/SubscribeAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->setRefreshVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$2;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$2;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$300(Lcom/tudou/adapter/SubscribeAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$2;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeAdapter$2;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v1, v1, Lcom/youku/vo/SubscribeBean$Recommend;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$2$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$2;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$2;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$400(Lcom/tudou/adapter/SubscribeAdapter;)V

    .line 218
    return-void
.end method
