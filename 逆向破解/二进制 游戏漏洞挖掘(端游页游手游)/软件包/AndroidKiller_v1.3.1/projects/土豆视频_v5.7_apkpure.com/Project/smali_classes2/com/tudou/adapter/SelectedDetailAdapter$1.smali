.class Lcom/tudou/adapter/SelectedDetailAdapter$1;
.super Ljava/lang/Object;
.source "SelectedDetailAdapter.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SelectedDetailAdapter;->setImg(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/SelectedDetailAdapter;

.field final synthetic val$posterImg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SelectedDetailAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tudou/adapter/SelectedDetailAdapter$1;->this$0:Lcom/tudou/adapter/SelectedDetailAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/SelectedDetailAdapter$1;->val$posterImg:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tudou/adapter/SelectedDetailAdapter$1;->val$posterImg:Landroid/widget/ImageView;

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/tudou/adapter/SelectedDetailAdapter$1;->val$posterImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/tudou/adapter/SelectedDetailAdapter$1;->val$posterImg:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tudou/adapter/SelectedDetailAdapter$1;->val$posterImg:Landroid/widget/ImageView;

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 88
    return-void
.end method
