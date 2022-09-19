.class Lcom/youku/widget/viewpager/ViewPager$DataSetObserver;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/viewpager/ViewPager;


# direct methods
.method private constructor <init>(Lcom/youku/widget/viewpager/ViewPager;)V
    .locals 0

    .prologue
    .line 1882
    iput-object p1, p0, Lcom/youku/widget/viewpager/ViewPager$DataSetObserver;->this$0:Lcom/youku/widget/viewpager/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/widget/viewpager/ViewPager;Lcom/youku/widget/viewpager/ViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/widget/viewpager/ViewPager;
    .param p2, "x1"    # Lcom/youku/widget/viewpager/ViewPager$1;

    .prologue
    .line 1882
    invoke-direct {p0, p1}, Lcom/youku/widget/viewpager/ViewPager$DataSetObserver;-><init>(Lcom/youku/widget/viewpager/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/youku/widget/viewpager/ViewPager$DataSetObserver;->this$0:Lcom/youku/widget/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/youku/widget/viewpager/ViewPager;->dataSetChanged()V

    .line 1886
    return-void
.end method
