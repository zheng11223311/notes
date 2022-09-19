.class Lcom/tudou/adapter/HotHistoryAdapter$6;
.super Ljava/lang/Object;
.source "HotHistoryAdapter.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/HotHistoryAdapter;->setPodImg(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/HotHistoryAdapter;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/HotHistoryAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter$6;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/HotHistoryAdapter$6;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/tudou/adapter/HotHistoryAdapter$6;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 375
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 364
    if-eqz p3, :cond_0

    .line 365
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter$6;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tudou/adapter/HotHistoryAdapter$6;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 371
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter$6;->val$imageView:Landroid/widget/ImageView;

    const v1, 0x7f020616

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter$6;->val$imageView:Landroid/widget/ImageView;

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
    .line 356
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter$6;->val$imageView:Landroid/widget/ImageView;

    const v1, 0x7f020616

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter$6;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 359
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 351
    return-void
.end method
