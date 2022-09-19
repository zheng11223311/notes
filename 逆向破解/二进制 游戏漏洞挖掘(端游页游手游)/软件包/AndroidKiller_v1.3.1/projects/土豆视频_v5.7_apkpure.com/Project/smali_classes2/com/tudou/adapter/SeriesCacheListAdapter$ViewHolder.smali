.class Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SeriesCacheListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/SeriesCacheListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field desc:Landroid/widget/TextView;

.field isplay:Landroid/widget/ImageView;

.field isread:Landroid/widget/ImageView;

.field playtimes:Landroid/widget/TextView;

.field text:Lcom/youku/widget/SquareTextView;

.field final synthetic this$0:Lcom/tudou/adapter/SeriesCacheListAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SeriesCacheListAdapter;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/tudou/adapter/SeriesCacheListAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
