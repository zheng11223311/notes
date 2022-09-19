.class Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChannelSquearAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/ChannelSquearAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field channelDiscription:Landroid/widget/TextView;

.field channelInfo:Landroid/widget/TextView;

.field channelName:Landroid/widget/TextView;

.field delete:Landroid/widget/ImageView;

.field imageView:Landroid/widget/ImageView;

.field imgV:Landroid/widget/ImageView;

.field progressIcon:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

.field userId:I


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ChannelSquearAdapter;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
