.class Lcom/tudou/ui/fragment/SearchResultFragment$12;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchResultFragment;
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
    .line 907
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBokeClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 924
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$2000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListViewOnScroll;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/youku/widget/SearchListViewOnScroll;->setSearchType(I)V

    .line 927
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 928
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1500(Lcom/tudou/ui/fragment/SearchResultFragment;I)V

    .line 929
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1602(Lcom/tudou/ui/fragment/SearchResultFragment;I)I

    .line 930
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0, v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$502(Lcom/tudou/ui/fragment/SearchResultFragment;I)I

    .line 933
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$2300(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    .line 934
    return-void
.end method

.method public onVideoClcik(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 911
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$2000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListViewOnScroll;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/youku/widget/SearchListViewOnScroll;->setSearchType(I)V

    .line 914
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 915
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1500(Lcom/tudou/ui/fragment/SearchResultFragment;I)V

    .line 916
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->clearFilters()V

    .line 917
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0, v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1602(Lcom/tudou/ui/fragment/SearchResultFragment;I)I

    .line 918
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0, v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$502(Lcom/tudou/ui/fragment/SearchResultFragment;I)I

    .line 919
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$12;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$2300(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    .line 920
    return-void
.end method
