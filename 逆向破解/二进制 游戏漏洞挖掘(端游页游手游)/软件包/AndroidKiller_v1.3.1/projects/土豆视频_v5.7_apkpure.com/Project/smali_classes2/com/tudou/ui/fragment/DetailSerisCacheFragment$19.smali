.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$19;
.super Ljava/lang/Object;
.source "DetailSerisCacheFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->popUpLangList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V
    .locals 0

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$19;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 1350
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v2, 0x7f0c07be

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1352
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->langtextselect:Ljava/lang/String;

    .line 1353
    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$19;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$2100(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DetailSeris$Languageinfo;

    .line 1356
    .local v0, "info":Lcom/youku/vo/DetailSeris$Languageinfo;
    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$19;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$2200(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/tudou/ui/fragment/CacheFields;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/DetailSeris$Languageinfo;->langCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/tudou/ui/fragment/CacheFields;->language:Ljava/lang/String;

    .line 1357
    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$19;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$3500(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1359
    return-void
.end method
