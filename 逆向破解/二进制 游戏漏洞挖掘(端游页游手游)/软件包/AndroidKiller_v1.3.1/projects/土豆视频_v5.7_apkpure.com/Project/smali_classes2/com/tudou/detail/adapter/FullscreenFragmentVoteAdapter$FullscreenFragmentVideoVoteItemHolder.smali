.class public Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter$FullscreenFragmentVideoVoteItemHolder;
.super Ljava/lang/Object;
.source "FullscreenFragmentVoteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullscreenFragmentVideoVoteItemHolder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field final synthetic this$0:Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;

.field title:Landroid/widget/TextView;

.field public vote:Lcom/tudou/detail/vo/VoteInfo;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter$FullscreenFragmentVideoVoteItemHolder;->this$0:Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter$FullscreenFragmentVideoVoteItemHolder;->content:Landroid/view/View;

    .line 80
    const v0, 0x7f0c03d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter$FullscreenFragmentVideoVoteItemHolder;->title:Landroid/widget/TextView;

    .line 81
    return-void
.end method
