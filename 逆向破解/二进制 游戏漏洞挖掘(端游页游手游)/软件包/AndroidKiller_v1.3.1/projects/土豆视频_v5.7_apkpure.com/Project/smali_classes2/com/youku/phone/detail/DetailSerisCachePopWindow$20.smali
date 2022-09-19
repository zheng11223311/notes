.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$20;
.super Ljava/lang/Object;
.source "DetailSerisCachePopWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow;->popUpCacheList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V
    .locals 0

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$20;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

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
    .line 1350
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f0c07be

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1352
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$20;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v3}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$3300(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1353
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    .line 1354
    .local v0, "download":Lcom/tudou/service/download/DownloadManager;
    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->setCurrentDownloadSDCardPath(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->cachetextselect:Ljava/lang/String;

    .line 1357
    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$20;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v3}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$800(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1358
    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$20;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v3}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$3400(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1360
    return-void
.end method
