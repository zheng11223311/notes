.class Lcom/youku/widget/MultipleTextView$1;
.super Ljava/lang/Object;
.source "MultipleTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/MultipleTextView;->setTextViews(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/MultipleTextView;

.field final synthetic val$dataList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/youku/widget/MultipleTextView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/youku/widget/MultipleTextView$1;->this$0:Lcom/youku/widget/MultipleTextView;

    iput-object p2, p0, Lcom/youku/widget/MultipleTextView$1;->val$dataList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/youku/widget/MultipleTextView$1;->this$0:Lcom/youku/widget/MultipleTextView;

    invoke-static {v1}, Lcom/youku/widget/MultipleTextView;->access$000(Lcom/youku/widget/MultipleTextView;)Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 147
    .local v0, "num":I
    iget-object v1, p0, Lcom/youku/widget/MultipleTextView$1;->this$0:Lcom/youku/widget/MultipleTextView;

    invoke-static {v1}, Lcom/youku/widget/MultipleTextView;->access$000(Lcom/youku/widget/MultipleTextView;)Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;

    move-result-object v2

    iget-object v1, p0, Lcom/youku/widget/MultipleTextView$1;->val$dataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchOfHistory;

    invoke-interface {v2, p1, v0, v1}, Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;->onMultipleTVItemClick(Landroid/view/View;ILcom/youku/vo/SearchOfHistory;)V

    .line 149
    .end local v0    # "num":I
    :cond_0
    return-void
.end method
