.class Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DetailPodcastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/DetailPodcastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field play:Landroid/widget/TextView;

.field playcount:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/adapter/DetailPodcastAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/DetailPodcastAdapter;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/DetailPodcastAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
