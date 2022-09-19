.class Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/SearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderFilter"
.end annotation


# instance fields
.field private f:Lcom/youku/widget/SearchFilterHorizontalSlide;

.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;)Lcom/youku/widget/SearchFilterHorizontalSlide;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;->f:Lcom/youku/widget/SearchFilterHorizontalSlide;

    return-object v0
.end method

.method static synthetic access$202(Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;Lcom/youku/widget/SearchFilterHorizontalSlide;)Lcom/youku/widget/SearchFilterHorizontalSlide;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;
    .param p1, "x1"    # Lcom/youku/widget/SearchFilterHorizontalSlide;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;->f:Lcom/youku/widget/SearchFilterHorizontalSlide;

    return-object p1
.end method
