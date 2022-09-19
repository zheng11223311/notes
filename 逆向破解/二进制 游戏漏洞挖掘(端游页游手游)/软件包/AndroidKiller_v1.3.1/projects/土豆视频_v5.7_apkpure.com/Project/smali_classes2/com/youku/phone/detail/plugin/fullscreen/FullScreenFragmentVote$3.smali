.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$3;
.super Ljava/lang/Object;
.source "FullScreenFragmentVote.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->fetchVoteResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

.field final synthetic val$tAdapter:Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$3;->val$tAdapter:Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;

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
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    invoke-virtual {v0, v2, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->showLoading(ZZ)V

    .line 166
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$3;->val$tAdapter:Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;

    iput-boolean v2, v0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;->mVoteMode:Z

    .line 167
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$3;->val$tAdapter:Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;

    invoke-virtual {v0}, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;->notifyDataSetChanged()V

    .line 169
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->showLoading(ZZ)V

    goto :goto_0
.end method
