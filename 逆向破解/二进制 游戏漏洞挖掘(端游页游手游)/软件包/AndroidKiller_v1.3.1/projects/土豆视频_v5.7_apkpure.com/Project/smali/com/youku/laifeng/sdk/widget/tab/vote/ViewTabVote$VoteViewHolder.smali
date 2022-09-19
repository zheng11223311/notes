.class public Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
.super Ljava/lang/Object;
.source "ViewTabVote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoteViewHolder"
.end annotation


# instance fields
.field private dottedLine:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

.field private voteIndex:Landroid/widget/TextView;

.field private voteIndicator:Landroid/widget/ImageView;

.field private voteProgressBar:Landroid/widget/ProgressBar;

.field private voteTitle:Landroid/widget/TextView;

.field private voteType:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->voteIndex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->voteIndex:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->voteType:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->voteType:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->voteTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->voteTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->dottedLine:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->dottedLine:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->voteIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->voteIndicator:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->voteProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$502(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->voteProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method
