.class Lcom/tudou/ui/fragment/SearchResultFragment$6;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchResultFragment;->bokeSendMessage(Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$6;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 593
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 600
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$6;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$2000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$6;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$6;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultFragment;->onTabClick:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$6;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1100(Lcom/tudou/ui/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;->onBokeClick(Ljava/lang/String;)V

    goto :goto_0
.end method
