.class public Lcom/youku/adapter/AccountAdapter$CacheItemHolder;
.super Ljava/lang/Object;
.source "AccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/AccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheItemHolder"
.end annotation


# instance fields
.field albumCountTv1:Landroid/widget/TextView;

.field albumCountTv2:Landroid/widget/TextView;

.field albumImg1:Landroid/widget/ImageView;

.field albumImg2:Landroid/widget/ImageView;

.field allCacheBtn:Landroid/widget/Button;

.field downloadingArrowImg:Landroid/widget/ImageView;

.field downloadingLayout:Landroid/view/View;

.field layout1:Landroid/view/View;

.field layout2:Landroid/view/View;

.field pointImg1:Landroid/widget/ImageView;

.field pointImg2:Landroid/widget/ImageView;

.field posterImg1:Lcom/youku/widget/YoukuImageView;

.field posterImg2:Lcom/youku/widget/YoukuImageView;

.field final synthetic this$0:Lcom/youku/adapter/AccountAdapter;

.field titleTv1:Landroid/widget/TextView;

.field titleTv2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/youku/adapter/AccountAdapter;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->this$0:Lcom/youku/adapter/AccountAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
