.class Lcom/tudou/ui/fragment/SearchResultFragment$4;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 477
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$4;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 498
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 482
    packed-switch p2, :pswitch_data_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 484
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$4;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$4;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$4;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchHeadLayout;->hideSoftInput(Landroid/app/Activity;)V

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$4;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$4;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$4;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->dissFilter()V

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
