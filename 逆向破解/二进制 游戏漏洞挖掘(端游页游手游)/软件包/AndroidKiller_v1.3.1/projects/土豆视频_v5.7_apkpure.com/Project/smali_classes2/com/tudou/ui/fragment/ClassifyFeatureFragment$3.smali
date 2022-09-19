.class Lcom/tudou/ui/fragment/ClassifyFeatureFragment$3;
.super Ljava/lang/Object;
.source "ClassifyFeatureFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->initScrollView(I)V
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
    .line 195
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 198
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$700(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Lcom/youku/widget/PageHorizontalScrollView;

    move-result-object v0

    sget-object v1, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    sget-object v4, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/widget/PageHorizontalScrollView;->scrollToCurrent(IILandroid/view/View;)V

    .line 199
    return-void
.end method
