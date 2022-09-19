.class Lcom/tudou/guide/SplashAdapter$1$1;
.super Lcom/tudou/service/attention/IAttention$CallBack;
.source "SplashAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/guide/SplashAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/guide/SplashAdapter$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tudou/guide/SplashAdapter$1;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tudou/guide/SplashAdapter$1$1;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iput-object p2, p0, Lcom/tudou/guide/SplashAdapter$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$1;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$1;->val$v:Landroid/view/View;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/guide/SplashAdapter$1$1;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v1, v1, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    iget-object v1, v1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tudou/guide/SplashSubManager;->setResultTabs(Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$1;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$1;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$1;->val$v:Landroid/view/View;

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$1;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    iput-boolean v2, v0, Lcom/youku/vo/GuideTab;->isSubed:Z

    .line 117
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/guide/SplashAdapter$1$1;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v1, v1, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    iget-object v1, v1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tudou/guide/SplashSubManager;->setResultTabs(Ljava/lang/String;Z)V

    .line 118
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$1;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v0}, Lcom/tudou/guide/SplashAdapter;->access$100(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/ui/fragment/SplashSubFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$1;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v0}, Lcom/tudou/guide/SplashAdapter;->access$100(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/ui/fragment/SplashSubFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->setBtnAllBackground()V

    .line 120
    :cond_0
    const v0, 0x7f0d01dd

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 121
    return-void
.end method
