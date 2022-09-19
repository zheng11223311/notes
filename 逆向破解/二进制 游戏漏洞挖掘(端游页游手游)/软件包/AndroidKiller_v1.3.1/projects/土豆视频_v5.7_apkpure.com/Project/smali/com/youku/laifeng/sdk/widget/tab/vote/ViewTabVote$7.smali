.class Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$7;
.super Ljava/lang/Object;
.source "ViewTabVote.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->initView(Landroid/content/Context;)V
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
    .line 354
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$7;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 357
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$7;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->getVoteListData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$7;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->getVoteListData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setExtend(Z)V

    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, "isHasExtend":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$7;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->getVoteListData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$7;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->getVoteListData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->isExtend()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 363
    const/4 v1, 0x1

    .line 368
    :cond_2
    if-nez v1, :cond_0

    .line 369
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$7;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 361
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
