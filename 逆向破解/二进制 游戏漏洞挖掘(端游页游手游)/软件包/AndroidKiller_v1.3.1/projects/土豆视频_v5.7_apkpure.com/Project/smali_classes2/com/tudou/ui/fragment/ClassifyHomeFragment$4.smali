.class Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;
.super Ljava/lang/Object;
.source "ClassifyHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyHomeFragment;->eventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 174
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/tudou/adapter/ClassifyHomeAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/tudou/adapter/ClassifyHomeAdapter;

    move-result-object v1

    iput-boolean v5, v1, Lcom/tudou/adapter/ClassifyHomeAdapter;->isEdit:Z

    .line 180
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$900(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V

    .line 182
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$400(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/tudou/adapter/ClassifyHomeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/adapter/ClassifyHomeAdapter;->getCount()I

    move-result v0

    .line 186
    .local v0, "count":I
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$1000(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$1000(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 190
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040017

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$300(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/widget/Button;

    move-result-object v1

    const-string v2, "\u6dfb\u52a0\u5230\u684c\u9762"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/tudou/adapter/ClassifyHomeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/adapter/ClassifyHomeAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
