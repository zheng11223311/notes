.class Lcom/youku/adapter/AccountAdapter$9;
.super Ljava/lang/Object;
.source "AccountAdapter.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/AccountAdapter;->setImg(Ljava/lang/String;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/AccountAdapter;

.field final synthetic val$img:Landroid/widget/ImageView;

.field final synthetic val$isRound:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/adapter/AccountAdapter;Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter$9;->this$0:Lcom/youku/adapter/AccountAdapter;

    iput-object p2, p0, Lcom/youku/adapter/AccountAdapter$9;->val$img:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/youku/adapter/AccountAdapter$9;->val$url:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/youku/adapter/AccountAdapter$9;->val$isRound:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter$9;->val$img:Landroid/widget/ImageView;

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 662
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter$9;->val$img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/adapter/AccountAdapter$9;->val$url:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 648
    iget-boolean v0, p0, Lcom/youku/adapter/AccountAdapter$9;->val$isRound:Z

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter$9;->val$img:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/util/Util$RoundedDrawable;

    invoke-direct {v1, p3}, Lcom/youku/util/Util$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter$9;->val$img:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 654
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter$9;->val$img:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/youku/util/Util;->addPressState(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter$9;->val$img:Landroid/widget/ImageView;

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 643
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 638
    return-void
.end method
