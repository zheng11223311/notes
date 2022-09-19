.class Lcom/tudou/ui/fragment/HomeFragment$6;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->addNetPress(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;

.field final synthetic val$aImageView:Landroid/widget/ImageView;

.field final synthetic val$pressImg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$6;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/HomeFragment$6;->val$aImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/tudou/ui/fragment/HomeFragment$6;->val$pressImg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 528
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "defBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 499
    if-nez p3, :cond_0

    .line 523
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$6;->val$aImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 501
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$6;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$000(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$6;->val$pressImg:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$6;->val$aImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/tudou/ui/fragment/HomeFragment$6$1;

    invoke-direct {v3, p0, p3}, Lcom/tudou/ui/fragment/HomeFragment$6$1;-><init>(Lcom/tudou/ui/fragment/HomeFragment$6;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 495
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 490
    return-void
.end method
