.class Lcom/youku/widget/PageBottomDeleteLayout$2;
.super Ljava/lang/Object;
.source "PageBottomDeleteLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/PageBottomDeleteLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/PageBottomDeleteLayout;


# direct methods
.method constructor <init>(Lcom/youku/widget/PageBottomDeleteLayout;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/youku/widget/PageBottomDeleteLayout$2;->this$0:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout$2;->this$0:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-static {v0}, Lcom/youku/widget/PageBottomDeleteLayout;->access$000(Lcom/youku/widget/PageBottomDeleteLayout;)Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;->onDelClick()Z

    .line 76
    return-void
.end method
