.class Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;
.super Ljava/lang/Object;
.source "VideoFeatureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/VideoFeatureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public featureDurationTextView:Landroid/widget/TextView;

.field public featurePlayTimesTextView:Landroid/widget/TextView;

.field public featurePosterImageView:Landroid/widget/ImageView;

.field public featureTitleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/detail/widget/VideoFeatureBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoFeatureBar;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->this$0:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
