.class Lcom/tudou/detail/fragment/VideoVoteFragment$4;
.super Ljava/lang/Object;
.source "VideoVoteFragment.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoVoteFragment;->fetchVoteResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoVoteFragment;

.field final synthetic val$tAdapter:Lcom/tudou/detail/adapter/VideoVoteItemAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoVoteFragment;Lcom/tudou/detail/adapter/VideoVoteItemAdapter;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoVoteFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoVoteFragment;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoVoteFragment$4;->val$tAdapter:Lcom/tudou/detail/adapter/VideoVoteItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoteResultGetted(ZLcom/tudou/detail/vo/VoteInfo;Ljava/lang/String;I)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "info"    # Lcom/tudou/detail/vo/VoteInfo;
    .param p3, "error"    # Ljava/lang/String;
    .param p4, "errorCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoVoteFragment;

    invoke-virtual {v0, v2, v2}, Lcom/tudou/detail/fragment/VideoVoteFragment;->showLoading(ZZ)V

    .line 205
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoVoteFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoVoteFragment;->access$200(Lcom/tudou/detail/fragment/VideoVoteFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment$4;->val$tAdapter:Lcom/tudou/detail/adapter/VideoVoteItemAdapter;

    iput-boolean v2, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteMode:Z

    .line 207
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment$4;->val$tAdapter:Lcom/tudou/detail/adapter/VideoVoteItemAdapter;

    invoke-virtual {v0}, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->notifyDataSetChanged()V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoVoteFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tudou/detail/fragment/VideoVoteFragment;->showLoading(ZZ)V

    goto :goto_0
.end method
