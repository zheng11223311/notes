.class Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$6;
.super Ljava/lang/Object;
.source "ViewTabVote.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


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
    .line 346
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$6;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$6;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->getVoteListData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setExtend(Z)V

    .line 350
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$6;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 351
    return-void
.end method
