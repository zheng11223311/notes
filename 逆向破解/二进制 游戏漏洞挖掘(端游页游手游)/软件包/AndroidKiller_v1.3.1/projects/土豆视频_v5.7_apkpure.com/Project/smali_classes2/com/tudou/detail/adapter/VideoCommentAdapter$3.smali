.class Lcom/tudou/detail/adapter/VideoCommentAdapter$3;
.super Ljava/lang/Object;
.source "VideoCommentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/VideoCommentAdapter;Lcom/tudou/detail/vo/CommentsInfo$Comment;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$3;->this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$3;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 278
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$3;->this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    invoke-static {v3}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->access$100(Lcom/tudou/detail/adapter/VideoCommentAdapter;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/tudou/ui/activity/NewPodcastActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 280
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "username"

    iget-object v4, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$3;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget-object v4, v4, Lcom/tudou/detail/vo/CommentsInfo$Comment;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v3, "userid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$3;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget v5, v5, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v3, "from"

    const-string v4, "detail"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v3, "userpic"

    iget-object v4, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$3;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget-object v4, v4, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userPic:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v3, "status"

    iget-object v4, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$3;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget v4, v4, Lcom/tudou/detail/vo/CommentsInfo$Comment;->status:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 286
    iget-object v3, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$3;->this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    invoke-static {v3}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->access$100(Lcom/tudou/detail/adapter/VideoCommentAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 287
    .local v0, "activity":Lcom/tudou/ui/activity/DetailActivity;
    const/16 v3, 0x3e9

    invoke-static {v0, v2, v3}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 288
    return-void
.end method
