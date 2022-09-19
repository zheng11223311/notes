.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$17;
.super Ljava/lang/Object;
.source "DetailSerisCacheFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->popUpCacheList(Ljava/util/ArrayList;)V
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
    .line 1289
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$17;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 1295
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f0c07be

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1297
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$17;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$3200(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1298
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    .line 1299
    .local v0, "download":Lcom/tudou/service/download/DownloadManager;
    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->setCurrentDownloadSDCardPath(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->cachetextselect:Ljava/lang/String;

    .line 1302
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$17;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$17;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$3300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1305
    return-void
.end method
