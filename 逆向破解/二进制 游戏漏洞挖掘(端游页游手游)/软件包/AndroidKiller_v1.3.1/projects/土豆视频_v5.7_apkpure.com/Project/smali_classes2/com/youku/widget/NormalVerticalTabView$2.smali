.class Lcom/youku/widget/NormalVerticalTabView$2;
.super Ljava/lang/Object;
.source "NormalVerticalTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/NormalVerticalTabView;->setItemData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/NormalVerticalTabView;

.field final synthetic val$centrePosition:I


# direct methods
.method constructor <init>(Lcom/youku/widget/NormalVerticalTabView;I)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/youku/widget/NormalVerticalTabView$2;->this$0:Lcom/youku/widget/NormalVerticalTabView;

    iput p2, p0, Lcom/youku/widget/NormalVerticalTabView$2;->val$centrePosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/youku/widget/NormalVerticalTabView$2;->this$0:Lcom/youku/widget/NormalVerticalTabView;

    iget v1, p0, Lcom/youku/widget/NormalVerticalTabView$2;->val$centrePosition:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/NormalVerticalTabView;->sendTackHandler(I)V

    .line 231
    return-void
.end method
