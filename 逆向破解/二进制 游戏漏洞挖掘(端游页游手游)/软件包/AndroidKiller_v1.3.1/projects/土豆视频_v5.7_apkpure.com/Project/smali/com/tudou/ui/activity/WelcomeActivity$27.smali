.class final Lcom/tudou/ui/activity/WelcomeActivity$27;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallBack:Lcom/baseproject/image/ImageCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baseproject/image/ImageCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2040
    iput-object p1, p0, Lcom/tudou/ui/activity/WelcomeActivity$27;->val$aCallBack:Lcom/baseproject/image/ImageCallback;

    iput-object p2, p0, Lcom/tudou/ui/activity/WelcomeActivity$27;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 2067
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2058
    if-eqz p3, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$27;->val$aCallBack:Lcom/baseproject/image/ImageCallback;

    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$27;->val$url:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/baseproject/image/ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 2061
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 2053
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 2046
    return-void
.end method
