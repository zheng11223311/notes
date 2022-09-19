.class Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter$FixedViewInfo;
.super Ljava/lang/Object;
.source "GridViewWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field public view:Landroid/view/View;

.field public viewContainer:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter$1;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter$FixedViewInfo;-><init>()V

    return-void
.end method
