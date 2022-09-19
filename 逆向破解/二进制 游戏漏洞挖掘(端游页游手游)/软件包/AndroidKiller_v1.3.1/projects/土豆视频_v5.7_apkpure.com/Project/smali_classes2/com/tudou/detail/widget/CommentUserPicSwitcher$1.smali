.class Lcom/tudou/detail/widget/CommentUserPicSwitcher$1;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "CommentUserPicSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/CommentUserPicSwitcher;->bindItemData(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

.field final synthetic val$tTag:I

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/CommentUserPicSwitcher;Landroid/widget/ImageView;I)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher$1;->this$0:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    iput-object p2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher$1;->val$view:Landroid/widget/ImageView;

    iput p3, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher$1;->val$tTag:I

    invoke-direct {p0}, Lcom/tudou/detail/DetailImageLoadingListenner;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 123
    iget-object v1, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 124
    .local v0, "tag":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher$1;->val$tTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher$1;->val$view:Landroid/widget/ImageView;

    new-instance v2, Lcom/youku/util/Util$RoundedDrawable;

    invoke-direct {v2, p3}, Lcom/youku/util/Util$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    .end local v0    # "tag":Ljava/lang/Integer;
    :cond_0
    return-void
.end method
