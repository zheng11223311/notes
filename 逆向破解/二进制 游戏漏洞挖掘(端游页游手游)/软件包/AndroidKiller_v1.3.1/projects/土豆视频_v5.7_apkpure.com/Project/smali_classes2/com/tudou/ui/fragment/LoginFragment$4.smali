.class Lcom/tudou/ui/fragment/LoginFragment$4;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/LoginFragment;->setVerificationImage(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/LoginFragment;

.field final synthetic val$img:Landroid/widget/ImageView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/LoginFragment;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/tudou/ui/fragment/LoginFragment$4;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/LoginFragment$4;->val$img:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/tudou/ui/fragment/LoginFragment$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 503
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 491
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment$4;->val$img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    .local v0, "imgUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment$4;->val$img:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment$4;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/LoginFragment;->access$800(Lcom/tudou/ui/fragment/LoginFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 494
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment$4;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/LoginFragment;->access$1000(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment$4;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/LoginFragment;->access$1100(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment$4;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->access$802(Lcom/tudou/ui/fragment/LoginFragment;Z)Z

    .line 497
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 498
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$4;->val$img:Landroid/widget/ImageView;

    const v1, 0x7f020a20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    const-string v0, "\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 481
    return-void
.end method
