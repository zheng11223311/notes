.class Lcom/youku/widget/PodcaseTabView$2;
.super Ljava/lang/Object;
.source "PodcaseTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/PodcaseTabView;->adaptationData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/PodcaseTabView;

.field final synthetic val$leftPosition:I


# direct methods
.method constructor <init>(Lcom/youku/widget/PodcaseTabView;I)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/youku/widget/PodcaseTabView$2;->this$0:Lcom/youku/widget/PodcaseTabView;

    iput p2, p0, Lcom/youku/widget/PodcaseTabView$2;->val$leftPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView$2;->this$0:Lcom/youku/widget/PodcaseTabView;

    iget v1, p0, Lcom/youku/widget/PodcaseTabView$2;->val$leftPosition:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/PodcaseTabView;->sendTackHandler(I)V

    .line 258
    return-void
.end method
