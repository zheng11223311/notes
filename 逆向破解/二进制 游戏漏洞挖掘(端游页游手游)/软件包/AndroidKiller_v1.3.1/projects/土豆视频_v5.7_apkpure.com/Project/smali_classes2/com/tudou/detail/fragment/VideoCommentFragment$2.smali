.class Lcom/tudou/detail/fragment/VideoCommentFragment$2;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Lcom/tudou/detail/adapter/VideoCommentAdapter$OnDigClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment;->updateData(Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDigPicClick(Landroid/view/View;I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 233
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 234
    const v4, 0x7f0d02c3

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v4

    if-nez v4, :cond_2

    .line 238
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v4}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/phone/detail/DetailUtil;->goLogin(Landroid/app/Activity;)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$900(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/tudou/detail/adapter/VideoCommentAdapter;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;

    .line 243
    .local v1, "comment":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "userId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 245
    iget v4, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 246
    const-string v4, "\u4e0d\u80fd\u8d5e\u81ea\u5df1\u7684\u8bc4\u8bba"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_3
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v4}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 251
    .local v0, "activity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "vid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->commentId:I

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 254
    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0201a5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->commentId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;

    invoke-direct {v6, p0, p1, v1}, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment$2;Landroid/view/View;Lcom/tudou/detail/vo/CommentsInfo$Comment;)V

    invoke-virtual {v4, v3, v5, v6}, Lcom/tudou/detail/fragment/VideoCommentFragment;->digComment(Ljava/lang/String;Ljava/lang/String;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method
