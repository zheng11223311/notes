.class Lcom/tudou/adapter/MessageAdapter$2;
.super Ljava/lang/Object;
.source "MessageAdapter.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/MessageAdapter;->setUserImg(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/MessageAdapter;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/MessageAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/tudou/adapter/MessageAdapter$2;->this$0:Lcom/tudou/adapter/MessageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/MessageAdapter$2;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/tudou/adapter/MessageAdapter$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 322
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 311
    if-eqz p3, :cond_0

    .line 312
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter$2;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter$2;->val$view:Landroid/widget/ImageView;

    const v1, 0x7f020618

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter$2;->val$view:Landroid/widget/ImageView;

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
    .line 305
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter$2;->val$view:Landroid/widget/ImageView;

    const v1, 0x7f020618

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter$2;->val$view:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter$2;->val$view:Landroid/widget/ImageView;

    const v1, 0x7f020618

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter$2;->val$view:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 301
    return-void
.end method
