.class Lcom/tudou/ui/fragment/RankingListDetailFragment$2;
.super Ljava/lang/Object;
.source "RankingListDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/RankingListDetailFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$2;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$2;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$400(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$2;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$500(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 132
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$2;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$600(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V

    goto :goto_0
.end method
