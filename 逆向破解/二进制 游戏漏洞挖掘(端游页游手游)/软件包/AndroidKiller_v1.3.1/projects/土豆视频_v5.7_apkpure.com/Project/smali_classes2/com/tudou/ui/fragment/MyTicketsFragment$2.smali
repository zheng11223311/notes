.class Lcom/tudou/ui/fragment/MyTicketsFragment$2;
.super Ljava/lang/Object;
.source "MyTicketsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTicketsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTicketsFragment;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 184
    if-ne v4, p3, :cond_0

    .line 190
    :goto_0
    return v4

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$900(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 188
    .local v0, "cmb":Landroid/content/ClipboardManager;
    const-string v2, "myTickets"

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$200(Lcom/tudou/ui/fragment/MyTicketsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v3, p3, -0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MyTicketsListResult$Result;

    iget-object v1, v1, Lcom/youku/vo/MyTicketsListResult$Result;->code:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 189
    const-string v1, "\u5238\u53f7\u5df2\u7ecf\u590d\u5236\u5230\u526a\u8d34\u677f"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method
