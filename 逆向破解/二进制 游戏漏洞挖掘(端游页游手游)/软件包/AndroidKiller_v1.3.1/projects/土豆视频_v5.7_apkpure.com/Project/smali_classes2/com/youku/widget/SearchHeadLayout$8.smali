.class Lcom/youku/widget/SearchHeadLayout$8;
.super Ljava/lang/Object;
.source "SearchHeadLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/SearchHeadLayout;->popUpFormatList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SearchHeadLayout;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/youku/widget/SearchHeadLayout;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/youku/widget/SearchHeadLayout$8;->this$0:Lcom/youku/widget/SearchHeadLayout;

    iput-object p2, p0, Lcom/youku/widget/SearchHeadLayout$8;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 293
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$8;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$400(Lcom/youku/widget/SearchHeadLayout;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$8;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$8;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$100(Lcom/youku/widget/SearchHeadLayout;)Lcom/youku/widget/SearchHeadLayout$OnEditListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/youku/widget/SearchHeadLayout$OnEditListener;->onTabClick(I)V

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$8;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$500(Lcom/youku/widget/SearchHeadLayout;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 300
    return-void

    .line 297
    :cond_0
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0
.end method
