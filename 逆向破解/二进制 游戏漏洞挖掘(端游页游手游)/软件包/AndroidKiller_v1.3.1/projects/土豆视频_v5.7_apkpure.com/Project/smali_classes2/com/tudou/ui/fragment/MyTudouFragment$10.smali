.class Lcom/tudou/ui/fragment/MyTudouFragment$10;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;->setUserInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

.field final synthetic val$userBean:Lcom/youku/vo/UserBean;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;Lcom/youku/vo/UserBean;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$10;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$10;->val$userBean:Lcom/youku/vo/UserBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 789
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 774
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$10;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$10;->val$userBean:Lcom/youku/vo/UserBean;

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 783
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$10;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020616

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 781
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$10;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$10;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020616

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 767
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$10;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 769
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 761
    return-void
.end method
