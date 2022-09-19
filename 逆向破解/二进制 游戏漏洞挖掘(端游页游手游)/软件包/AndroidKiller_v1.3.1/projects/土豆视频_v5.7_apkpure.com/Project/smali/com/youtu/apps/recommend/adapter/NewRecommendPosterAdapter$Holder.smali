.class Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;
.super Ljava/lang/Object;
.source "NewRecommendPosterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field poster:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;


# direct methods
.method private constructor <init>(Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;->this$0:Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;
    .param p2, "x1"    # Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$1;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;-><init>(Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;)V

    return-void
.end method
