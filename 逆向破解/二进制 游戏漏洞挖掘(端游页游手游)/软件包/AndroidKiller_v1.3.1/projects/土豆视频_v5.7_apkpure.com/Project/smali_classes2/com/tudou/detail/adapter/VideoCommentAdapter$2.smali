.class Lcom/tudou/detail/adapter/VideoCommentAdapter$2;
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

.field final synthetic val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

.field final synthetic val$holder:Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

.field final synthetic val$tPic:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/VideoCommentAdapter;Landroid/widget/ImageView;Lcom/tudou/detail/vo/CommentsInfo$Comment;Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->val$tPic:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iput-object p4, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->val$holder:Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

    invoke-direct {p0}, Lcom/tudou/detail/DetailImageLoadingListenner;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v8, 0x42580000    # 54.0f

    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/detail/DetailImageLoadingListenner;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 239
    iget-object v6, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->val$tPic:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 240
    .local v5, "urlOri":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 241
    iget-object v6, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->val$tPic:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v6, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->val$tPic:Landroid/widget/ImageView;

    invoke-virtual {v6, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 244
    .local v1, "bWidth":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 246
    .local v0, "bHeight":I
    invoke-static {v8}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v4

    .line 247
    .local v4, "tViewWidth":I
    invoke-static {v8}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v3

    .line 249
    .local v3, "tViewHeight":I
    invoke-static {}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget-object v8, v8, Lcom/tudou/detail/vo/CommentsInfo$Comment;->nickName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    if-le v1, v0, :cond_2

    .line 251
    int-to-float v6, v1

    int-to-float v7, v0

    div-float/2addr v6, v7

    int-to-float v7, v3

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 255
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->val$holder:Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

    iget-object v6, v6, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->mPic:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 256
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 257
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 258
    iget-object v6, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->val$holder:Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

    iget-object v6, v6, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->mPic:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v6, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->val$holder:Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

    iget-object v6, v6, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->mPic:Landroid/widget/ImageView;

    new-instance v7, Lcom/tudou/detail/adapter/VideoCommentAdapter$2$1;

    invoke-direct {v7, p0, p3}, Lcom/tudou/detail/adapter/VideoCommentAdapter$2$1;-><init>(Lcom/tudou/detail/adapter/VideoCommentAdapter$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .end local v0    # "bHeight":I
    .end local v1    # "bWidth":I
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "tViewHeight":I
    .end local v4    # "tViewWidth":I
    :cond_1
    return-void

    .line 252
    .restart local v0    # "bHeight":I
    .restart local v1    # "bWidth":I
    .restart local v3    # "tViewHeight":I
    .restart local v4    # "tViewWidth":I
    :cond_2
    if-ge v1, v0, :cond_0

    .line 253
    int-to-float v6, v0

    int-to-float v7, v1

    div-float/2addr v6, v7

    int-to-float v7, v4

    mul-float/2addr v6, v7

    float-to-int v3, v6

    goto :goto_0
.end method
