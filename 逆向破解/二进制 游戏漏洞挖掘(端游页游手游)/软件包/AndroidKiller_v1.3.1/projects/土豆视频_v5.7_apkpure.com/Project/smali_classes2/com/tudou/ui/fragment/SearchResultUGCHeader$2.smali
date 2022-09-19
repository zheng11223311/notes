.class Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;
.super Ljava/lang/Object;
.source "SearchResultUGCHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchResultUGCHeader;->initHorizontalScrollView(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

.field final synthetic val$cat:Ljava/lang/String;

.field final synthetic val$selectViewtxts:Ljava/util/List;

.field final synthetic val$temp:Lcom/youku/vo/UGCFilterItems;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchResultUGCHeader;Ljava/util/List;Landroid/widget/TextView;Lcom/youku/vo/UGCFilterItems;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$selectViewtxts:Ljava/util/List;

    iput-object p3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$tv:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$temp:Lcom/youku/vo/UGCFilterItems;

    iput-object p5, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$cat:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$selectViewtxts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .local v1, "selectviewtxt":Landroid/view/View;
    move-object v2, v1

    .line 363
    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-static {v3}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$300(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e01c3

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 365
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "selectviewtxt":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 368
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$tv:Landroid/widget/TextView;

    const v3, 0x7f020a2a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 369
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-static {v3}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$300(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e01c4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 370
    const-string v2, ""

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$temp:Lcom/youku/vo/UGCFilterItems;

    iget-object v3, v3, Lcom/youku/vo/UGCFilterItems;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "0-0"

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$temp:Lcom/youku/vo/UGCFilterItems;

    iget-object v3, v3, Lcom/youku/vo/UGCFilterItems;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "0"

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$temp:Lcom/youku/vo/UGCFilterItems;

    iget-object v3, v3, Lcom/youku/vo/UGCFilterItems;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 372
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$cat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/vo/SearchFilterAndOrder;->deleteItem(Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$cat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/vo/SearchFilterAndOrder;->deleteFilterTitle(Ljava/lang/String;)V

    .line 378
    :goto_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    invoke-virtual {v3}, Lcom/youku/vo/SearchFilterAndOrder;->getFilter()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filterStr:Ljava/lang/String;

    .line 379
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$400(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$400(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filterStr:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;->onClick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 375
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$cat:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$temp:Lcom/youku/vo/UGCFilterItems;

    iget-object v4, v4, Lcom/youku/vo/UGCFilterItems;->value:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/youku/vo/SearchFilterAndOrder;->addFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$cat:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;->val$temp:Lcom/youku/vo/UGCFilterItems;

    iget-object v4, v4, Lcom/youku/vo/UGCFilterItems;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/youku/vo/SearchFilterAndOrder;->addFilterTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
