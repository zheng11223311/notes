.class Lcom/tudou/detail/fragment/VideoCommentFragment$14$2;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment$14;->onCommentImgClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$14;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment$14;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14$2;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 843
    const-string v0, "t1.detail_sdetail.picturedelete"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 844
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14$2;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$14;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v0, v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$702(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 845
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14$2;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$14;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v0, v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$802(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 846
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14$2;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$14;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/DialogAddComment;->setImagePath(Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$14$2;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$14;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$14;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->showAddComment()V

    .line 848
    return-void
.end method
