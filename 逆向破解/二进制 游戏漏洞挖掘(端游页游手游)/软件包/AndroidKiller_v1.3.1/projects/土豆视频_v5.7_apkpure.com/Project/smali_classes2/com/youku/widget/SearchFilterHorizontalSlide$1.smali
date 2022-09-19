.class Lcom/youku/widget/SearchFilterHorizontalSlide$1;
.super Ljava/lang/Object;
.source "SearchFilterHorizontalSlide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/SearchFilterHorizontalSlide;->setStrings(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SearchFilterHorizontalSlide;


# direct methods
.method constructor <init>(Lcom/youku/widget/SearchFilterHorizontalSlide;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide$1;->this$0:Lcom/youku/widget/SearchFilterHorizontalSlide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/youku/widget/SearchFilterHorizontalSlide$1;->this$0:Lcom/youku/widget/SearchFilterHorizontalSlide;

    invoke-static {v3}, Lcom/youku/widget/SearchFilterHorizontalSlide;->access$000(Lcom/youku/widget/SearchFilterHorizontalSlide;)Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    .local v1, "pageText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 100
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/youku/widget/SearchFilterHorizontalSlide$1;->this$0:Lcom/youku/widget/SearchFilterHorizontalSlide;

    invoke-static {v3, v0}, Lcom/youku/widget/SearchFilterHorizontalSlide;->access$102(Lcom/youku/widget/SearchFilterHorizontalSlide;I)I

    .line 102
    iget-object v3, p0, Lcom/youku/widget/SearchFilterHorizontalSlide$1;->this$0:Lcom/youku/widget/SearchFilterHorizontalSlide;

    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide$1;->this$0:Lcom/youku/widget/SearchFilterHorizontalSlide;

    invoke-static {v4}, Lcom/youku/widget/SearchFilterHorizontalSlide;->access$200(Lcom/youku/widget/SearchFilterHorizontalSlide;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/youku/widget/SearchFilterHorizontalSlide;->access$300(Lcom/youku/widget/SearchFilterHorizontalSlide;ILandroid/widget/LinearLayout;)V

    .line 103
    iget-object v3, p0, Lcom/youku/widget/SearchFilterHorizontalSlide$1;->this$0:Lcom/youku/widget/SearchFilterHorizontalSlide;

    invoke-static {v3}, Lcom/youku/widget/SearchFilterHorizontalSlide;->access$400(Lcom/youku/widget/SearchFilterHorizontalSlide;)Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/youku/widget/SearchFilterHorizontalSlide$1;->this$0:Lcom/youku/widget/SearchFilterHorizontalSlide;

    invoke-static {v3}, Lcom/youku/widget/SearchFilterHorizontalSlide;->access$400(Lcom/youku/widget/SearchFilterHorizontalSlide;)Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide$1;->this$0:Lcom/youku/widget/SearchFilterHorizontalSlide;

    invoke-static {v4}, Lcom/youku/widget/SearchFilterHorizontalSlide;->access$100(Lcom/youku/widget/SearchFilterHorizontalSlide;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;->onSelect(I)V

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    return-void
.end method
