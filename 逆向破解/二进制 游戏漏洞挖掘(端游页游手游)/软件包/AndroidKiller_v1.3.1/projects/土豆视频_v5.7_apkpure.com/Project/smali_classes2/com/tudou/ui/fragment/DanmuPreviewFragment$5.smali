.class Lcom/tudou/ui/fragment/DanmuPreviewFragment$5;
.super Ljava/lang/Object;
.source "DanmuPreviewFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/DanmuPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$5;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

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
    .line 298
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    if-nez p2, :cond_0

    .line 255
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$5;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$400(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/tudou/adapter/DanmuPreviewAdapter;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/DanmuPreviewItemLayout;

    invoke-virtual {v1, v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->getIsDanmuVistbility(Lcom/tudou/adapter/DanmuPreviewItemLayout;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$5;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$400(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/tudou/adapter/DanmuPreviewAdapter;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/DanmuPreviewItemLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Lcom/tudou/adapter/DanmuPreviewAdapter;->setDanmuVisibility(Lcom/tudou/adapter/DanmuPreviewItemLayout;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 275
    :goto_2
    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 277
    :try_start_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$5;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$400(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/tudou/adapter/DanmuPreviewAdapter;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/DanmuPreviewItemLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Lcom/tudou/adapter/DanmuPreviewAdapter;->setDanmuVisibility(Lcom/tudou/adapter/DanmuPreviewItemLayout;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 286
    :cond_2
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$5;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$400(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/tudou/adapter/DanmuPreviewAdapter;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/DanmuPreviewItemLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tudou/adapter/DanmuPreviewAdapter;->setDanmuVisibility(Lcom/tudou/adapter/DanmuPreviewItemLayout;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0

    .line 280
    :catch_1
    move-exception v0

    goto :goto_3

    .line 272
    :catch_2
    move-exception v0

    goto :goto_2

    .line 265
    :catch_3
    move-exception v0

    goto :goto_1
.end method
