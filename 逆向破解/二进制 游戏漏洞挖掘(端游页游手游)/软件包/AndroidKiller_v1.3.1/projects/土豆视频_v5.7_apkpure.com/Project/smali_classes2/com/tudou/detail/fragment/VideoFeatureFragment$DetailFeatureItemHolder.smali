.class Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;
.super Ljava/lang/Object;
.source "VideoFeatureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/fragment/VideoFeatureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DetailFeatureItemHolder"
.end annotation


# instance fields
.field mDuration:Landroid/widget/TextView;

.field mPic:Landroid/widget/ImageView;

.field mRoot:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/fragment/VideoFeatureFragment;Landroid/view/View;)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;->this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;->mRoot:Landroid/view/View;

    .line 305
    const v0, 0x7f0c03b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;->mPic:Landroid/widget/ImageView;

    .line 306
    const v0, 0x7f0c03b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;->mDuration:Landroid/widget/TextView;

    .line 307
    const v0, 0x7f0c03b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;->mTitle:Landroid/widget/TextView;

    .line 308
    return-void
.end method
