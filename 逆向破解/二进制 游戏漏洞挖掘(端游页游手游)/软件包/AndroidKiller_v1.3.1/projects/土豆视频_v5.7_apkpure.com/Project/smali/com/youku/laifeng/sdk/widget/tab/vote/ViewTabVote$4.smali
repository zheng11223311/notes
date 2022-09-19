.class Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$4;
.super Ljava/lang/Object;
.source "ViewTabVote.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getVoteOptionsData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

.field final synthetic val$voteId:I


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$4;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    iput p2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$4;->val$voteId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnGetVoteOptionsCompletion(Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;)V
    .locals 2
    .param p1, "response"    # Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;

    .prologue
    .line 269
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 270
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x120

    iput v1, v0, Landroid/os/Message;->what:I

    .line 271
    iget v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$4;->val$voteId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 272
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$4;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$4;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 279
    return-void
.end method
