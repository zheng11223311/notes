.class Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;
.super Ljava/lang/Object;
.source "ClassifyAllChannelFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->eventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    const/16 v1, 0x8

    .line 334
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1700(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1800(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 338
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1900(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 339
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$2000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 340
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$2000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1700(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1900(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 345
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1900(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$2000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 347
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$2000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$2100(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 349
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$2200(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 352
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$2000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$2000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I

    .prologue
    .line 330
    return-void
.end method
