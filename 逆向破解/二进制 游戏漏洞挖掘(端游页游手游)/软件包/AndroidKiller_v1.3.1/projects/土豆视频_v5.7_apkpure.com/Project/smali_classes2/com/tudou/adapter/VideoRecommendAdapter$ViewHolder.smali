.class Lcom/tudou/adapter/VideoRecommendAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VideoRecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/VideoRecommendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field img_video_recommend:Landroid/widget/ImageView;

.field tv_video_time:Landroid/widget/TextView;

.field tv_video_title:Landroid/widget/TextView;

.field tv_video_totals:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
