.class public Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;
.super Ljava/lang/Object;
.source "FullscreenFragmentVoteItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;
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

.field final synthetic this$0:Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->this$0:Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->content:Landroid/view/View;

    .line 110
    const v0, 0x7f0c03fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mImg:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f0c03fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mImgBg:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f0c03fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->title:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0c03ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mProgress:Landroid/view/View;

    .line 114
    const v0, 0x7f0c03fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mPercent:Landroid/widget/TextView;

    .line 115
    return-void
.end method
