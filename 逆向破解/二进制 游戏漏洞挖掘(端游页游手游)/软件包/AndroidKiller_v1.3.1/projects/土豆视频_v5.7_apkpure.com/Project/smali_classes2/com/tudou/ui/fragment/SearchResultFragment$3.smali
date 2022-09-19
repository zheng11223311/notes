.class Lcom/tudou/ui/fragment/SearchResultFragment$3;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 416
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x0

    .line 420
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 422
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 431
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 425
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    const-string v0, "search_tab"

    const-string v2, "video"

    invoke-static {v0, v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 427
    .local v7, "tab":Ljava/lang/String;
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/tudou/ui/fragment/SearchTudouFragment;

    const-string v4, "video"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManageFragment(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;IZZ)V

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1
.end method
