.class Lcom/tudou/ui/fragment/SelectedDetailFragment$2;
.super Ljava/lang/Object;
.source "SelectedDetailFragment.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SelectedDetailFragment;->setImg(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

.field final synthetic val$cover_image:Ljava/lang/String;

.field final synthetic val$posterImg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SelectedDetailFragment;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$2;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$2;->val$posterImg:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$2;->val$cover_image:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$2;->val$posterImg:Landroid/widget/ImageView;

    const v1, 0x7f02087d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$2;->val$cover_image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$2;->val$posterImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$2;->val$posterImg:Landroid/widget/ImageView;

    const v1, 0x7f02087d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 259
    return-void
.end method
