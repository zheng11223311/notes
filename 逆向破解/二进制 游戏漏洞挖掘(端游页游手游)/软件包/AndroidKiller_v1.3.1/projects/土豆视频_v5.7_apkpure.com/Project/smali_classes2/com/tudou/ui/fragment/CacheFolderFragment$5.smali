.class Lcom/tudou/ui/fragment/CacheFolderFragment$5;
.super Ljava/lang/Object;
.source "CacheFolderFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$5;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

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
    .line 352
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 357
    if-nez p2, :cond_0

    .line 358
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$5;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$502(Lcom/tudou/ui/fragment/CacheFolderFragment;I)I

    .line 360
    :cond_0
    return-void
.end method
