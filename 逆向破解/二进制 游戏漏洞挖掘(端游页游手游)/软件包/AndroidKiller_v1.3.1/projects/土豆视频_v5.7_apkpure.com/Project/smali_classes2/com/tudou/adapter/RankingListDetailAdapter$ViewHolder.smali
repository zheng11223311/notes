.class Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RankingListDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/RankingListDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field no:Landroid/widget/TextView;

.field notice:Landroid/widget/TextView;

.field playtimes:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/adapter/RankingListDetailAdapter;

.field title:Landroid/widget/TextView;

.field update:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/RankingListDetailAdapter;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/RankingListDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
