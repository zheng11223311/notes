.class Lcom/tudou/guide/VerticalViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/guide/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/guide/VerticalViewPager;


# direct methods
.method private constructor <init>(Lcom/tudou/guide/VerticalViewPager;)V
    .locals 0

    .prologue
    .line 2745
    iput-object p1, p0, Lcom/tudou/guide/VerticalViewPager$PagerObserver;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tudou/guide/VerticalViewPager;Lcom/tudou/guide/VerticalViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tudou/guide/VerticalViewPager;
    .param p2, "x1"    # Lcom/tudou/guide/VerticalViewPager$1;

    .prologue
    .line 2745
    invoke-direct {p0, p1}, Lcom/tudou/guide/VerticalViewPager$PagerObserver;-><init>(Lcom/tudou/guide/VerticalViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager$PagerObserver;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-virtual {v0}, Lcom/tudou/guide/VerticalViewPager;->dataSetChanged()V

    .line 2749
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2752
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager$PagerObserver;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-virtual {v0}, Lcom/tudou/guide/VerticalViewPager;->dataSetChanged()V

    .line 2753
    return-void
.end method
