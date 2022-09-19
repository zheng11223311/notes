.class Lcom/tudou/ui/fragment/SubscribeFragment$5;
.super Ljava/lang/Object;
.source "SubscribeFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SubscribeFragment;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SubscribeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 316
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 320
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    const v3, 0x7f0e01ea

    const v2, 0x7f0e00b4

    .line 291
    if-nez p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/tudou/ui/activity/HomePageActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 294
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 296
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$400(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/tudou/ui/activity/HomePageActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 298
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$400(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 300
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$502(Lcom/tudou/ui/fragment/SubscribeFragment;Z)Z

    .line 312
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/tudou/ui/activity/HomePageActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 304
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 306
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$400(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/tudou/ui/activity/HomePageActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 308
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$400(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 310
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$502(Lcom/tudou/ui/fragment/SubscribeFragment;Z)Z

    goto :goto_0
.end method
