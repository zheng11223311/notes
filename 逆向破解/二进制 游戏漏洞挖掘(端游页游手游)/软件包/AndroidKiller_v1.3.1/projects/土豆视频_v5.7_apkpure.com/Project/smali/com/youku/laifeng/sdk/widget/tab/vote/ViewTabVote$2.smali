.class Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$2;
.super Ljava/lang/Object;
.source "ViewTabVote.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getVoteListData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$2;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnGetVoteListCompletion(Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo;)V
    .locals 3
    .param p1, "voteListInfo"    # Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo;

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 223
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 224
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 225
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$2;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$2;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$2;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    return-void
.end method
