.class Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;
.super Ljava/lang/Object;
.source "SearchChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/SearchChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BokeViewHolder"
.end annotation


# instance fields
.field aboutMyself:Landroid/widget/TextView;

.field channelV:Landroid/widget/ImageView;

.field imageView:Landroid/widget/ImageView;

.field imgSubed:Landroid/widget/ImageView;

.field subedFrame:Landroid/widget/FrameLayout;

.field subedProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/youku/adapter/SearchChannelAdapter;

.field uploadCount:Landroid/widget/TextView;

.field username:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchChannelAdapter;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
