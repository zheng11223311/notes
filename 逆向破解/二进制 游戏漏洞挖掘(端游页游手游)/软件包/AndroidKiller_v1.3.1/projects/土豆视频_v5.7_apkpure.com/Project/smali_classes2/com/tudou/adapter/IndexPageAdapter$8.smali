.class Lcom/tudou/adapter/IndexPageAdapter$8;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initSelectness(Lcom/tudou/adapter/IndexSelectNess;Lcom/youku/vo/IndexPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;

.field final synthetic val$aIndexSelectNess:Lcom/tudou/adapter/IndexSelectNess;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/tudou/adapter/IndexSelectNess;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$8;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$8;->val$aIndexSelectNess:Lcom/tudou/adapter/IndexSelectNess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 619
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 605
    if-eqz p3, :cond_0

    .line 606
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 607
    .local v0, "sdk":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$8;->val$aIndexSelectNess:Lcom/tudou/adapter/IndexSelectNess;

    iget-object v1, v1, Lcom/tudou/adapter/IndexSelectNess;->mRootView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    .end local v0    # "sdk":I
    :cond_0
    :goto_0
    return-void

    .line 610
    .restart local v0    # "sdk":I
    :cond_1
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$8;->val$aIndexSelectNess:Lcom/tudou/adapter/IndexSelectNess;

    iget-object v1, v1, Lcom/tudou/adapter/IndexSelectNess;->mRootView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 601
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 594
    return-void
.end method
