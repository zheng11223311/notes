.class Lcom/tudou/detail/adapter/VideoCommentAdapter$1;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "VideoCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/adapter/VideoCommentAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

.field final synthetic val$tUserPic:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/VideoCommentAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$1;->this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$1;->val$tUserPic:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/tudou/detail/DetailImageLoadingListenner;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 222
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/detail/DetailImageLoadingListenner;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 223
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$1;->val$tUserPic:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 224
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$1;->val$tUserPic:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/util/Util$RoundedDrawable;

    invoke-direct {v1, p3}, Lcom/youku/util/Util$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_0
    return-void
.end method
