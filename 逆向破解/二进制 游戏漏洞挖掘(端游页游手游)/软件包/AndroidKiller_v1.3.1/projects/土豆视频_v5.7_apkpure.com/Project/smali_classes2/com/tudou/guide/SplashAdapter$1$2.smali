.class Lcom/tudou/guide/SplashAdapter$1$2;
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
    .line 134
    iput-object p1, p0, Lcom/tudou/guide/SplashAdapter$1$2;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iput-object p2, p0, Lcom/tudou/guide/SplashAdapter$1$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$2;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$2;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$2;->val$v:Landroid/view/View;

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/guide/SplashAdapter$1$2;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v1, v1, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    iget-object v1, v1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tudou/guide/SplashSubManager;->setResultTabs(Ljava/lang/String;Z)V

    .line 154
    const v0, 0x7f0d01e0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 155
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$2;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$2;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$2;->val$v:Landroid/view/View;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 141
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/guide/SplashAdapter$1$2;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v1, v1, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    iget-object v1, v1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tudou/guide/SplashSubManager;->setResultTabs(Ljava/lang/String;Z)V

    .line 142
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$2;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v0}, Lcom/tudou/guide/SplashAdapter;->access$100(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/ui/fragment/SplashSubFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$2;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v0}, Lcom/tudou/guide/SplashAdapter;->access$100(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/ui/fragment/SplashSubFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->setBtnAllBackground()V

    .line 144
    :cond_0
    const v0, 0x7f0d01df

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 145
    return-void
.end method
