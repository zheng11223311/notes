.class Lcom/tudou/ui/fragment/ClassifyFeatureFragment$2;
.super Ljava/lang/Object;
.source "ClassifyFeatureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;I)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    iput p2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 190
    sget-object v0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$2;->val$index:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 191
    return-void
.end method
