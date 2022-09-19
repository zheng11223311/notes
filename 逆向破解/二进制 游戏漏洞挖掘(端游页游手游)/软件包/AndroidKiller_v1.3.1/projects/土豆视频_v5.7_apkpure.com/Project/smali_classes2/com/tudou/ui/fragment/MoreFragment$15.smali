.class Lcom/tudou/ui/fragment/MoreFragment$15;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment;->initResolution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$15;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1743
    const-string v0, "resolution_set"

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1752
    :goto_0
    return-void

    .line 1745
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$15;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$4400(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1746
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$15;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$4700(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$15;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$4600(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1747
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$15;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$4400(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1749
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$15;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$4700(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$15;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$4800(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1750
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$15;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$4400(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
