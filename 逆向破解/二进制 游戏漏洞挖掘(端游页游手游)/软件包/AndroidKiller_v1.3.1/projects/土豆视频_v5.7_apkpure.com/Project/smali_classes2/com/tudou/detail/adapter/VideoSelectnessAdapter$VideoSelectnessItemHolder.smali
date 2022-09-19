.class public Lcom/tudou/detail/adapter/VideoSelectnessAdapter$VideoSelectnessItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VideoSelectnessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/VideoSelectnessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoSelectnessItemHolder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field mDesc:Landroid/widget/TextView;

.field mPic:Landroid/widget/ImageView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/detail/adapter/VideoSelectnessAdapter;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/VideoSelectnessAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoSelectnessAdapter$VideoSelectnessItemHolder;->this$0:Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

    .line 96
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 97
    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoSelectnessAdapter$VideoSelectnessItemHolder;->content:Landroid/view/View;

    .line 98
    const v0, 0x7f0c034e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoSelectnessAdapter$VideoSelectnessItemHolder;->mPic:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f0c034f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoSelectnessAdapter$VideoSelectnessItemHolder;->mTitle:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0c0350

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoSelectnessAdapter$VideoSelectnessItemHolder;->mDesc:Landroid/widget/TextView;

    .line 101
    return-void
.end method
