.class Lcom/tudou/ui/fragment/HomeFragment$14$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment$14;->onSuccess(Lcom/youku/network/HttpRequestManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/HomeFragment$14;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment$14;)V
    .locals 0

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$14$1;->this$1:Lcom/tudou/ui/fragment/HomeFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1713
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$14$1;->this$1:Lcom/tudou/ui/fragment/HomeFragment$14;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2700(Lcom/tudou/ui/fragment/HomeFragment;)V

    .line 1708
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$14$1;->this$1:Lcom/tudou/ui/fragment/HomeFragment$14;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HomeFragment;->showAD()V

    .line 1709
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 1703
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$14$1;->this$1:Lcom/tudou/ui/fragment/HomeFragment$14;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2600(Lcom/tudou/ui/fragment/HomeFragment;)V

    .line 1699
    return-void
.end method
