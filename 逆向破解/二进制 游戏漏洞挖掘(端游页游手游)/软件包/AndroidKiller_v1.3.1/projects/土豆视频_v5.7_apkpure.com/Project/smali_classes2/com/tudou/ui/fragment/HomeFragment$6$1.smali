.class Lcom/tudou/ui/fragment/HomeFragment$6$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment$6;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/HomeFragment$6;

.field final synthetic val$defBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment$6;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$6$1;->this$1:Lcom/tudou/ui/fragment/HomeFragment$6;

    iput-object p2, p0, Lcom/tudou/ui/fragment/HomeFragment$6$1;->val$defBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 521
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pressBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$6$1;->this$1:Lcom/tudou/ui/fragment/HomeFragment$6;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HomeFragment$6;->val$aImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$6$1;->val$defBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p3}, Lcom/youku/util/Util;->getPressDrawable(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 510
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 505
    return-void
.end method
