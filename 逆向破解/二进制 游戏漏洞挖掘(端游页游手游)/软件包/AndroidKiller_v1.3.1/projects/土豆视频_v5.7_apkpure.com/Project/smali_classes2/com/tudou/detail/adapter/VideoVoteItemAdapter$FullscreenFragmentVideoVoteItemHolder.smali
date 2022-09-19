.class public Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;
.super Ljava/lang/Object;
.source "VideoVoteItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/VideoVoteItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullscreenFragmentVideoVoteItemHolder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field public item:Lcom/tudou/detail/vo/VoteInfo$VoteItem;

.field mImg:Landroid/widget/ImageView;

.field mImgBg:Landroid/widget/ImageView;

.field mPercent:Landroid/widget/TextView;

.field mProgress:Landroid/view/View;

.field final synthetic this$0:Lcom/tudou/detail/adapter/VideoVoteItemAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/VideoVoteItemAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->this$0:Lcom/tudou/detail/adapter/VideoVoteItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->content:Landroid/view/View;

    .line 109
    const v0, 0x7f0c03c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mImg:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f0c03c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mImgBg:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f0c03cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->title:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0c03cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mProgress:Landroid/view/View;

    .line 113
    const v0, 0x7f0c03ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mPercent:Landroid/widget/TextView;

    .line 114
    return-void
.end method
