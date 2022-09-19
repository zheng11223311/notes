.class Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectedDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/SelectedDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field descTv:Landroid/widget/TextView;

.field durationTv:Landroid/widget/TextView;

.field posterImg:Landroid/widget/ImageView;

.field scoreTv1:Landroid/widget/TextView;

.field scoreTv2:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/adapter/SelectedDetailAdapter;

.field titleTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/tudou/adapter/SelectedDetailAdapter;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/SelectedDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tudou/adapter/SelectedDetailAdapter;Lcom/tudou/adapter/SelectedDetailAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tudou/adapter/SelectedDetailAdapter;
    .param p2, "x1"    # Lcom/tudou/adapter/SelectedDetailAdapter$1;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/SelectedDetailAdapter;)V

    return-void
.end method
