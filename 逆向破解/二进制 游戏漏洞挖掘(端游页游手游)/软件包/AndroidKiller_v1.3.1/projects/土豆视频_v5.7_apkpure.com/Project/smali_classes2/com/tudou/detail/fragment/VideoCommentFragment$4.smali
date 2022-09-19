.class Lcom/tudou/detail/fragment/VideoCommentFragment$4;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Lcom/tudou/detail/Test$OnUploadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment;->excueSendComment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

.field final synthetic val$comment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$4;->val$comment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZLjava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 431
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadCommentImage success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " imgUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-eqz p1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$4;->val$comment:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1100(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1200(Lcom/tudou/detail/fragment/VideoCommentFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
