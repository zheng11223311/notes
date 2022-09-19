.class Lcom/youku/laifeng/sdk/widget/PagerExpression$1;
.super Ljava/lang/Object;
.source "PagerExpression.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/PagerExpression;->init(IILcom/youku/laifeng/sdk/control/IExpressionSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/PagerExpression;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/PagerExpression;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/PagerExpression;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/PagerExpression$1;->this$0:Lcom/youku/laifeng/sdk/widget/PagerExpression;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/PagerExpression$1;->this$0:Lcom/youku/laifeng/sdk/widget/PagerExpression;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/PagerExpression;->access$000(Lcom/youku/laifeng/sdk/widget/PagerExpression;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 73
    .local v0, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/PagerExpression$1;->this$0:Lcom/youku/laifeng/sdk/widget/PagerExpression;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/PagerExpression;->access$100(Lcom/youku/laifeng/sdk/widget/PagerExpression;)Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;

    move-result-object v3

    const-string v1, "RESOURCE_NAME"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "RESOURCE_ID"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v1, v2}, Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;->onExpressionClick(Ljava/lang/String;I)V

    .line 74
    return-void
.end method
