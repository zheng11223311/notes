.class Lcom/youku/widget/NormalHorizontalTabView$1;
.super Ljava/lang/Object;
.source "NormalHorizontalTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/NormalHorizontalTabView;->setItemData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/NormalHorizontalTabView;

.field final synthetic val$leftPosition:I


# direct methods
.method constructor <init>(Lcom/youku/widget/NormalHorizontalTabView;I)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/youku/widget/NormalHorizontalTabView$1;->this$0:Lcom/youku/widget/NormalHorizontalTabView;

    iput p2, p0, Lcom/youku/widget/NormalHorizontalTabView$1;->val$leftPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/youku/widget/NormalHorizontalTabView$1;->this$0:Lcom/youku/widget/NormalHorizontalTabView;

    iget v1, p0, Lcom/youku/widget/NormalHorizontalTabView$1;->val$leftPosition:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/NormalHorizontalTabView;->sendTackHandler(I)V

    .line 183
    return-void
.end method
