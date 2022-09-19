.class Lcom/tudou/ui/fragment/MoreFragment$12;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment;->setCachePathView(Ljava/util/ArrayList;)V
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
    .line 1602
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$12;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1606
    const-string v0, "path_set"

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1617
    :goto_0
    return-void

    .line 1608
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$12;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$3900(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1609
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$12;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$4100(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$12;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$4000(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1610
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$12;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$3900(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1613
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$12;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$4100(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$12;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$4200(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1614
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$12;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$3900(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
