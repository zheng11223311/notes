.class Lcom/tudou/ui/fragment/SearchTudouFragment$3;
.super Ljava/lang/Object;
.source "SearchTudouFragment.java"

# interfaces
.implements Lcom/youku/widget/SearchHeadLayout$OnEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchTudouFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouFragment;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x0

    .line 532
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-boolean v0, v0, Lcom/youku/widget/SearchHeadLayout;->isShowSuggestWord:Z

    if-eqz v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$102(Lcom/tudou/ui/fragment/SearchTudouFragment;J)J

    .line 535
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$900(Lcom/tudou/ui/fragment/SearchTudouFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$800(Lcom/tudou/ui/fragment/SearchTudouFragment;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$100(Lcom/tudou/ui/fragment/SearchTudouFragment;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tudou/ui/fragment/SearchManager;->excueSuggestWords(Ljava/lang/String;Landroid/os/Handler;J)V

    .line 540
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$500(Lcom/tudou/ui/fragment/SearchTudouFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$500(Lcom/tudou/ui/fragment/SearchTudouFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 543
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$800(Lcom/tudou/ui/fragment/SearchTudouFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0xc1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 546
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    const-string v2, ""

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v4, v4, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManageFragment(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;IZ)V

    .line 549
    :cond_2
    return-void

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$800(Lcom/tudou/ui/fragment/SearchTudouFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0xbe

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 558
    return-void
.end method

.method public onBtnSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->toSearch()V

    .line 589
    return-void
.end method

.method public onClear(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 520
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v2, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    iput v2, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->lastFragment:I

    .line 523
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v2, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    iput v2, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->lastTab:I

    .line 524
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iput-object p1, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->lastKeyWord:Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 526
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    const-string v2, ""

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v4, v4, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManageFragment(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;IZ)V

    goto :goto_0
.end method

.method public onEditTouch(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 498
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    if-ne v0, v3, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v2, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    iput v2, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->lastFragment:I

    .line 501
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v2, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    iput v2, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->lastTab:I

    .line 502
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->lastKeyWord:Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    if-ne v0, v3, :cond_0

    .line 505
    :cond_2
    invoke-static {}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u8df3\u5230\u5386\u53f2\u641c\u7d22Fragment....activity_close_enter"

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v4, v4, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManageFragment(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;IZ)V

    goto :goto_0
.end method

.method public onKeyBoardSearchClick(I)V
    .locals 1
    .param p1, "actionId"    # I

    .prologue
    .line 513
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->toSearch()V

    .line 516
    :cond_0
    return-void
.end method

.method public onTabClick(I)V
    .locals 3
    .param p1, "tab"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 562
    packed-switch p1, :pswitch_data_0

    .line 584
    :goto_0
    return-void

    .line 564
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    if-eq v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$1000(Lcom/tudou/ui/fragment/SearchTudouFragment;I)V

    .line 566
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    if-ne v0, v1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchHeadLayout;->hideSoftInput(Landroid/app/Activity;)V

    .line 568
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchOnResultPage()V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->onTabSelect:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabSelect;

    const-string v1, "channel"

    invoke-interface {v0, v1}, Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabSelect;->onTabSelect(Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    if-eq v0, v2, :cond_1

    .line 575
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v0, v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$1000(Lcom/tudou/ui/fragment/SearchTudouFragment;I)V

    .line 576
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    if-ne v0, v1, :cond_1

    .line 577
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchHeadLayout;->hideSoftInput(Landroid/app/Activity;)V

    .line 578
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchOnResultPage()V

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->onTabSelect:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabSelect;

    const-string v1, "video"

    invoke-interface {v0, v1}, Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabSelect;->onTabSelect(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
