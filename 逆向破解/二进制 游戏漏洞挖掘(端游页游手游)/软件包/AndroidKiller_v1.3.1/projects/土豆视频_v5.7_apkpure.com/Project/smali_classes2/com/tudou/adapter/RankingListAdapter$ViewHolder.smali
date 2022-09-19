.class Lcom/tudou/adapter/RankingListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RankingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/RankingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field background:Landroid/view/View;

.field first:Landroid/widget/TextView;

.field image:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tudou/adapter/RankingListAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/RankingListAdapter;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/RankingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
