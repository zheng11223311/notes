.class Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;
.super Ljava/lang/Object;
.source "VideoSelectnessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/fragment/VideoSelectnessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DetailSelectnessItemHolder"
.end annotation


# instance fields
.field mDesc:Landroid/widget/TextView;

.field mPic:Landroid/widget/ImageView;

.field mRoot:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/fragment/VideoSelectnessFragment;Landroid/view/View;)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;->this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;->mRoot:Landroid/view/View;

    .line 250
    const v0, 0x7f0c03c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;->mPic:Landroid/widget/ImageView;

    .line 251
    const v0, 0x7f0c03c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;->mTitle:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f0c03c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;->mDesc:Landroid/widget/TextView;

    .line 253
    return-void
.end method
