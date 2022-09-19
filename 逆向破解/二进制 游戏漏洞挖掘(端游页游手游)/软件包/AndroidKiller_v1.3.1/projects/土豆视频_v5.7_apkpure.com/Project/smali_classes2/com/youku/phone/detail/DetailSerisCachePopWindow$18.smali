.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$18;
.super Ljava/lang/Object;
.source "DetailSerisCachePopWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow;->popUpFormatList(Ljava/util/ArrayList;)V
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
    .line 1290
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$18;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

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
    .line 1296
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0c07be

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1298
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$18;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$2800(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/lang/String;)V

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8be6\u60c5\u9875\u7f13\u5b58"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9009\u62e9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8be6\u60c5\u9875\u7f13\u5b58"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$18;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$2900(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/lang/String;)V

    .line 1303
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$18;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$3000(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1305
    return-void
.end method
