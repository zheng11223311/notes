.class Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$5;
.super Ljava/lang/Object;
.source "ViewTabVote.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


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
    .line 332
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$5;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 335
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$5;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    .line 337
    .local v0, "voteItem":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$5;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, p2, v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getVoteOptionsData(ILandroid/view/View;Ljava/lang/String;)V

    .line 340
    :cond_0
    const/4 v1, 0x1

    .line 342
    .end local v0    # "voteItem":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
