.class public Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;
.super Ljava/lang/Object;
.source "ViewTabVote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageBody"
.end annotation


# instance fields
.field private groupPosition:I

.field private holder:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

.field private optionsItemListData:Ljava/util/List;
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
.method public constructor <init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;ILcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;
    .param p2, "groupPosition"    # I
    .param p3, "holder"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    .param p5, "totalCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 840
    .local p4, "optionsItemListData":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;>;"
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    iput p2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->groupPosition:I

    .line 842
    iput-object p3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->holder:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    .line 843
    iput-object p4, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->optionsItemListData:Ljava/util/List;

    .line 844
    iput p5, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->totalCount:I

    .line 845
    return-void
.end method

.method static synthetic access$300(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->getTotalCount()I

    move-result v0

    return v0
.end method

.method private getTotalCount()I
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->totalCount:I

    return v0
.end method


# virtual methods
.method public getGroupPosition()I
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->groupPosition:I

    return v0
.end method

.method public getHolder()Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->holder:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    return-object v0
.end method

.method public getOptionsItemListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->optionsItemListData:Ljava/util/List;

    return-object v0
.end method

.method public setGroupPosition(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 852
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->groupPosition:I

    .line 853
    return-void
.end method

.method public setHolder(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->holder:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    .line 861
    return-void
.end method

.method public setOptionsItemListData()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->optionsItemListData:Ljava/util/List;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->optionsItemListData:Ljava/util/List;

    .line 869
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .param p1, "totalCount"    # I

    .prologue
    .line 876
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->totalCount:I

    .line 877
    return-void
.end method
