.class Lcom/youku/adapter/SearchResultAdapter$12;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->intASideFilterView_MAN(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$12;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput-object p2, p0, Lcom/youku/adapter/SearchResultAdapter$12;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$12;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/ManGridViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$12;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/ManGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/adapter/ManGridViewAdapter;->setCurrentPage(I)V

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$12;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput p1, v0, Lcom/youku/adapter/SearchResultAdapter;->currentPage:I

    .line 1096
    return-void
.end method
