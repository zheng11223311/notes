.class Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;
.super Ljava/lang/Object;
.source "ViewTabVote.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getVoteOptionsData(ILandroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

.field final synthetic val$groupPosition:I

.field final synthetic val$holder:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;ILcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    iput p2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;->val$groupPosition:I

    iput-object p3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;->val$holder:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnGetVoteOptionsCompletion(Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;)V
    .locals 7
    .param p1, "response"    # Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;

    .prologue
    .line 247
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 248
    .local v6, "msg":Landroid/os/Message;
    const/16 v0, 0x20

    iput v0, v6, Landroid/os/Message;->what:I

    .line 249
    new-instance v0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    iget v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;->val$groupPosition:I

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;->val$holder:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;->getList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;->getTotalNum()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;ILcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Ljava/util/List;I)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;->val$holder:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;->val$holder:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v0, v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$702(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;Z)Z

    .line 258
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    return-void
.end method
