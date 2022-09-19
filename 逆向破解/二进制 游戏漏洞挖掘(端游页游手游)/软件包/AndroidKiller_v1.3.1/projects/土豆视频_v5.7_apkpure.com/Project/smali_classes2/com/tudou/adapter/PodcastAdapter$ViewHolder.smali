.class Lcom/tudou/adapter/PodcastAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PodcastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/PodcastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field byclick:Landroid/widget/TextView;

.field bytime:Landroid/widget/TextView;

.field duration:Landroid/widget/TextView;

.field left:Landroid/widget/TextView;

.field playlist_item_count:Landroid/widget/TextView;

.field recommendimg:Landroid/widget/ImageView;

.field recommendtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/adapter/PodcastAdapter;

.field title_2line:Landroid/widget/TextView;

.field totle_score_left:Landroid/widget/TextView;

.field totle_score_right:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/PodcastAdapter;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/PodcastAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
