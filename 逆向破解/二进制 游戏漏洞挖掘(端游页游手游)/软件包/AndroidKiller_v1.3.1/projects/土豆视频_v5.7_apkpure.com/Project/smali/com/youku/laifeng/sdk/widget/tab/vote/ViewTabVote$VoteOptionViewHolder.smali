.class public Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
.super Ljava/lang/Object;
.source "ViewTabVote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoteOptionViewHolder"
.end annotation


# instance fields
.field private optionAddCount:Landroid/widget/TextView;

.field private optionCost:Landroid/widget/TextView;

.field private optionCount:Landroid/widget/TextView;

.field private optionDividerLine:Landroid/widget/ImageView;

.field private optionIndex:Landroid/widget/TextView;

.field private optionName:Landroid/widget/TextView;

.field private optionNumberLayout:Landroid/widget/LinearLayout;

.field private optionProgressNumber:Landroid/widget/ImageView;

.field private optionThumb:Lcom/youku/laifeng/sdk/util/NetworkImageView;

.field private optionVote:Landroid/widget/ViewFlipper;

.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionDividerLine:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionDividerLine:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Lcom/youku/laifeng/sdk/util/NetworkImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionThumb:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Lcom/youku/laifeng/sdk/util/NetworkImageView;)Lcom/youku/laifeng/sdk/util/NetworkImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    .param p1, "x1"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionThumb:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionIndex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionIndex:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionNumberLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionNumberLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionProgressNumber:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionProgressNumber:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionCount:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionAddCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionAddCount:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/ViewFlipper;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionVote:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/ViewFlipper;)Landroid/widget/ViewFlipper;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    .param p1, "x1"    # Landroid/widget/ViewFlipper;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionVote:Landroid/widget/ViewFlipper;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionCost:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;->optionCost:Landroid/widget/TextView;

    return-object p1
.end method
