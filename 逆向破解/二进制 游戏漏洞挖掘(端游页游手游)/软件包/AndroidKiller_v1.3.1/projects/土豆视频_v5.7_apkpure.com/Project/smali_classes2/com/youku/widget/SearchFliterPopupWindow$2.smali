.class Lcom/youku/widget/SearchFliterPopupWindow$2;
.super Ljava/lang/Object;
.source "SearchFliterPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/SearchFliterPopupWindow;->initHorizontalScrollView(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SearchFliterPopupWindow;

.field final synthetic val$cat:Ljava/lang/String;

.field final synthetic val$selectViews:Ljava/util/List;

.field final synthetic val$selectViewtxts:Ljava/util/List;

.field final synthetic val$temp:Lcom/youku/vo/UGCFilterItems;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/youku/widget/SearchFliterPopupWindow;Ljava/util/List;Ljava/util/List;Landroid/widget/TextView;Lcom/youku/vo/UGCFilterItems;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    iput-object p2, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$selectViews:Ljava/util/List;

    iput-object p3, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$selectViewtxts:Ljava/util/List;

    iput-object p4, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$tv:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$temp:Lcom/youku/vo/UGCFilterItems;

    iput-object p6, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$cat:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$selectViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 199
    .local v1, "selectview":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 201
    .end local v1    # "selectview":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$selectViewtxts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 202
    .local v2, "selectviewtxt":Landroid/view/View;
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "selectviewtxt":Landroid/view/View;
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    invoke-static {v3}, Lcom/youku/widget/SearchFliterPopupWindow;->access$300(Lcom/youku/widget/SearchFliterPopupWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 208
    :cond_1
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$tv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    invoke-static {v4}, Lcom/youku/widget/SearchFliterPopupWindow;->access$300(Lcom/youku/widget/SearchFliterPopupWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09013e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    const-string v3, ""

    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$temp:Lcom/youku/vo/UGCFilterItems;

    iget-object v4, v4, Lcom/youku/vo/UGCFilterItems;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "0-0"

    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$temp:Lcom/youku/vo/UGCFilterItems;

    iget-object v4, v4, Lcom/youku/vo/UGCFilterItems;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "0"

    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$temp:Lcom/youku/vo/UGCFilterItems;

    iget-object v4, v4, Lcom/youku/vo/UGCFilterItems;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 212
    :cond_2
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    iget-object v3, v3, Lcom/youku/widget/SearchFliterPopupWindow;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$cat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/youku/vo/SearchFilterAndOrder;->deleteItem(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    iget-object v3, v3, Lcom/youku/widget/SearchFliterPopupWindow;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$cat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/youku/vo/SearchFilterAndOrder;->deleteFilterTitle(Ljava/lang/String;)V

    .line 218
    :goto_2
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    iget-object v4, v4, Lcom/youku/widget/SearchFliterPopupWindow;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    invoke-virtual {v4}, Lcom/youku/vo/SearchFilterAndOrder;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/widget/SearchFliterPopupWindow;->access$402(Lcom/youku/widget/SearchFliterPopupWindow;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    invoke-static {v3}, Lcom/youku/widget/SearchFliterPopupWindow;->access$500(Lcom/youku/widget/SearchFliterPopupWindow;)Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 220
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    invoke-static {v3}, Lcom/youku/widget/SearchFliterPopupWindow;->access$500(Lcom/youku/widget/SearchFliterPopupWindow;)Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    invoke-static {v4}, Lcom/youku/widget/SearchFliterPopupWindow;->access$400(Lcom/youku/widget/SearchFliterPopupWindow;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;->onClick(Ljava/lang/String;)V

    .line 221
    :cond_3
    return-void

    .line 215
    :cond_4
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    iget-object v3, v3, Lcom/youku/widget/SearchFliterPopupWindow;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$cat:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$temp:Lcom/youku/vo/UGCFilterItems;

    iget-object v5, v5, Lcom/youku/vo/UGCFilterItems;->value:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/youku/vo/SearchFilterAndOrder;->addFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    iget-object v3, v3, Lcom/youku/widget/SearchFliterPopupWindow;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$cat:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/widget/SearchFliterPopupWindow$2;->val$temp:Lcom/youku/vo/UGCFilterItems;

    iget-object v5, v5, Lcom/youku/vo/UGCFilterItems;->title:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/youku/vo/SearchFilterAndOrder;->addFilterTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
