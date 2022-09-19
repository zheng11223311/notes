.class Lcom/tudou/ui/fragment/HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$1;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisiable"    # I
    .param p3, "visiableCount"    # I
    .param p4, "totalCount"    # I

    .prologue
    .line 202
    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$1;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/HomeFragment;->setSecondVisible(Z)V

    .line 204
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$1;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HomeFragment;->stopAutoSlide()V

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$1;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/HomeFragment;->setSecondVisible(Z)V

    .line 209
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$1;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HomeFragment;->startAutoSlide()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I

    .prologue
    .line 198
    return-void
.end method
