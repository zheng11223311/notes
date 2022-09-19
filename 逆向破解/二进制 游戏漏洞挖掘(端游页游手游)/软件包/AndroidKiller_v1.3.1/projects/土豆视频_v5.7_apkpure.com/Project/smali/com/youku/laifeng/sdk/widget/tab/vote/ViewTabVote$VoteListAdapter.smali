.class public Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ViewTabVote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoteListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVoteButton:Landroid/widget/Button;

.field private mVoteItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVoteOptionsItemData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

.field private totalCount:I


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    .line 426
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mContext:Landroid/content/Context;

    .line 427
    return-void
.end method


# virtual methods
.method public addVoteData(Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;)V
    .locals 7
    .param p1, "voteListItem"    # Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 451
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 452
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 453
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    .line 454
    .local v1, "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 456
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v3

    invoke-virtual {p0, v3, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->topVoteData(IZ)V

    .line 483
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    :goto_1
    return-void

    .line 452
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v2, "newVoteItemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;>;"
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getIsFree()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 465
    invoke-virtual {p1, v6}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setShow(Z)V

    .line 469
    :goto_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getVoteOptionsData(I)V

    .line 471
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 472
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 473
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    .line 474
    .restart local v1    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 467
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    :cond_2
    invoke-virtual {p1, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setShow(Z)V

    goto :goto_2

    .line 478
    :cond_3
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    .line 479
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/widget/ViewFlipper;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 480
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->notifyDataSetChanged()V

    .line 482
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V

    goto :goto_1
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 620
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 630
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 691
    if-nez p4, :cond_1

    .line 692
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout"

    const-string v8, "lf_vote_list_item_layout"

    invoke-static {v6, v7, v8}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 693
    new-instance v0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;

    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-direct {v0, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V

    .line 694
    .local v0, "holder":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string/jumbo v7, "vote_option_divider"

    invoke-static {v5, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$1702(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 695
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string/jumbo v7, "vote_option_thumb"

    invoke-static {v5, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$1802(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Lcom/youku/laifeng/sdk/util/NetworkImageView;)Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .line 696
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string/jumbo v7, "vote_option_index_label"

    invoke-static {v5, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$1902(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 697
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string/jumbo v7, "vote_option_name_label"

    invoke-static {v5, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2002(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 698
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string/jumbo v7, "vote_option_number_layout"

    invoke-static {v5, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2102(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 699
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string/jumbo v7, "vote_option_number_progress_line"

    invoke-static {v5, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2202(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 700
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string/jumbo v7, "vote_option_count"

    invoke-static {v5, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2302(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 701
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string/jumbo v7, "vote_option_add_count"

    invoke-static {v5, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2402(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 702
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string/jumbo v7, "vote_option_vf"

    invoke-static {v5, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewFlipper;

    invoke-static {v0, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2502(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/ViewFlipper;)Landroid/widget/ViewFlipper;

    .line 703
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string/jumbo v7, "vote_option_cost_text"

    invoke-static {v5, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2602(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 704
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 709
    :goto_0
    if-eqz p3, :cond_2

    .line 710
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$1700(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 716
    :goto_1
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    .line 718
    .local v3, "voteItem":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getPrice()I

    move-result v5

    if-lez v5, :cond_3

    .line 719
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getPrice()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u661f\u5e01"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    :goto_2
    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->isShow()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 726
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 732
    :goto_3
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;

    .line 733
    .local v2, "optionsItem":Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;
    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 734
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$1800(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Lcom/youku/laifeng/sdk/util/NetworkImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "lf_vote_placeholder"

    invoke-static {v6, v7, v8}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageResource(I)V

    .line 739
    :goto_4
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$1900(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    add-int/lit8 v6, p2, 0x41

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    new-instance v4, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$ViewWrapper;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$ViewWrapper;-><init>(Landroid/view/View;)V

    .line 743
    .local v4, "wrapper":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$ViewWrapper;
    const-string/jumbo v5, "width"

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getPercent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 745
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2300(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getIsFree()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 748
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->isVoted()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 750
    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getQuantity()I

    move-result v5

    if-lez v5, :cond_6

    .line 751
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ViewFlipper;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 752
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_text_color_voted"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 753
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_text_color_voted"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 782
    :goto_5
    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getStatus()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 783
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_vote_text_color_over"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 784
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_vote_text_color_over"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 786
    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getQuantity()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getIsFree()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 787
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ViewFlipper;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 788
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_text_color_voted"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 794
    :cond_0
    :goto_6
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ViewFlipper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteButton:Landroid/widget/Button;

    .line 795
    iget-object v5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteButton:Landroid/widget/Button;

    new-instance v6, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter$1;

    invoke-direct {v6, p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter$1;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    return-object p4

    .line 706
    .end local v0    # "holder":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    .end local v2    # "optionsItem":Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;
    .end local v3    # "voteItem":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    .end local v4    # "wrapper":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$ViewWrapper;
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;

    .restart local v0    # "holder":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    goto/16 :goto_0

    .line 712
    :cond_2
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$1700(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 721
    .restart local v3    # "voteItem":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    :cond_3
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "\u514d\u8d39"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 728
    :cond_4
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 736
    .restart local v2    # "optionsItem":Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;
    :cond_5
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$1800(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Lcom/youku/laifeng/sdk/util/NetworkImageView;

    move-result-object v5

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 755
    .restart local v4    # "wrapper":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$ViewWrapper;
    :cond_6
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ViewFlipper;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 756
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_text_color_normal"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 757
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_vote_text_color_over"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 760
    :cond_7
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ViewFlipper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 761
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_text_color_normal"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 762
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_vote_text_color_normal"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 765
    :cond_8
    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getQuantity()I

    move-result v5

    if-lez v5, :cond_9

    .line 766
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 767
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 768
    .local v1, "lp3":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getPercent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 769
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getQuantity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_text_color_voted"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 773
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_vote_text_color_normal"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 779
    .end local v1    # "lp3":Landroid/widget/LinearLayout$LayoutParams;
    :goto_7
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ViewFlipper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_5

    .line 775
    :cond_9
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 776
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_text_color_normal"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 777
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "color"

    const-string/jumbo v9, "vote_title_option_vote_text_color_normal"

    invoke-static {v7, v8, v9}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 790
    :cond_a
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->access$2500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ViewFlipper;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_6
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 615
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 625
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x1

    .line 641
    if-nez p3, :cond_1

    .line 642
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "lf_vote_list_group_layout"

    invoke-static {v3, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 643
    new-instance v0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-direct {v0, v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V

    .line 644
    .local v0, "holder":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    const-string/jumbo v4, "vote_title_index"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1302(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 645
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    const-string/jumbo v4, "vote_type_image"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1402(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 646
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    const-string/jumbo v4, "vote_title_label"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1502(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 647
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    const-string/jumbo v4, "vote_title_indicator"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$402(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 648
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    const-string/jumbo v4, "vote_progressbar"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$502(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 649
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    const-string/jumbo v4, "vote_dotted_divider"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1602(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 650
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 655
    :goto_0
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    .line 656
    .local v1, "voteItem":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1300(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    if-eqz p2, :cond_2

    .line 659
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "lf_vote_group_expanded"

    invoke-static {v3, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 660
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 666
    :goto_1
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getIsFree()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 667
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "lf_vote_type_free_background"

    invoke-static {v3, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 672
    :goto_2
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->isVoted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getIsFree()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 673
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "lf_vote_type_voted_background"

    invoke-static {v3, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 676
    :cond_0
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 677
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "lf_vote_type_over_background"

    invoke-static {v3, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 678
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v4}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "color"

    const-string/jumbo v6, "vote_title_option_vote_text_color_over"

    invoke-static {v4, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 683
    :goto_3
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    return-object p3

    .line 652
    .end local v0    # "holder":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    .end local v1    # "voteItem":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    .restart local v0    # "holder":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    goto/16 :goto_0

    .line 662
    .restart local v1    # "voteItem":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    :cond_2
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "lf_vote_group_collapsed"

    invoke-static {v3, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 663
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 669
    :cond_3
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "lf_vote_type_paid_background"

    invoke-static {v3, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 680
    :cond_4
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$1500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v4}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "color"

    const-string/jumbo v6, "vote_title_option_text_color_normal"

    invoke-static {v4, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method

.method public getVoteListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    .line 438
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 807
    const/4 v0, 0x0

    return v0
.end method

.method public offLineVoteData(I)V
    .locals 3
    .param p1, "voteId"    # I

    .prologue
    .line 541
    const/4 v1, -0x1

    .line 543
    .local v1, "position":I
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 544
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 545
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 546
    move v1, v0

    .line 547
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 544
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->notifyDataSetChanged()V

    .line 554
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V

    .line 555
    return-void
.end method

.method public setVoteListData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "voteItemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;>;"
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    .line 431
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->notifyDataSetChanged()V

    .line 432
    return-void
.end method

.method public setVoteOptionsListData(Ljava/util/List;I)V
    .locals 1
    .param p2, "totalCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "voteOptionsItemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;>;"
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 443
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    .line 444
    iput p2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->totalCount:I

    .line 445
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->notifyDataSetChanged()V

    .line 446
    return-void
.end method

.method public setVoteOver(I)V
    .locals 5
    .param p1, "voteId"    # I

    .prologue
    .line 488
    const/4 v3, -0x1

    .line 490
    .local v3, "position":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v2, "newVoteItemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 492
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    .line 493
    .local v1, "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 494
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    .end local v1    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 499
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    .line 500
    .restart local v1    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 501
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setStatus(I)V

    .line 503
    move v3, v0

    .line 498
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 507
    .end local v1    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    :cond_3
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    .line 508
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->notifyDataSetChanged()V

    .line 510
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v4}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V

    .line 511
    return-void
.end method

.method public topVoteData(IZ)V
    .locals 4
    .param p1, "voteId"    # I
    .param p2, "isReuse"    # Z

    .prologue
    .line 515
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 516
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v2, "newVoteItemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 518
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    .line 519
    .local v1, "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 520
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setStatus(I)V

    .line 521
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    .end local v1    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 526
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    .line 527
    .restart local v1    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v3

    if-eq v3, p1, :cond_2

    .line 528
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 532
    .end local v1    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    :cond_3
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    .line 535
    .end local v0    # "i":I
    .end local v2    # "newVoteItemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->notifyDataSetChanged()V

    .line 536
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V

    .line 537
    return-void
.end method

.method public updateVoteDataByIM(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;)V
    .locals 6
    .param p1, "voteMessage"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;

    .prologue
    const/4 v5, 0x1

    .line 572
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 573
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 574
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->getVi()I

    move-result v3

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v2

    if-ne v3, v2, :cond_4

    .line 575
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->getU()I

    move-result v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 576
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v2, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setShow(Z)V

    .line 577
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v2, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setVoted(Z)V

    .line 580
    :cond_0
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->getQ()I

    move-result v2

    iput v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->totalCount:I

    .line 581
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 582
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->getVoteOptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 583
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 584
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->getU()I

    move-result v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 585
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->getPi()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 586
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getQuantity()I

    move-result v3

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->getOq()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->setQuantity(I)V

    .line 590
    :cond_1
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->getVoteOptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;->getOi()I

    move-result v2

    if-ne v3, v2, :cond_2

    .line 591
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->getVoteOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;->getQ()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->setNum(I)V

    .line 592
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteOptionsItemData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;->getVoteOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;->getPc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->setPercent(Ljava/lang/String;)V

    .line 583
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 597
    .end local v1    # "j":I
    :cond_3
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->notifyDataSetChanged()V

    .line 573
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 601
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method public updateVoteListItemByRestAPI(IZ)V
    .locals 2
    .param p1, "voteId"    # I
    .param p2, "isVoted"    # Z

    .prologue
    .line 560
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 561
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v1, p2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setVoted(Z)V

    .line 564
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->mVoteItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v1, p2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setShow(Z)V

    .line 565
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->notifyDataSetChanged()V

    .line 561
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
