.class public Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ActorCatVideosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/ActorCatVideosAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActorCatVideosItemHolder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field mDesc:Landroid/widget/TextView;

.field mPic:Landroid/widget/ImageView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

.field public video:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/ActorCatVideosAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;->this$0:Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    .line 102
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 103
    iput-object p2, p0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;->content:Landroid/view/View;

    .line 104
    const v0, 0x7f0c037b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;->mPic:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0c037c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;->mTitle:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0c037d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;->mDesc:Landroid/widget/TextView;

    .line 107
    return-void
.end method
