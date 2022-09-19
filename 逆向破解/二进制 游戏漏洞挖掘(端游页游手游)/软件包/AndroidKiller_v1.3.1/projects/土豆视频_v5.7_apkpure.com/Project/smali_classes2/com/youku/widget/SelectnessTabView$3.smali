.class Lcom/youku/widget/SelectnessTabView$3;
.super Ljava/lang/Object;
.source "SelectnessTabView.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/SelectnessTabView;->setData(Lcom/youku/vo/ChannelPageModules;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SelectnessTabView;


# direct methods
.method constructor <init>(Lcom/youku/widget/SelectnessTabView;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/youku/widget/SelectnessTabView$3;->this$0:Lcom/youku/widget/SelectnessTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 136
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    .local v0, "sdk":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/youku/widget/SelectnessTabView$3;->this$0:Lcom/youku/widget/SelectnessTabView;

    iget-object v1, v1, Lcom/youku/widget/SelectnessTabView;->mRootView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/youku/widget/SelectnessTabView$3;->this$0:Lcom/youku/widget/SelectnessTabView;

    iget-object v1, v1, Lcom/youku/widget/SelectnessTabView;->mRootView:Landroid/view/View;

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
    .line 122
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 118
    return-void
.end method
