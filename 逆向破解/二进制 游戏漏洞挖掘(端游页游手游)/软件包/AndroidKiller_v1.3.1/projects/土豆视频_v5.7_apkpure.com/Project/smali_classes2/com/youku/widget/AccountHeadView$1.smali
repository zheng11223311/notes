.class Lcom/youku/widget/AccountHeadView$1;
.super Ljava/lang/Object;
.source "AccountHeadView.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/AccountHeadView;->refreshAccountInfo(Lcom/nostra13/universalimageloader/core/ImageLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/AccountHeadView;


# direct methods
.method constructor <init>(Lcom/youku/widget/AccountHeadView;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/youku/widget/AccountHeadView$1;->this$0:Lcom/youku/widget/AccountHeadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 134
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 125
    iget-object v2, p0, Lcom/youku/widget/AccountHeadView$1;->this$0:Lcom/youku/widget/AccountHeadView;

    invoke-virtual {v2}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a05d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 126
    .local v0, "height":I
    iget-object v2, p0, Lcom/youku/widget/AccountHeadView$1;->this$0:Lcom/youku/widget/AccountHeadView;

    invoke-virtual {v2}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p3, v0, v2}, Lcom/youku/widget/AccountHeadView;->scaleDownBitmap(Landroid/graphics/Bitmap;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 127
    .local v1, "scaleDownBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/youku/widget/AccountHeadView$1;->this$0:Lcom/youku/widget/AccountHeadView;

    invoke-static {v2, v1}, Lcom/youku/widget/AccountHeadView;->access$002(Lcom/youku/widget/AccountHeadView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 128
    iget-object v2, p0, Lcom/youku/widget/AccountHeadView$1;->this$0:Lcom/youku/widget/AccountHeadView;

    invoke-static {v2}, Lcom/youku/widget/AccountHeadView;->access$100(Lcom/youku/widget/AccountHeadView;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/youku/util/Util$RoundedDrawable;

    invoke-direct {v3, v1}, Lcom/youku/util/Util$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 121
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 116
    return-void
.end method
