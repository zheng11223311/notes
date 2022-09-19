.class Lcom/tudou/ui/fragment/ClassifyVipFragment$4;
.super Ljava/lang/Object;
.source "ClassifyVipFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyVipFragment;->eventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyVipFragment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 118
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    const v3, 0x7f0e00b4

    const v2, 0x7f0e00a3

    .line 107
    if-nez p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->access$100(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 109
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->access$300(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->access$100(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->access$300(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->access$100(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 112
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->access$100(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method
