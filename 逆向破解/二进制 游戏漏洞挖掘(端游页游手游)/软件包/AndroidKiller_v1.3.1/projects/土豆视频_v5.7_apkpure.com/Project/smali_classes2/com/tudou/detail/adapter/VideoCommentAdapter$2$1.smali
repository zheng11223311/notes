.class Lcom/tudou/detail/adapter/VideoCommentAdapter$2$1;
.super Ljava/lang/Object;
.source "VideoCommentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/adapter/VideoCommentAdapter$2;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/VideoCommentAdapter$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2$1;->this$1:Lcom/tudou/detail/adapter/VideoCommentAdapter$2;

    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2$1;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2$1;->this$1:Lcom/tudou/detail/adapter/VideoCommentAdapter$2;

    iget-object v0, v0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    iget-object v0, v0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mImageClickLis:Lcom/tudou/detail/adapter/VideoCommentAdapter$OnImageClickListener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2$1;->this$1:Lcom/tudou/detail/adapter/VideoCommentAdapter$2;

    iget-object v0, v0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    iget-object v0, v0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mImageClickLis:Lcom/tudou/detail/adapter/VideoCommentAdapter$OnImageClickListener;

    iget-object v1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2$1;->this$1:Lcom/tudou/detail/adapter/VideoCommentAdapter$2;

    iget-object v1, v1, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget-object v1, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->picUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$2$1;->val$b:Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1, v2}, Lcom/tudou/detail/adapter/VideoCommentAdapter$OnImageClickListener;->onImageClickL(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 266
    :cond_0
    return-void
.end method
