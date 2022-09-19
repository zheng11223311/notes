.class Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;
.super Ljava/lang/Object;
.source "ClassifyFeatureFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->initViewPager(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 296
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 271
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0c0277

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v1, v3

    check-cast v1, Landroid/widget/TextView;

    .line 279
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0c02d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 280
    .local v2, "view":Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 281
    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    const v3, 0x7f090025

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 277
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 289
    .end local v1    # "tv":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$700(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Lcom/youku/widget/PageHorizontalScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/youku/widget/PageHorizontalScrollView;->scrollToCurrent(IILandroid/view/View;)V

    .line 290
    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "cid"

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$100(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/ChannelListInfo;

    iget-object v3, v3, Lcom/youku/vo/ChannelListInfo;->channel_id:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$100(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/ChannelListInfo;

    iget-object v3, v3, Lcom/youku/vo/ChannelListInfo;->channel_id:Ljava/lang/String;

    sput-object v3, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->targetCid:Ljava/lang/String;

    .line 292
    return-void
.end method
