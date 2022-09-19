.class Lcom/youku/widget/PageBottomDeleteLayout$1;
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
    .line 54
    iput-object p1, p0, Lcom/youku/widget/PageBottomDeleteLayout$1;->this$0:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    move v0, v2

    .line 60
    .local v0, "isall":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 61
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout$1;->this$0:Lcom/youku/widget/PageBottomDeleteLayout;

    const-string/jumbo v2, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {v1, v2}, Lcom/youku/widget/PageBottomDeleteLayout;->setAllBtnTex(Ljava/lang/String;)V

    .line 68
    :goto_1
    iget-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout$1;->this$0:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-static {v1}, Lcom/youku/widget/PageBottomDeleteLayout;->access$000(Lcom/youku/widget/PageBottomDeleteLayout;)Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;->onAllClick(Z)V

    .line 69
    return-void

    .line 58
    .end local v0    # "isall":Z
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 64
    .restart local v0    # "isall":Z
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout$1;->this$0:Lcom/youku/widget/PageBottomDeleteLayout;

    const-string/jumbo v2, "\u5168\u9009"

    invoke-virtual {v1, v2}, Lcom/youku/widget/PageBottomDeleteLayout;->setAllBtnTex(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout$1;->this$0:Lcom/youku/widget/PageBottomDeleteLayout;

    const-string/jumbo v2, "\u5220\u9664"

    invoke-virtual {v1, v2}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/String;)V

    goto :goto_1
.end method
