.class Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$1;
.super Ljava/lang/Object;
.source "YoukuPopupMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$1;->this$0:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

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
    .line 62
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$1;->this$0:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    invoke-static {v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->access$000(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;)Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$1;->this$0:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    invoke-static {v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->access$000(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;)Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$OnItemSelectedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$1;->this$0:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    invoke-static {v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->access$100(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;

    invoke-interface {v1, v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$OnItemSelectedListener;->onItemSelected(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$1;->this$0:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    invoke-static {v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->access$200(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 66
    return-void
.end method
