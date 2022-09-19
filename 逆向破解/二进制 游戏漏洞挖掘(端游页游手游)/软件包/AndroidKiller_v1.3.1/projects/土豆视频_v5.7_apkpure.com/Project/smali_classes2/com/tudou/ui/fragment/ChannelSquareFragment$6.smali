.class Lcom/tudou/ui/fragment/ChannelSquareFragment$6;
.super Ljava/lang/Object;
.source "ChannelSquareFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ChannelSquareFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$6;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 323
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 304
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelSquear=====onPageChange===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {p1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$902(I)I

    .line 306
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 310
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$6;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$1000(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0277

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 311
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$6;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$6;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$6;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$1100(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    const v3, 0x7f0e00a3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$6;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$1200(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    const v2, 0x7f0e00b4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 317
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$6;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$502(Lcom/tudou/ui/fragment/ChannelSquareFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 318
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$6;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$1300(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/youku/widget/PageHorizontalScrollView;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$6;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$1000(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$6;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$1000(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/youku/widget/PageHorizontalScrollView;->scrollToCurrent(IILandroid/view/View;)V

    .line 319
    return-void
.end method
